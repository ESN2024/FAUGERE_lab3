#include "../bsp/system.h"
#include "../bsp/drivers/inc/altera_avalon_pio_regs.h"
#include "../bsp/drivers/inc/altera_avalon_timer.h"
#include "../bsp/drivers/inc/altera_avalon_timer_regs.h"
#include "../bsp/drivers/inc/opencores_i2c.h"
#include "../bsp/HAL/inc/sys/alt_stdio.h"
#include "../bsp/HAL/inc/sys/alt_irq.h"	
#include "../bsp/HAL/inc/sys/alt_sys_init.h"
#include <io.h>
#include <alt_types.h>

#include "../inc/main.h"

alt_u8 currentDataAddr = DATAX0;

static void pushButton_IRQHandler(void* context, alt_u32 id)    {
    // changement données à récupérer (accélération axe x, y, z puis x, ...)
    if(currentDataAddr == DATAZ0)   currentDataAddr = DATAX0;
    else currentDataAddr += 0x2;

    alt_printf("test");

    // clear interrupt register
    IOWR_ALTERA_AVALON_PIO_EDGE_CAP(PIOPUSHBUTTON_BASE, 1);
}

static void timer_IRQHandler (void * context, alt_u32 id)	{
    // send addr register we want to read
    I2C_start(OPENCORES_I2C_0_BASE, DEVICE_I2C_ADDR, 0);
    I2C_write(OPENCORES_I2C_0_BASE, currentDataAddr, 0);

    // read corresponding data
    I2C_start(OPENCORES_I2C_0_BASE, DEVICE_I2C_ADDR, 1);
    alt_u32 LSB_value = I2C_read(OPENCORES_I2C_0_BASE, 0);
    alt_u32 MSB_value = I2C_read(OPENCORES_I2C_0_BASE, 1);
    alt_u32 value = (MSB_value<<8) | (LSB_value);
    alt_u8 sign = (value>>9)&1;
    
    alt_32 s32_value = 0xFFFFC000 | value; // valeur signé sur 32 bits et non plus sur 10 bits
    alt_32 value_mg = s32_value * 2/((1<<9) - 1);
    alt_u32 value_mg_abs = (unsigned)value_mg;

    alt_u8 digit3decimal = value_mg_abs/1000;
    IOWR_ALTERA_AVALON_PIO_DATA(DIGIT3_BASE, digit3decimal);
    alt_u8 digit2decimal = (value_mg_abs - digit3decimal*1000)/100;
    IOWR_ALTERA_AVALON_PIO_DATA(DIGIT2_BASE, digit2decimal);
    alt_u8 digit1decimal = (value_mg_abs - digit2decimal*1000)/100;
    IOWR_ALTERA_AVALON_PIO_DATA(DIGIT1_BASE, value_mg/1000);
    IOWR_ALTERA_AVALON_PIO_DATA(DIGIT0_BASE, value_mg/1000);


	// clear timeout status register
	IOWR_ALTERA_AVALON_TIMER_STATUS(TIMER_BASE, ALTERA_AVALON_TIMER_STATUS_TO_MSK);
}

int main()	{
	alt_irq_init(NULL);

    /* --- push button interrupt init --- */
    IOWR_ALTERA_AVALON_PIO_IRQ_MASK(PIOPUSHBUTTON_BASE, 0x1);

    alt_irq_register(PIOPUSHBUTTON_IRQ, NULL, pushButton_IRQHandler);
    alt_irq_enable(PIOPUSHBUTTON_IRQ);
    /* --- */

	/* --- timer interrupt init --- */
    alt_irq_register(TIMER_IRQ, NULL, timer_IRQHandler);
    alt_irq_enable(TIMER_IRQ);
	/* --- */

	/* --- timer init --- */
    // set period
    alt_u32 timeout = 50000000; // 1 sec
	IOWR_ALTERA_AVALON_TIMER_PERIODL(TIMER_BASE, (timeout)&0xFFFF);
	IOWR_ALTERA_AVALON_TIMER_PERIODH(TIMER_BASE, ((timeout)&(0xFFFF<<16))>>16);

    IOWR_ALTERA_AVALON_TIMER_CONTROL(TIMER_BASE, ALTERA_AVALON_TIMER_CONTROL_ITO_MSK|ALTERA_AVALON_TIMER_CONTROL_CONT_MSK|ALTERA_AVALON_TIMER_CONTROL_START_MSK);
	/* --- */

    /* --- I2C driver init --- */
    I2C_init(OPENCORES_I2C_0_BASE, 50000000, 400000);
    /* --- */
    
    /* --- accelerometer configuration --- */
    // set data format
    I2C_start(OPENCORES_I2C_0_BASE, DEVICE_I2C_ADDR, 0);
    I2C_write(OPENCORES_I2C_0_BASE, DATA_FORMAT_REG, 0);
    I2C_write(OPENCORES_I2C_0_BASE, 0b00000000, 1); // deassert FULL_RES data format (-> 10 bits two-complement signed) - right-justified mode - +/- 2g range

    // start of calibration (on OFSX_REG addr, then following addr are OFSY_REG and OFSZ_REG)
    I2C_start(OPENCORES_I2C_0_BASE, DEVICE_I2C_ADDR, 0);
    I2C_write(OPENCORES_I2C_0_BASE, OFSX_REG, 0);
    // x calibration
    I2C_write(OPENCORES_I2C_0_BASE, 0x00, 0);
    // y calibration
    I2C_write(OPENCORES_I2C_0_BASE, 0x00, 0);
    // z calibration
    I2C_write(OPENCORES_I2C_0_BASE, 0x00, 1); // stop bit with set to 1
    /* --- */

	while(1);

	return 0;
}