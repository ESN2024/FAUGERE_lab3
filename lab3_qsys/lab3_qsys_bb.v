
module lab3_qsys (
	clk_clk,
	digit0_external_connection_export,
	digit1_external_connection_export,
	digit2_external_connection_export,
	digit3_external_connection_export,
	digit4_external_connection_export,
	digit5_external_connection_export,
	piopushbutton_external_connection_export,
	reset_reset_n,
	opencores_i2c_0_export_0_scl_pad_io,
	opencores_i2c_0_export_0_sda_pad_io);	

	input		clk_clk;
	output	[3:0]	digit0_external_connection_export;
	output	[3:0]	digit1_external_connection_export;
	output	[3:0]	digit2_external_connection_export;
	output	[3:0]	digit3_external_connection_export;
	output	[3:0]	digit4_external_connection_export;
	output	[3:0]	digit5_external_connection_export;
	input		piopushbutton_external_connection_export;
	input		reset_reset_n;
	inout		opencores_i2c_0_export_0_scl_pad_io;
	inout		opencores_i2c_0_export_0_sda_pad_io;
endmodule
