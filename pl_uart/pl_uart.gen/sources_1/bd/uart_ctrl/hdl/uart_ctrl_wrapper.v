//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Fri Jan  3 13:57:03 2025
//Host        : DESKTOP-5CM83PC running 64-bit major release  (build 9200)
//Command     : generate_target uart_ctrl_wrapper.bd
//Design      : uart_ctrl_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module uart_ctrl_wrapper
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
  input i_CLK;
  input [7:0]i_DIN;
  input [10:0]i_DVSR;
  input i_RESET;
  input i_RX;
  input i_TX_STARTN;
  output [7:0]o_DOUT;
  output o_RX_DONE_TICK;
  output o_TX;
  output o_TX_RDY_TICK;
  output test_TICK;

  wire i_CLK;
  wire [7:0]i_DIN;
  wire [10:0]i_DVSR;
  wire i_RESET;
  wire i_RX;
  wire i_TX_STARTN;
  wire [7:0]o_DOUT;
  wire o_RX_DONE_TICK;
  wire o_TX;
  wire o_TX_RDY_TICK;
  wire test_TICK;

  uart_ctrl uart_ctrl_i
       (.i_CLK(i_CLK),
        .i_DIN(i_DIN),
        .i_DVSR(i_DVSR),
        .i_RESET(i_RESET),
        .i_RX(i_RX),
        .i_TX_STARTN(i_TX_STARTN),
        .o_DOUT(o_DOUT),
        .o_RX_DONE_TICK(o_RX_DONE_TICK),
        .o_TX(o_TX),
        .o_TX_RDY_TICK(o_TX_RDY_TICK),
        .test_TICK(test_TICK));
endmodule
