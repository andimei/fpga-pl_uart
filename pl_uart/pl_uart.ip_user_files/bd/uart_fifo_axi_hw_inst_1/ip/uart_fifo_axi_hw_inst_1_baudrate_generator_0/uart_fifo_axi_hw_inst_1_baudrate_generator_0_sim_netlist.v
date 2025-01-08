// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon Jan  6 09:27:16 2025
// Host        : DESKTOP-5CM83PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top uart_fifo_axi_hw_inst_1_baudrate_generator_0 -prefix
//               uart_fifo_axi_hw_inst_1_baudrate_generator_0_ uart_fifo_axi_baudrate_generator_0_sim_netlist.v
// Design      : uart_fifo_axi_baudrate_generator_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module uart_fifo_axi_hw_inst_1_baudrate_generator_0_baudrate_generator
   (o_TICK,
    i_CLK,
    i_RESET,
    i_DVSR);
  output o_TICK;
  input i_CLK;
  input i_RESET;
  input [10:0]i_DVSR;

  wire i_CLK;
  wire [10:0]i_DVSR;
  wire i_RESET;
  wire load;
  wire o_TICK;
  wire o_TICK_INST_0_i_1_n_0;
  wire r_next1_carry_i_1_n_0;
  wire r_next1_carry_i_2_n_0;
  wire r_next1_carry_i_3_n_0;
  wire r_next1_carry_i_4_n_0;
  wire r_next1_carry_n_1;
  wire r_next1_carry_n_2;
  wire r_next1_carry_n_3;
  wire \r_reg[0]_i_1_n_0 ;
  wire \r_reg[10]_i_1_n_0 ;
  wire \r_reg[10]_i_2_n_0 ;
  wire \r_reg[1]_i_1_n_0 ;
  wire \r_reg[2]_i_1_n_0 ;
  wire \r_reg[3]_i_1_n_0 ;
  wire \r_reg[4]_i_1_n_0 ;
  wire \r_reg[5]_i_1_n_0 ;
  wire \r_reg[5]_i_2_n_0 ;
  wire \r_reg[6]_i_1_n_0 ;
  wire \r_reg[7]_i_1_n_0 ;
  wire \r_reg[8]_i_1_n_0 ;
  wire \r_reg[9]_i_1_n_0 ;
  wire \r_reg[9]_i_2_n_0 ;
  wire [10:0]r_reg_reg;
  wire [3:0]NLW_r_next1_carry_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h0000000000000001)) 
    o_TICK_INST_0
       (.I0(r_reg_reg[8]),
        .I1(r_reg_reg[7]),
        .I2(r_reg_reg[6]),
        .I3(r_reg_reg[10]),
        .I4(r_reg_reg[9]),
        .I5(o_TICK_INST_0_i_1_n_0),
        .O(o_TICK));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    o_TICK_INST_0_i_1
       (.I0(r_reg_reg[2]),
        .I1(r_reg_reg[0]),
        .I2(r_reg_reg[1]),
        .I3(r_reg_reg[5]),
        .I4(r_reg_reg[3]),
        .I5(r_reg_reg[4]),
        .O(o_TICK_INST_0_i_1_n_0));
  CARRY4 r_next1_carry
       (.CI(1'b0),
        .CO({load,r_next1_carry_n_1,r_next1_carry_n_2,r_next1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_r_next1_carry_O_UNCONNECTED[3:0]),
        .S({r_next1_carry_i_1_n_0,r_next1_carry_i_2_n_0,r_next1_carry_i_3_n_0,r_next1_carry_i_4_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    r_next1_carry_i_1
       (.I0(r_reg_reg[9]),
        .I1(i_DVSR[9]),
        .I2(r_reg_reg[10]),
        .I3(i_DVSR[10]),
        .O(r_next1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    r_next1_carry_i_2
       (.I0(r_reg_reg[6]),
        .I1(i_DVSR[6]),
        .I2(i_DVSR[8]),
        .I3(r_reg_reg[8]),
        .I4(i_DVSR[7]),
        .I5(r_reg_reg[7]),
        .O(r_next1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    r_next1_carry_i_3
       (.I0(r_reg_reg[3]),
        .I1(i_DVSR[3]),
        .I2(i_DVSR[5]),
        .I3(r_reg_reg[5]),
        .I4(i_DVSR[4]),
        .I5(r_reg_reg[4]),
        .O(r_next1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    r_next1_carry_i_4
       (.I0(r_reg_reg[0]),
        .I1(i_DVSR[0]),
        .I2(i_DVSR[2]),
        .I3(r_reg_reg[2]),
        .I4(i_DVSR[1]),
        .I5(r_reg_reg[1]),
        .O(r_next1_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \r_reg[0]_i_1 
       (.I0(r_reg_reg[0]),
        .I1(load),
        .O(\r_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \r_reg[10]_i_1 
       (.I0(r_reg_reg[10]),
        .I1(r_reg_reg[9]),
        .I2(\r_reg[10]_i_2_n_0 ),
        .I3(load),
        .O(\r_reg[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \r_reg[10]_i_2 
       (.I0(r_reg_reg[8]),
        .I1(r_reg_reg[6]),
        .I2(\r_reg[9]_i_2_n_0 ),
        .I3(r_reg_reg[7]),
        .O(\r_reg[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \r_reg[1]_i_1 
       (.I0(r_reg_reg[1]),
        .I1(r_reg_reg[0]),
        .I2(load),
        .O(\r_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \r_reg[2]_i_1 
       (.I0(r_reg_reg[2]),
        .I1(r_reg_reg[1]),
        .I2(r_reg_reg[0]),
        .I3(load),
        .O(\r_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \r_reg[3]_i_1 
       (.I0(r_reg_reg[3]),
        .I1(r_reg_reg[2]),
        .I2(r_reg_reg[0]),
        .I3(r_reg_reg[1]),
        .I4(load),
        .O(\r_reg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000006AAAAAAA)) 
    \r_reg[4]_i_1 
       (.I0(r_reg_reg[4]),
        .I1(r_reg_reg[3]),
        .I2(r_reg_reg[1]),
        .I3(r_reg_reg[0]),
        .I4(r_reg_reg[2]),
        .I5(load),
        .O(\r_reg[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \r_reg[5]_i_1 
       (.I0(r_reg_reg[5]),
        .I1(\r_reg[5]_i_2_n_0 ),
        .I2(load),
        .O(\r_reg[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \r_reg[5]_i_2 
       (.I0(r_reg_reg[4]),
        .I1(r_reg_reg[2]),
        .I2(r_reg_reg[0]),
        .I3(r_reg_reg[1]),
        .I4(r_reg_reg[3]),
        .O(\r_reg[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \r_reg[6]_i_1 
       (.I0(r_reg_reg[6]),
        .I1(\r_reg[9]_i_2_n_0 ),
        .I2(load),
        .O(\r_reg[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \r_reg[7]_i_1 
       (.I0(r_reg_reg[7]),
        .I1(r_reg_reg[6]),
        .I2(\r_reg[9]_i_2_n_0 ),
        .I3(load),
        .O(\r_reg[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \r_reg[8]_i_1 
       (.I0(r_reg_reg[8]),
        .I1(r_reg_reg[7]),
        .I2(\r_reg[9]_i_2_n_0 ),
        .I3(r_reg_reg[6]),
        .I4(load),
        .O(\r_reg[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000006AAAAAAA)) 
    \r_reg[9]_i_1 
       (.I0(r_reg_reg[9]),
        .I1(r_reg_reg[8]),
        .I2(r_reg_reg[6]),
        .I3(\r_reg[9]_i_2_n_0 ),
        .I4(r_reg_reg[7]),
        .I5(load),
        .O(\r_reg[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \r_reg[9]_i_2 
       (.I0(r_reg_reg[5]),
        .I1(r_reg_reg[3]),
        .I2(r_reg_reg[1]),
        .I3(r_reg_reg[0]),
        .I4(r_reg_reg[2]),
        .I5(r_reg_reg[4]),
        .O(\r_reg[9]_i_2_n_0 ));
  FDCE \r_reg_reg[0] 
       (.C(i_CLK),
        .CE(1'b1),
        .CLR(i_RESET),
        .D(\r_reg[0]_i_1_n_0 ),
        .Q(r_reg_reg[0]));
  FDCE \r_reg_reg[10] 
       (.C(i_CLK),
        .CE(1'b1),
        .CLR(i_RESET),
        .D(\r_reg[10]_i_1_n_0 ),
        .Q(r_reg_reg[10]));
  FDCE \r_reg_reg[1] 
       (.C(i_CLK),
        .CE(1'b1),
        .CLR(i_RESET),
        .D(\r_reg[1]_i_1_n_0 ),
        .Q(r_reg_reg[1]));
  FDCE \r_reg_reg[2] 
       (.C(i_CLK),
        .CE(1'b1),
        .CLR(i_RESET),
        .D(\r_reg[2]_i_1_n_0 ),
        .Q(r_reg_reg[2]));
  FDCE \r_reg_reg[3] 
       (.C(i_CLK),
        .CE(1'b1),
        .CLR(i_RESET),
        .D(\r_reg[3]_i_1_n_0 ),
        .Q(r_reg_reg[3]));
  FDCE \r_reg_reg[4] 
       (.C(i_CLK),
        .CE(1'b1),
        .CLR(i_RESET),
        .D(\r_reg[4]_i_1_n_0 ),
        .Q(r_reg_reg[4]));
  FDCE \r_reg_reg[5] 
       (.C(i_CLK),
        .CE(1'b1),
        .CLR(i_RESET),
        .D(\r_reg[5]_i_1_n_0 ),
        .Q(r_reg_reg[5]));
  FDCE \r_reg_reg[6] 
       (.C(i_CLK),
        .CE(1'b1),
        .CLR(i_RESET),
        .D(\r_reg[6]_i_1_n_0 ),
        .Q(r_reg_reg[6]));
  FDCE \r_reg_reg[7] 
       (.C(i_CLK),
        .CE(1'b1),
        .CLR(i_RESET),
        .D(\r_reg[7]_i_1_n_0 ),
        .Q(r_reg_reg[7]));
  FDCE \r_reg_reg[8] 
       (.C(i_CLK),
        .CE(1'b1),
        .CLR(i_RESET),
        .D(\r_reg[8]_i_1_n_0 ),
        .Q(r_reg_reg[8]));
  FDCE \r_reg_reg[9] 
       (.C(i_CLK),
        .CE(1'b1),
        .CLR(i_RESET),
        .D(\r_reg[9]_i_1_n_0 ),
        .Q(r_reg_reg[9]));
endmodule

(* CHECK_LICENSE_TYPE = "uart_fifo_axi_baudrate_generator_0,baudrate_generator,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "baudrate_generator,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module uart_fifo_axi_hw_inst_1_baudrate_generator_0
   (i_CLK,
    i_RESET,
    i_DVSR,
    o_TICK);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_CLK, ASSOCIATED_RESET i_RESET, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN uart_fifo_axi_S_AXI_ACLK_0, INSERT_VIP 0" *) input i_CLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 i_RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_RESET, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input i_RESET;
  input [10:0]i_DVSR;
  output o_TICK;

  wire i_CLK;
  wire [10:0]i_DVSR;
  wire i_RESET;
  wire o_TICK;

  uart_fifo_axi_hw_inst_1_baudrate_generator_0_baudrate_generator inst
       (.i_CLK(i_CLK),
        .i_DVSR(i_DVSR),
        .i_RESET(i_RESET),
        .o_TICK(o_TICK));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
