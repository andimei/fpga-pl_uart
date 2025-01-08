//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Fri Jan  3 13:57:03 2025
//Host        : DESKTOP-5CM83PC running 64-bit major release  (build 9200)
//Command     : generate_target uart_ctrl.bd
//Design      : uart_ctrl
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "uart_ctrl,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=uart_ctrl,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "uart_ctrl.hwdef" *) 
module uart_ctrl
   (i_CLK,
    i_DIN,
    i_DVSR,
    i_RESET,
    i_RX,
    i_TX_STARTN,
    o_DOUT,
    o_RX_DONE_TICK,
    o_TX,
    o_TX_RDY_TICK,
    test_TICK);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.I_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.I_CLK, ASSOCIATED_RESET i_RESET, CLK_DOMAIN uart_ctrl_i_CLK_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input i_CLK;
  input [7:0]i_DIN;
  input [10:0]i_DVSR;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.I_RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.I_RESET, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input i_RESET;
  input i_RX;
  input i_TX_STARTN;
  output [7:0]o_DOUT;
  output o_RX_DONE_TICK;
  output o_TX;
  output o_TX_RDY_TICK;
  output test_TICK;

  wire baudrate_generator_o_TICK;
  wire i_CLK_0_1;
  wire [7:0]i_DIN_0_1;
  wire [10:0]i_DVSR_0_1;
  wire i_RESET_0_1;
  wire i_RX_0_1;
  wire i_TX_STARTN_0_1;
  wire [7:0]uart_rx_1_o_DOUT;
  wire uart_rx_1_o_RX_DONE_TICK;
  wire uart_tx_0_o_TX_RDY_TICK;
  wire uart_tx_o_TX;

  assign i_CLK_0_1 = i_CLK;
  assign i_DIN_0_1 = i_DIN[7:0];
  assign i_DVSR_0_1 = i_DVSR[10:0];
  assign i_RESET_0_1 = i_RESET;
  assign i_RX_0_1 = i_RX;
  assign i_TX_STARTN_0_1 = i_TX_STARTN;
  assign o_DOUT[7:0] = uart_rx_1_o_DOUT;
  assign o_RX_DONE_TICK = uart_rx_1_o_RX_DONE_TICK;
  assign o_TX = uart_tx_o_TX;
  assign o_TX_RDY_TICK = uart_tx_0_o_TX_RDY_TICK;
  assign test_TICK = baudrate_generator_o_TICK;
  uart_ctrl_baudrate_generator_0_0 baudrate_generator
       (.i_CLK(i_CLK_0_1),
        .i_DVSR(i_DVSR_0_1),
        .i_RESET(i_RESET_0_1),
        .o_TICK(baudrate_generator_o_TICK));
  uart_ctrl_uart_rx_1_0 uart_rx
       (.i_CLK(i_CLK_0_1),
        .i_RESET(i_RESET_0_1),
        .i_RX(i_RX_0_1),
        .i_S_TICK(baudrate_generator_o_TICK),
        .o_DOUT(uart_rx_1_o_DOUT),
        .o_RX_DONE_TICK(uart_rx_1_o_RX_DONE_TICK));
  uart_ctrl_uart_tx_0_0 uart_tx
       (.i_CLK(i_CLK_0_1),
        .i_DIN(i_DIN_0_1),
        .i_RESET(i_RESET_0_1),
        .i_S_TICK(baudrate_generator_o_TICK),
        .i_TX_STARTN(i_TX_STARTN_0_1),
        .o_TX(uart_tx_o_TX),
        .o_TX_RDY_TICK(uart_tx_0_o_TX_RDY_TICK));
endmodule
