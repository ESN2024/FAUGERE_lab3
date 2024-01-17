	component lab3_qsys is
		port (
			clk_clk                                  : in    std_logic                    := 'X'; -- clk
			digit0_external_connection_export        : out   std_logic_vector(3 downto 0);        -- export
			digit1_external_connection_export        : out   std_logic_vector(3 downto 0);        -- export
			digit2_external_connection_export        : out   std_logic_vector(3 downto 0);        -- export
			digit3_external_connection_export        : out   std_logic_vector(3 downto 0);        -- export
			digit4_external_connection_export        : out   std_logic_vector(3 downto 0);        -- export
			digit5_external_connection_export        : out   std_logic_vector(3 downto 0);        -- export
			opencores_i2c_0_export_0_scl_pad_io      : inout std_logic                    := 'X'; -- scl_pad_io
			opencores_i2c_0_export_0_sda_pad_io      : inout std_logic                    := 'X'; -- sda_pad_io
			piopushbutton_external_connection_export : in    std_logic                    := 'X'; -- export
			reset_reset_n                            : in    std_logic                    := 'X'  -- reset_n
		);
	end component lab3_qsys;

	u0 : component lab3_qsys
		port map (
			clk_clk                                  => CONNECTED_TO_clk_clk,                                  --                               clk.clk
			digit0_external_connection_export        => CONNECTED_TO_digit0_external_connection_export,        --        digit0_external_connection.export
			digit1_external_connection_export        => CONNECTED_TO_digit1_external_connection_export,        --        digit1_external_connection.export
			digit2_external_connection_export        => CONNECTED_TO_digit2_external_connection_export,        --        digit2_external_connection.export
			digit3_external_connection_export        => CONNECTED_TO_digit3_external_connection_export,        --        digit3_external_connection.export
			digit4_external_connection_export        => CONNECTED_TO_digit4_external_connection_export,        --        digit4_external_connection.export
			digit5_external_connection_export        => CONNECTED_TO_digit5_external_connection_export,        --        digit5_external_connection.export
			opencores_i2c_0_export_0_scl_pad_io      => CONNECTED_TO_opencores_i2c_0_export_0_scl_pad_io,      --          opencores_i2c_0_export_0.scl_pad_io
			opencores_i2c_0_export_0_sda_pad_io      => CONNECTED_TO_opencores_i2c_0_export_0_sda_pad_io,      --                                  .sda_pad_io
			piopushbutton_external_connection_export => CONNECTED_TO_piopushbutton_external_connection_export, -- piopushbutton_external_connection.export
			reset_reset_n                            => CONNECTED_TO_reset_reset_n                             --                             reset.reset_n
		);

