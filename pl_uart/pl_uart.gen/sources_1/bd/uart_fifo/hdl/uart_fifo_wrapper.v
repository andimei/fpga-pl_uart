//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Mon Jan  6 08:26:10 2025
//Host        : DESKTOP-5CM83PC running 64-bit major release  (build 9200)
//Command     : generate_target uart_fifo_wrapper.bd
//Design      : uart_fifo_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module uart_fifo_wrapper
   (FIFO_READ_empty,
    FIFO_READ_rd_data,
    FIFO_READ_rd_en,
    FIFO_WRITE_full,
    FIFO_WRITE_wr_data,
    FIFO_WRITE_wr_en,
    i_CLK,
    i_DVSR,
    i_RESET,
    i_RX,
    o_TX,
    test_DIN,
    test_DOUT,
    test_RX_DONE_TICK,
    test_TX_RDY_TICK,
    test_TX_STARTN);
  output FIFO_READ_empty;
  output [7:0]FIFO_READ_rd_data;
  input FIFO_READ_rd_en;
  output FIFO_WRITE_full;
  input [7:0]FIFO_WRITE_wr_data;
  input FIFO_WRITE_wr_en;
  input i_CLK;
  input [10:0]i_DVSR;
  input i_RESET;
  input i_RX;
  output o_TX;
  output [7:0]test_DIN;
  output [7:0]test_DOUT;
  output test_RX_DONE_TICK;
  output test_TX_RDY_TICK;
  output test_TX_STARTN;

  wire FIFO_READ_empty;
  wire [7:0]FIFO_READ_rd_data;
  wire FIFO_READ_rd_en;
  wire FIFO_WRITE_full;
  wire [7:0]FIFO_WRITE_wr_data;
  wire FIFO_WRITE_wr_en;
  wire i_CLK;
  wire [10:0]i_DVSR;
  wire i_RESET;
  wire i_RX;
  wire o_TX;
  wire [7:0]test_DIN;
  wire [7:0]test_DOUT;
  wire test_RX_DONE_TICK;
  wire test_TX_RDY_TICK;
  wire test_TX_STARTN;

  uart_fifo uart_fifo_i
       (.FIFO_READ_empty(FIFO_READ_empty),
        .FIFO_READ_rd_data(FIFO_READ_rd_data),
        .FIFO_READ_rd_en(FIFO_READ_rd_en),
        .FIFO_WRITE_full(FIFO_WRITE_full),
        .FIFO_WRITE_wr_data(FIFO_WRITE_wr_data),
        .FIFO_WRITE_wr_en(FIFO_WRITE_wr_en),
        .i_CLK(i_CLK),
        .i_DVSR(i_DVSR),
        .i_RESET(i_RESET),
        .i_RX(i_RX),
        .o_TX(o_TX),
        .test_DIN(test_DIN),
        .test_DOUT(test_DOUT),
        .test_RX_DONE_TICK(test_RX_DONE_TICK),
        .test_TX_RDY_TICK(test_TX_RDY_TICK),
        .test_TX_STARTN(test_TX_STARTN));
endmodule
