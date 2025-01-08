// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon Jan  6 09:28:23 2025
// Host        : DESKTOP-5CM83PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top uart_fifo_axi_hw_inst_1_uart_rx_0 -prefix
//               uart_fifo_axi_hw_inst_1_uart_rx_0_ uart_fifo_axi_uart_rx_0_sim_netlist.v
// Design      : uart_fifo_axi_uart_rx_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "uart_fifo_axi_uart_rx_0,uart_rx,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "uart_rx,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module uart_fifo_axi_hw_inst_1_uart_rx_0
   (i_CLK,
    i_RESET,
    i_RX,
    i_S_TICK,
    o_RX_DONE_TICK,
    o_DOUT);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_CLK, ASSOCIATED_RESET i_RESET, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN uart_fifo_axi_S_AXI_ACLK_0, INSERT_VIP 0" *) input i_CLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 i_RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_RESET, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input i_RESET;
  input i_RX;
  input i_S_TICK;
  output o_RX_DONE_TICK;
  output [7:0]o_DOUT;

  wire i_CLK;
  wire i_RESET;
  wire i_RX;
  wire i_S_TICK;
  wire [7:0]o_DOUT;
  wire o_RX_DONE_TICK;

  uart_fifo_axi_hw_inst_1_uart_rx_0_uart_rx inst
       (.i_CLK(i_CLK),
        .i_RESET(i_RESET),
        .i_RX(i_RX),
        .i_S_TICK(i_S_TICK),
        .o_DOUT(o_DOUT),
        .o_RX_DONE_TICK(o_RX_DONE_TICK));
endmodule

