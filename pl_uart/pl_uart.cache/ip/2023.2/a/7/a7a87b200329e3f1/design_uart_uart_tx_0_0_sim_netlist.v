// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Fri Nov 15 16:42:09 2024
// Host        : DESKTOP-5CM83PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_uart_uart_tx_0_0_sim_netlist.v
// Design      : design_uart_uart_tx_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_uart_uart_tx_0_0,uart_tx,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "uart_tx,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (i_CLK,
    i_RESETN,
    i_TX_START,
    i_S_TICK,
    i_DIN,
    o_TX,
    o_TX_DONE_TICK);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_CLK, ASSOCIATED_RESET i_RESETN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_uart_i_CLK_0, INSERT_VIP 0" *) input i_CLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 i_RESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_RESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input i_RESETN;
  input i_TX_START;
  input i_S_TICK;
  input [7:0]i_DIN;
  output o_TX;
  output o_TX_DONE_TICK;

  wire i_CLK;
  wire [7:0]i_DIN;
  wire i_RESETN;
  wire i_S_TICK;
  wire i_TX_START;
  wire o_TX;
  wire o_TX_DONE_TICK;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_tx inst
       (.i_CLK(i_CLK),
        .i_DIN(i_DIN),
        .i_RESETN(i_RESETN),
        .i_S_TICK(i_S_TICK),
        .i_TX_START(i_TX_START),
        .o_TX(o_TX),
        .o_TX_DONE_TICK(o_TX_DONE_TICK));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_tx
   (o_TX,
    o_TX_DONE_TICK,
    i_DIN,
    i_TX_START,
    i_S_TICK,
    i_CLK,
    i_RESETN);
  output o_TX;
  output o_TX_DONE_TICK;
  input [7:0]i_DIN;
  input i_TX_START;
  input i_S_TICK;
  input i_CLK;
  input i_RESETN;

  wire \FSM_sequential_state_reg[0]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[0]_i_2_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_2_n_0 ;
  wire [6:0]b_next;
  wire b_next_0;
  wire [0:0]b_reg;
  wire \b_reg[7]_i_2_n_0 ;
  wire \b_reg_reg_n_0_[1] ;
  wire \b_reg_reg_n_0_[2] ;
  wire \b_reg_reg_n_0_[3] ;
  wire \b_reg_reg_n_0_[4] ;
  wire \b_reg_reg_n_0_[5] ;
  wire \b_reg_reg_n_0_[6] ;
  wire \b_reg_reg_n_0_[7] ;
  wire i_CLK;
  wire [7:0]i_DIN;
  wire i_RESETN;
  wire i_S_TICK;
  wire i_TX_START;
  wire [2:0]n_reg;
  wire \n_reg[0]_i_1_n_0 ;
  wire \n_reg[1]_i_1_n_0 ;
  wire \n_reg[1]_i_2_n_0 ;
  wire \n_reg[1]_i_3_n_0 ;
  wire \n_reg[2]_i_1_n_0 ;
  wire \n_reg[2]_i_2_n_0 ;
  wire o_TX;
  wire o_TX_DONE_TICK;
  wire o_TX_DONE_TICK_INST_0_i_1_n_0;
  wire s_next;
  wire [3:0]s_reg;
  wire \s_reg[0]_i_1_n_0 ;
  wire \s_reg[1]_i_1_n_0 ;
  wire \s_reg[2]_i_1_n_0 ;
  wire \s_reg[3]_i_2_n_0 ;
  wire [1:0]state_reg;
  wire tx_next;
  wire tx_reg_i_2_n_0;

  LUT6 #(
    .INIT(64'hFFFF0F0F00AA30AA)) 
    \FSM_sequential_state_reg[0]_i_1 
       (.I0(i_TX_START),
        .I1(\FSM_sequential_state_reg[0]_i_2_n_0 ),
        .I2(i_S_TICK),
        .I3(state_reg[1]),
        .I4(\FSM_sequential_state_reg[1]_i_2_n_0 ),
        .I5(state_reg[0]),
        .O(\FSM_sequential_state_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \FSM_sequential_state_reg[0]_i_2 
       (.I0(n_reg[1]),
        .I1(n_reg[0]),
        .I2(n_reg[2]),
        .O(\FSM_sequential_state_reg[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hC6CC)) 
    \FSM_sequential_state_reg[1]_i_1 
       (.I0(i_S_TICK),
        .I1(state_reg[1]),
        .I2(\FSM_sequential_state_reg[1]_i_2_n_0 ),
        .I3(state_reg[0]),
        .O(\FSM_sequential_state_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_sequential_state_reg[1]_i_2 
       (.I0(s_reg[2]),
        .I1(s_reg[0]),
        .I2(s_reg[1]),
        .I3(s_reg[3]),
        .O(\FSM_sequential_state_reg[1]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "START:01,DATA:10,IDLE:00,STOP:11" *) 
  FDCE \FSM_sequential_state_reg_reg[0] 
       (.C(i_CLK),
        .CE(1'b1),
        .CLR(tx_reg_i_2_n_0),
        .D(\FSM_sequential_state_reg[0]_i_1_n_0 ),
        .Q(state_reg[0]));
  (* FSM_ENCODED_STATES = "START:01,DATA:10,IDLE:00,STOP:11" *) 
  FDCE \FSM_sequential_state_reg_reg[1] 
       (.C(i_CLK),
        .CE(1'b1),
        .CLR(tx_reg_i_2_n_0),
        .D(\FSM_sequential_state_reg[1]_i_1_n_0 ),
        .Q(state_reg[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[0]_i_1 
       (.I0(\b_reg_reg_n_0_[1] ),
        .I1(state_reg[1]),
        .I2(i_DIN[0]),
        .O(b_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[1]_i_1 
       (.I0(\b_reg_reg_n_0_[2] ),
        .I1(state_reg[1]),
        .I2(i_DIN[1]),
        .O(b_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[2]_i_1 
       (.I0(\b_reg_reg_n_0_[3] ),
        .I1(state_reg[1]),
        .I2(i_DIN[2]),
        .O(b_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[3]_i_1 
       (.I0(\b_reg_reg_n_0_[4] ),
        .I1(state_reg[1]),
        .I2(i_DIN[3]),
        .O(b_next[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[4]_i_1 
       (.I0(\b_reg_reg_n_0_[5] ),
        .I1(state_reg[1]),
        .I2(i_DIN[4]),
        .O(b_next[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[5]_i_1 
       (.I0(\b_reg_reg_n_0_[6] ),
        .I1(state_reg[1]),
        .I2(i_DIN[5]),
        .O(b_next[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[6]_i_1 
       (.I0(\b_reg_reg_n_0_[7] ),
        .I1(state_reg[1]),
        .I2(i_DIN[6]),
        .O(b_next[6]));
  LUT5 #(
    .INIT(32'h00004F44)) 
    \b_reg[7]_i_1 
       (.I0(state_reg[1]),
        .I1(i_TX_START),
        .I2(o_TX_DONE_TICK_INST_0_i_1_n_0),
        .I3(i_S_TICK),
        .I4(state_reg[0]),
        .O(b_next_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \b_reg[7]_i_2 
       (.I0(i_DIN[7]),
        .I1(state_reg[1]),
        .O(\b_reg[7]_i_2_n_0 ));
  FDCE \b_reg_reg[0] 
       (.C(i_CLK),
        .CE(b_next_0),
        .CLR(tx_reg_i_2_n_0),
        .D(b_next[0]),
        .Q(b_reg));
  FDCE \b_reg_reg[1] 
       (.C(i_CLK),
        .CE(b_next_0),
        .CLR(tx_reg_i_2_n_0),
        .D(b_next[1]),
        .Q(\b_reg_reg_n_0_[1] ));
  FDCE \b_reg_reg[2] 
       (.C(i_CLK),
        .CE(b_next_0),
        .CLR(tx_reg_i_2_n_0),
        .D(b_next[2]),
        .Q(\b_reg_reg_n_0_[2] ));
  FDCE \b_reg_reg[3] 
       (.C(i_CLK),
        .CE(b_next_0),
        .CLR(tx_reg_i_2_n_0),
        .D(b_next[3]),
        .Q(\b_reg_reg_n_0_[3] ));
  FDCE \b_reg_reg[4] 
       (.C(i_CLK),
        .CE(b_next_0),
        .CLR(tx_reg_i_2_n_0),
        .D(b_next[4]),
        .Q(\b_reg_reg_n_0_[4] ));
  FDCE \b_reg_reg[5] 
       (.C(i_CLK),
        .CE(b_next_0),
        .CLR(tx_reg_i_2_n_0),
        .D(b_next[5]),
        .Q(\b_reg_reg_n_0_[5] ));
  FDCE \b_reg_reg[6] 
       (.C(i_CLK),
        .CE(b_next_0),
        .CLR(tx_reg_i_2_n_0),
        .D(b_next[6]),
        .Q(\b_reg_reg_n_0_[6] ));
  FDCE \b_reg_reg[7] 
       (.C(i_CLK),
        .CE(b_next_0),
        .CLR(tx_reg_i_2_n_0),
        .D(\b_reg[7]_i_2_n_0 ),
        .Q(\b_reg_reg_n_0_[7] ));
  LUT6 #(
    .INIT(64'hEEBFFFFF00400000)) 
    \n_reg[0]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_i_2_n_0 ),
        .I1(state_reg[1]),
        .I2(\FSM_sequential_state_reg[0]_i_2_n_0 ),
        .I3(state_reg[0]),
        .I4(i_S_TICK),
        .I5(n_reg[0]),
        .O(\n_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF5F3FFF30A000000)) 
    \n_reg[1]_i_1 
       (.I0(n_reg[0]),
        .I1(\n_reg[1]_i_2_n_0 ),
        .I2(\FSM_sequential_state_reg[1]_i_2_n_0 ),
        .I3(state_reg[1]),
        .I4(\n_reg[1]_i_3_n_0 ),
        .I5(n_reg[1]),
        .O(\n_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \n_reg[1]_i_2 
       (.I0(state_reg[0]),
        .I1(i_S_TICK),
        .O(\n_reg[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h007F0000)) 
    \n_reg[1]_i_3 
       (.I0(n_reg[2]),
        .I1(n_reg[0]),
        .I2(n_reg[1]),
        .I3(state_reg[0]),
        .I4(i_S_TICK),
        .O(\n_reg[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hE0E0F0F4F0F0F0F0)) 
    \n_reg[2]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_i_2_n_0 ),
        .I1(state_reg[1]),
        .I2(n_reg[2]),
        .I3(\n_reg[2]_i_2_n_0 ),
        .I4(state_reg[0]),
        .I5(i_S_TICK),
        .O(\n_reg[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \n_reg[2]_i_2 
       (.I0(n_reg[0]),
        .I1(n_reg[1]),
        .O(\n_reg[2]_i_2_n_0 ));
  FDCE \n_reg_reg[0] 
       (.C(i_CLK),
        .CE(1'b1),
        .CLR(tx_reg_i_2_n_0),
        .D(\n_reg[0]_i_1_n_0 ),
        .Q(n_reg[0]));
  FDCE \n_reg_reg[1] 
       (.C(i_CLK),
        .CE(1'b1),
        .CLR(tx_reg_i_2_n_0),
        .D(\n_reg[1]_i_1_n_0 ),
        .Q(n_reg[1]));
  FDCE \n_reg_reg[2] 
       (.C(i_CLK),
        .CE(1'b1),
        .CLR(tx_reg_i_2_n_0),
        .D(\n_reg[2]_i_1_n_0 ),
        .Q(n_reg[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h08)) 
    o_TX_DONE_TICK_INST_0
       (.I0(i_S_TICK),
        .I1(state_reg[0]),
        .I2(o_TX_DONE_TICK_INST_0_i_1_n_0),
        .O(o_TX_DONE_TICK));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    o_TX_DONE_TICK_INST_0_i_1
       (.I0(s_reg[3]),
        .I1(s_reg[1]),
        .I2(s_reg[0]),
        .I3(s_reg[2]),
        .I4(state_reg[1]),
        .O(o_TX_DONE_TICK_INST_0_i_1_n_0));
  LUT3 #(
    .INIT(8'h0E)) 
    \s_reg[0]_i_1 
       (.I0(state_reg[1]),
        .I1(state_reg[0]),
        .I2(s_reg[0]),
        .O(\s_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0EE0)) 
    \s_reg[1]_i_1 
       (.I0(state_reg[0]),
        .I1(state_reg[1]),
        .I2(s_reg[1]),
        .I3(s_reg[0]),
        .O(\s_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0EE0E0E0)) 
    \s_reg[2]_i_1 
       (.I0(state_reg[0]),
        .I1(state_reg[1]),
        .I2(s_reg[2]),
        .I3(s_reg[0]),
        .I4(s_reg[1]),
        .O(\s_reg[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8A8F8A80)) 
    \s_reg[3]_i_1 
       (.I0(i_S_TICK),
        .I1(o_TX_DONE_TICK_INST_0_i_1_n_0),
        .I2(state_reg[0]),
        .I3(state_reg[1]),
        .I4(i_TX_START),
        .O(s_next));
  LUT6 #(
    .INIT(64'h0EE0E0E0E0E0E0E0)) 
    \s_reg[3]_i_2 
       (.I0(state_reg[0]),
        .I1(state_reg[1]),
        .I2(s_reg[3]),
        .I3(s_reg[1]),
        .I4(s_reg[0]),
        .I5(s_reg[2]),
        .O(\s_reg[3]_i_2_n_0 ));
  FDCE \s_reg_reg[0] 
       (.C(i_CLK),
        .CE(s_next),
        .CLR(tx_reg_i_2_n_0),
        .D(\s_reg[0]_i_1_n_0 ),
        .Q(s_reg[0]));
  FDCE \s_reg_reg[1] 
       (.C(i_CLK),
        .CE(s_next),
        .CLR(tx_reg_i_2_n_0),
        .D(\s_reg[1]_i_1_n_0 ),
        .Q(s_reg[1]));
  FDCE \s_reg_reg[2] 
       (.C(i_CLK),
        .CE(s_next),
        .CLR(tx_reg_i_2_n_0),
        .D(\s_reg[2]_i_1_n_0 ),
        .Q(s_reg[2]));
  FDCE \s_reg_reg[3] 
       (.C(i_CLK),
        .CE(s_next),
        .CLR(tx_reg_i_2_n_0),
        .D(\s_reg[3]_i_2_n_0 ),
        .Q(s_reg[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hCB)) 
    tx_reg_i_1
       (.I0(b_reg),
        .I1(state_reg[1]),
        .I2(state_reg[0]),
        .O(tx_next));
  LUT1 #(
    .INIT(2'h1)) 
    tx_reg_i_2
       (.I0(i_RESETN),
        .O(tx_reg_i_2_n_0));
  FDPE tx_reg_reg
       (.C(i_CLK),
        .CE(1'b1),
        .D(tx_next),
        .PRE(tx_reg_i_2_n_0),
        .Q(o_TX));
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
