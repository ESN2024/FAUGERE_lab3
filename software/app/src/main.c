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

alt_32 readAccData(alt_u8 dataAddr)   {
    // send addr register we want to read
    I2C_start(OPENCORES_I2C_0_BASE, DEVICE_I2C_ADDR, 0);
    I2C_write(OPENCORES_I2C_0_BASE, dataAddr, 0);

    // read corresponding data
    I2C_start(OPENCORES_I2C_0_BASE, DEVICE_I2C_ADDR, 1);
    alt_u32 LSB_value = I2C_read(OPENCORES_I2C_0_BASE, 0);
    alt_u32 MSB_value = I2C_read(OPENCORES_I2C_0_BASE, 1);
    
    // arrange data representation
    alt_16 s16_value = (MSB_value<<8) | (LSB_value);
    alt_16 value_mg = s16_value * 4;
    return value_mg;
}

void calibrate() {
    // start of calibration (on OFSX_REG addr, then following addr are OFSY_REG and OFSZ_REG)
    I2C_start(OPENCORES_I2C_0_BASE, DEVICE_I2C_ADDR, 0);
    I2C_write(OPENCORES_I2C_0_BASE, OFSX_REG, 0);
    // x calibration
    I2C_write(OPENCORES_I2C_0_BASE, -2, 0);
    // y calibration
    I2C_write(OPENCORES_I2C_0_BASE, +4, 0);
    // z calibration
    I2C_write(OPENCORES_I2C_0_BASE, -55, 1); // stop bit with set to 1
}

static void pushButton_IRQHandler(void* context, alt_u32 id)    {
    // set data type (acc axe x, y, z then x, ...) to show
    if(currentDataAddr == DATAZ0)   currentDataAddr = DATAX0;
    else currentDataAddr += 0x2;

    // clear interrupt register
    IOWR_ALTERA_AVALON_PIO_EDGE_CAP(PIOPUSHBUTTON_BASE, 0b1);
}

static void timer_IRQHandler (void * context, alt_u32 id)	{
    alt_16 value_mg = readAccData(currentDataAddr);
    alt_u16 value_mg_abs = (value_mg > 0) ? value_mg : -value_mg;

    // sign display
    IOWR_ALTERA_AVALON_PIO_DATA(DIGIT4_BASE, (value_mg < 0) ? MINUS_7SEG : NONE_7SEG);
    IOWR_ALTERA_AVALON_PIO_DATA(DIGIT5_BASE, NONE_7SEG);

    // 4 digits (display absolute value in mg)
    alt_u8 digit_decimal = value_mg_abs/1000;
    value_mg_abs -= digit_decimal*1000;
    IOWR_ALTERA_AVALON_PIO_DATA(DIGIT3_BASE, digit_decimal);
    digit_decimal = value_mg_abs/100;
    value_mg_abs -= digit_decimal*100;
    IOWR_ALTERA_AVALON_PIO_DATA(DIGIT2_BASE, digit_decimal);
    digit_decimal = value_mg_abs/10;
    value_mg_abs -= digit_decimal*10;
    IOWR_ALTERA_AVALON_PIO_DATA(DIGIT1_BASE, digit_decimal);
    digit_decimal = value_mg_abs;
    value_mg_abs -= digit_decimal;
    IOWR_ALTERA_AVALON_PIO_DATA(DIGIT0_BASE, digit_decimal);

	// clear timeout status register
	IOWR_ALTERA_AVALON_TIMER_STATUS(TIMER_BASE, ALTERA_AVALON_TIMER_STATUS_TO_MSK);
}

int main()	{
	alt_irq_init(NULL);

    /* --- push button interrupt init --- */
    IOWR_ALTERA_AVALON_PIO_IRQ_MASK(PIOPUSHBUTTON_BASE, 0b1);

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
    I2C_write(OPENCORES_I2C_0_BASE, 0b00001000, 1); // FULL_RES data format - right-justified mode with sign extended - +/- 2g range

    calibrate();
    /* --- */

	while(1);

	return 0;
}