module uart_fifo_axi_hw_inst_1_uart_rx_0_uart_rx
   (o_DOUT,
    o_RX_DONE_TICK,
    i_RX,
    i_S_TICK,
    i_CLK,
    i_RESET);
  output [7:0]o_DOUT;
  output o_RX_DONE_TICK;
  input i_RX;
  input i_S_TICK;
  input i_CLK;
  input i_RESET;

  wire \FSM_sequential_state_reg[0]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_2_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_3_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_4_n_0 ;
  wire b_next;
  wire i_CLK;
  wire i_RESET;
  wire i_RX;
  wire i_S_TICK;
  wire [2:0]n_reg;
  wire \n_reg[0]_i_1_n_0 ;
  wire \n_reg[1]_i_1_n_0 ;
  wire \n_reg[1]_i_2_n_0 ;
  wire \n_reg[1]_i_3_n_0 ;
  wire \n_reg[2]_i_1_n_0 ;
  wire \n_reg[2]_i_2_n_0 ;
  wire \n_reg[2]_i_3_n_0 ;
  wire \n_reg[2]_i_4_n_0 ;
  wire \n_reg[2]_i_5_n_0 ;
  wire [7:0]o_DOUT;
  wire o_RX_DONE_TICK;
  wire o_RX_DONE_TICK_INST_0_i_1_n_0;
  wire s_next;
  wire [3:0]s_reg;
  wire \s_reg[0]_i_1_n_0 ;
  wire \s_reg[0]_i_2_n_0 ;
  wire \s_reg[1]_i_1_n_0 ;
  wire \s_reg[2]_i_1_n_0 ;
  wire \s_reg[2]_i_2_n_0 ;
  wire \s_reg[2]_i_3_n_0 ;
  wire \s_reg[3]_i_2_n_0 ;
  wire [1:0]state_reg;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0FB0)) 
    \FSM_sequential_state_reg[0]_i_1 
       (.I0(i_S_TICK),
        .I1(state_reg[1]),
        .I2(\FSM_sequential_state_reg[1]_i_2_n_0 ),
        .I3(state_reg[0]),
        .O(\FSM_sequential_state_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h30FF4400)) 
    \FSM_sequential_state_reg[1]_i_1 
       (.I0(i_RX),
        .I1(state_reg[0]),
        .I2(i_S_TICK),
        .I3(\FSM_sequential_state_reg[1]_i_2_n_0 ),
        .I4(state_reg[1]),
        .O(\FSM_sequential_state_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF11F111F111F1)) 
    \FSM_sequential_state_reg[1]_i_2 
       (.I0(i_RX),
        .I1(\FSM_sequential_state_reg[1]_i_3_n_0 ),
        .I2(\FSM_sequential_state_reg[1]_i_4_n_0 ),
        .I3(o_RX_DONE_TICK_INST_0_i_1_n_0),
        .I4(\n_reg[2]_i_4_n_0 ),
        .I5(\n_reg[2]_i_3_n_0 ),
        .O(\FSM_sequential_state_reg[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_state_reg[1]_i_3 
       (.I0(state_reg[0]),
        .I1(state_reg[1]),
        .O(\FSM_sequential_state_reg[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \FSM_sequential_state_reg[1]_i_4 
       (.I0(s_reg[3]),
        .I1(i_S_TICK),
        .I2(state_reg[1]),
        .I3(state_reg[0]),
        .O(\FSM_sequential_state_reg[1]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "START:01,DATA:10,IDLE:00,STOP:11" *) 
  FDCE \FSM_sequential_state_reg_reg[0] 
       (.C(i_CLK),
        .CE(1'b1),
        .CLR(i_RESET),
        .D(\FSM_sequential_state_reg[0]_i_1_n_0 ),
        .Q(state_reg[0]));
  (* FSM_ENCODED_STATES = "START:01,DATA:10,IDLE:00,STOP:11" *) 
  FDCE \FSM_sequential_state_reg_reg[1] 
       (.C(i_CLK),
        .CE(1'b1),
        .CLR(i_RESET),
        .D(\FSM_sequential_state_reg[1]_i_1_n_0 ),
        .Q(state_reg[1]));
  LUT5 #(
    .INIT(32'h00004000)) 
    \b_reg[7]_i_1 
       (.I0(o_RX_DONE_TICK_INST_0_i_1_n_0),
        .I1(i_S_TICK),
        .I2(state_reg[1]),
        .I3(s_reg[3]),
        .I4(state_reg[0]),
        .O(b_next));
  FDCE \b_reg_reg[0] 
       (.C(i_CLK),
        .CE(b_next),
        .CLR(i_RESET),
        .D(o_DOUT[1]),
        .Q(o_DOUT[0]));
  FDCE \b_reg_reg[1] 
       (.C(i_CLK),
        .CE(b_next),
        .CLR(i_RESET),
        .D(o_DOUT[2]),
        .Q(o_DOUT[1]));
  FDCE \b_reg_reg[2] 
       (.C(i_CLK),
        .CE(b_next),
        .CLR(i_RESET),
        .D(o_DOUT[3]),
        .Q(o_DOUT[2]));
  FDCE \b_reg_reg[3] 
       (.C(i_CLK),
        .CE(b_next),
        .CLR(i_RESET),
        .D(o_DOUT[4]),
        .Q(o_DOUT[3]));
  FDCE \b_reg_reg[4] 
       (.C(i_CLK),
        .CE(b_next),
        .CLR(i_RESET),
        .D(o_DOUT[5]),
        .Q(o_DOUT[4]));
  FDCE \b_reg_reg[5] 
       (.C(i_CLK),
        .CE(b_next),
        .CLR(i_RESET),
        .D(o_DOUT[6]),
        .Q(o_DOUT[5]));
  FDCE \b_reg_reg[6] 
       (.C(i_CLK),
        .CE(b_next),
        .CLR(i_RESET),
        .D(o_DOUT[7]),
        .Q(o_DOUT[6]));
  FDCE \b_reg_reg[7] 
       (.C(i_CLK),
        .CE(b_next),
        .CLR(i_RESET),
        .D(i_RX),
        .Q(o_DOUT[7]));
  LUT6 #(
    .INIT(64'h2222F2FFEEEE0E00)) 
    \n_reg[0]_i_1 
       (.I0(i_RX),
        .I1(state_reg[1]),
        .I2(\n_reg[2]_i_3_n_0 ),
        .I3(\n_reg[2]_i_4_n_0 ),
        .I4(\n_reg[1]_i_3_n_0 ),
        .I5(n_reg[0]),
        .O(\n_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5C5C5CFFACACAC00)) 
    \n_reg[1]_i_1 
       (.I0(n_reg[0]),
        .I1(i_RX),
        .I2(state_reg[1]),
        .I3(\n_reg[1]_i_2_n_0 ),
        .I4(\n_reg[1]_i_3_n_0 ),
        .I5(n_reg[1]),
        .O(\n_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00002AAA)) 
    \n_reg[1]_i_2 
       (.I0(\n_reg[2]_i_4_n_0 ),
        .I1(n_reg[1]),
        .I2(n_reg[0]),
        .I3(n_reg[2]),
        .I4(state_reg[0]),
        .O(\n_reg[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \n_reg[1]_i_3 
       (.I0(state_reg[0]),
        .I1(state_reg[1]),
        .I2(i_RX),
        .I3(i_S_TICK),
        .I4(s_reg[3]),
        .I5(o_RX_DONE_TICK_INST_0_i_1_n_0),
        .O(\n_reg[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAEFEF20AA2020)) 
    \n_reg[2]_i_1 
       (.I0(\n_reg[2]_i_2_n_0 ),
        .I1(\n_reg[2]_i_3_n_0 ),
        .I2(\n_reg[2]_i_4_n_0 ),
        .I3(o_RX_DONE_TICK_INST_0_i_1_n_0),
        .I4(\n_reg[2]_i_5_n_0 ),
        .I5(n_reg[2]),
        .O(\n_reg[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7878FF00)) 
    \n_reg[2]_i_2 
       (.I0(n_reg[1]),
        .I1(n_reg[0]),
        .I2(n_reg[2]),
        .I3(i_RX),
        .I4(state_reg[1]),
        .O(\n_reg[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hEAAA)) 
    \n_reg[2]_i_3 
       (.I0(state_reg[0]),
        .I1(n_reg[2]),
        .I2(n_reg[0]),
        .I3(n_reg[1]),
        .O(\n_reg[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \n_reg[2]_i_4 
       (.I0(s_reg[3]),
        .I1(state_reg[1]),
        .I2(i_S_TICK),
        .I3(s_reg[0]),
        .I4(s_reg[1]),
        .I5(s_reg[2]),
        .O(\n_reg[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00040000)) 
    \n_reg[2]_i_5 
       (.I0(s_reg[3]),
        .I1(i_S_TICK),
        .I2(i_RX),
        .I3(state_reg[1]),
        .I4(state_reg[0]),
        .O(\n_reg[2]_i_5_n_0 ));
  FDCE \n_reg_reg[0] 
       (.C(i_CLK),
        .CE(1'b1),
        .CLR(i_RESET),
        .D(\n_reg[0]_i_1_n_0 ),
        .Q(n_reg[0]));
  FDCE \n_reg_reg[1] 
       (.C(i_CLK),
        .CE(1'b1),
        .CLR(i_RESET),
        .D(\n_reg[1]_i_1_n_0 ),
        .Q(n_reg[1]));
  FDCE \n_reg_reg[2] 
       (.C(i_CLK),
        .CE(1'b1),
        .CLR(i_RESET),
        .D(\n_reg[2]_i_1_n_0 ),
        .Q(n_reg[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    o_RX_DONE_TICK_INST_0
       (.I0(o_RX_DONE_TICK_INST_0_i_1_n_0),
        .I1(i_S_TICK),
        .I2(state_reg[1]),
        .I3(s_reg[3]),
        .I4(state_reg[0]),
        .O(o_RX_DONE_TICK));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    o_RX_DONE_TICK_INST_0_i_1
       (.I0(s_reg[2]),
        .I1(s_reg[1]),
        .I2(s_reg[0]),
        .O(o_RX_DONE_TICK_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h00FF00FF10FFF0F0)) 
    \s_reg[0]_i_1 
       (.I0(s_reg[3]),
        .I1(\s_reg[0]_i_2_n_0 ),
        .I2(i_RX),
        .I3(s_reg[0]),
        .I4(state_reg[0]),
        .I5(state_reg[1]),
        .O(\s_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_reg[0]_i_2 
       (.I0(s_reg[1]),
        .I1(s_reg[2]),
        .O(\s_reg[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFF60)) 
    \s_reg[1]_i_1 
       (.I0(s_reg[0]),
        .I1(s_reg[1]),
        .I2(\s_reg[2]_i_2_n_0 ),
        .I3(\s_reg[2]_i_3_n_0 ),
        .O(\s_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFF7800)) 
    \s_reg[2]_i_1 
       (.I0(s_reg[0]),
        .I1(s_reg[1]),
        .I2(s_reg[2]),
        .I3(\s_reg[2]_i_2_n_0 ),
        .I4(\s_reg[2]_i_3_n_0 ),
        .O(\s_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF7F7F00FF00)) 
    \s_reg[2]_i_2 
       (.I0(s_reg[2]),
        .I1(s_reg[1]),
        .I2(s_reg[0]),
        .I3(state_reg[1]),
        .I4(s_reg[3]),
        .I5(state_reg[0]),
        .O(\s_reg[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h001F0000)) 
    \s_reg[2]_i_3 
       (.I0(o_RX_DONE_TICK_INST_0_i_1_n_0),
        .I1(s_reg[3]),
        .I2(state_reg[0]),
        .I3(state_reg[1]),
        .I4(i_RX),
        .O(\s_reg[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hD0D0F0F0E0F000FF)) 
    \s_reg[3]_i_1 
       (.I0(s_reg[3]),
        .I1(o_RX_DONE_TICK_INST_0_i_1_n_0),
        .I2(i_S_TICK),
        .I3(i_RX),
        .I4(state_reg[0]),
        .I5(state_reg[1]),
        .O(s_next));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFE0202EE)) 
    \s_reg[3]_i_2 
       (.I0(i_RX),
        .I1(state_reg[1]),
        .I2(state_reg[0]),
        .I3(s_reg[3]),
        .I4(o_RX_DONE_TICK_INST_0_i_1_n_0),
        .O(\s_reg[3]_i_2_n_0 ));
  FDCE \s_reg_reg[0] 
       (.C(i_CLK),
        .CE(s_next),
        .CLR(i_RESET),
        .D(\s_reg[0]_i_1_n_0 ),
        .Q(s_reg[0]));
  FDCE \s_reg_reg[1] 
       (.C(i_CLK),
        .CE(s_next),
        .CLR(i_RESET),
        .D(\s_reg[1]_i_1_n_0 ),
        .Q(s_reg[1]));
  FDCE \s_reg_reg[2] 
       (.C(i_CLK),
        .CE(s_next),
        .CLR(i_RESET),
        .D(\s_reg[2]_i_1_n_0 ),
        .Q(s_reg[2]));
  FDCE \s_reg_reg[3] 
       (.C(i_CLK),
        .CE(s_next),
        .CLR(i_RESET),
        .D(\s_reg[3]_i_2_n_0 ),
        .Q(s_reg[3]));
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
