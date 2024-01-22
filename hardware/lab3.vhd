library ieee;
use ieee.std_logic_1164.all;

ENTITY lab3 IS
PORT(
	clk : IN std_logic;
	rst : IN std_logic;
	
	pushButton : IN std_logic;
	
	digit0 : OUT std_logic_vector(7 downto 0);
	digit1 : OUT std_logic_vector(7 downto 0);
	digit2 : OUT std_logic_vector(7 downto 0);
	digit3 : OUT std_logic_vector(7 downto 0);
	digit4 : OUT std_logic_vector(7 downto 0);
	digit5 : OUT std_logic_vector(7 downto 0);
	
	GSENSOR_SDI : INOUT std_logic;
	GSENSOR_SDO : INOUT std_logic;
	GSENSOR_CS_n : OUT std_logic;
	GSENSOR_SCLK : INOUT std_logic
);
END lab3;

ARCHITECTURE archi OF lab3 IS

-- valeur des digits (chiffre)
type digits_type is array(0 to 5) of std_logic_vector(3 downto 0);
signal digit_value : digits_type;

component lab3_qsys is
  port (
		clk_clk                                  : in  std_logic                    := 'X'; -- clk
		piopushbutton_external_connection_export : in    std_logic                  := 'X'; -- export
		reset_reset_n                            : in  std_logic                    := 'X'; -- reset_n
		
		digit0_external_connection_export        : out std_logic_vector(3 downto 0);        -- export
		digit1_external_connection_export        : out std_logic_vector(3 downto 0);        -- export
		digit2_external_connection_export        : out std_logic_vector(3 downto 0);        -- export
		digit3_external_connection_export        : out std_logic_vector(3 downto 0);        -- export
		digit4_external_connection_export        : out std_logic_vector(3 downto 0);        -- export
		digit5_external_connection_export        : out std_logic_vector(3 downto 0);         -- export
		
		opencores_i2c_0_export_0_scl_pad_io        : inout std_logic                    := 'X'; -- scl_pad_io
      opencores_i2c_0_export_0_sda_pad_io        : inout std_logic                    := 'X'  -- sda_pad_io
  );
end component lab3_qsys;

BEGIN

u0 : component lab3_qsys
port map (
	clk_clk                                  => clk,                                  --                               clk.clk
	piopushbutton_external_connection_export => pushButton, -- piopushbutton_external_connection.export
	reset_reset_n                            => rst,                            --                             reset.reset_n
	digit0_external_connection_export        => digit_value(0),        --        digit0_external_connection.export
	digit1_external_connection_export        => digit_value(1),        --        digit1_external_connection.export
	digit2_external_connection_export        => digit_value(2),        --        digit2_external_connection.export
	digit3_external_connection_export        => digit_value(3),        --        digit3_external_connection.export
	digit4_external_connection_export        => digit_value(4),        --        digit4_external_connection.export
	digit5_external_connection_export        => digit_value(5),         --        digit5_external_connection.export

	opencores_i2c_0_export_0_scl_pad_io        => GSENSOR_SCLK,        --            opencores_i2c_export_0.scl_pad_io
   opencores_i2c_0_export_0_sda_pad_io        => GSENSOR_SDI         --                                  .sda_pad_io
);


segdecod0 : entity work.segdecod(RTL)
	port map(Entree => digit_value(0), Sortie => digit0(6 downto 0));
	
segdecod1 : entity work.segdecod(RTL)
	port map(Entree => digit_value(1), Sortie => digit1(6 downto 0));
	
segdecod2 : entity work.segdecod(RTL)
	port map(Entree => digit_value(2), Sortie => digit2(6 downto 0));
	
segdecod3 : entity work.segdecod(RTL)
	port map(Entree => digit_value(3), Sortie => digit3(6 downto 0));
	
segdecod4 : entity work.segdecod(RTL)
	port map(Entree => digit_value(4), Sortie => digit4(6 downto 0));
	
segdecod5 : entity work.segdecod(RTL)
	port map(Entree => digit_value(5), Sortie => digit5(6 downto 0));
	
digit0(7) <= '1';
digit1(7) <= '1';
digit2(7) <= '1';
digit3(7) <= '1';
digit4(7) <= '1';
digit5(7) <= '1';

-- config accelero
GSENSOR_SDO <= '1'; -- for 0x1D i2c addr
GSENSOR_CS_n <= '1'; -- I2C mode


END archi;
