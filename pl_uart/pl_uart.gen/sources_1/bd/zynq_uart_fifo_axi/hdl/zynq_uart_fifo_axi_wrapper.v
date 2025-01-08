//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Tue Jan  7 16:28:45 2025
//Host        : DESKTOP-5CM83PC running 64-bit major release  (build 9200)
//Command     : generate_target zynq_uart_fifo_axi_wrapper.bd
//Design      : zynq_uart_fifo_axi_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module zynq_uart_fifo_axi_wrapper
   (FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    i_RX_0,
    o_TX_0);
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  input i_RX_0;
  output o_TX_0;

  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire i_RX_0;
  wire o_TX_0;

  zynq_uart_fifo_axi zynq_uart_fifo_axi_i
       (.FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .i_RX_0(i_RX_0),
        .o_TX_0(o_TX_0));
endmodule
