//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Thu Jan  2 14:49:24 2025
//Host        : DESKTOP-5CM83PC running 64-bit major release  (build 9200)
//Command     : generate_target fifo_wrapper.bd
//Design      : fifo_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module fifo_wrapper
   (FIFO_READ_empty,
    FIFO_READ_rd_data,
    FIFO_READ_rd_en,
    FIFO_WRITE_full,
    FIFO_WRITE_wr_data,
    FIFO_WRITE_wr_en,
    clk,
    rst);
  output FIFO_READ_empty;
  output [7:0]FIFO_READ_rd_data;
  input FIFO_READ_rd_en;
  output FIFO_WRITE_full;
  input [7:0]FIFO_WRITE_wr_data;
  input FIFO_WRITE_wr_en;
  input clk;
  input rst;

  wire FIFO_READ_empty;
  wire [7:0]FIFO_READ_rd_data;
  wire FIFO_READ_rd_en;
  wire FIFO_WRITE_full;
  wire [7:0]FIFO_WRITE_wr_data;
  wire FIFO_WRITE_wr_en;
  wire clk;
  wire rst;

  fifo fifo_i
       (.FIFO_READ_empty(FIFO_READ_empty),
        .FIFO_READ_rd_data(FIFO_READ_rd_data),
        .FIFO_READ_rd_en(FIFO_READ_rd_en),
        .FIFO_WRITE_full(FIFO_WRITE_full),
        .FIFO_WRITE_wr_data(FIFO_WRITE_wr_data),
        .FIFO_WRITE_wr_en(FIFO_WRITE_wr_en),
        .clk(clk),
        .rst(rst));
endmodule
