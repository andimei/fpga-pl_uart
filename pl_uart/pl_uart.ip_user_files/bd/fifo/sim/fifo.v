//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Thu Jan  2 14:49:24 2025
//Host        : DESKTOP-5CM83PC running 64-bit major release  (build 9200)
//Command     : generate_target fifo.bd
//Design      : fifo
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "fifo,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=fifo,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "fifo.hwdef" *) 
module fifo
   (FIFO_READ_empty,
    FIFO_READ_rd_data,
    FIFO_READ_rd_en,
    FIFO_WRITE_full,
    FIFO_WRITE_wr_data,
    FIFO_WRITE_wr_en,
    clk,
    rst);
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output FIFO_READ_empty;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]FIFO_READ_rd_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input FIFO_READ_rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output FIFO_WRITE_full;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [7:0]FIFO_WRITE_wr_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input FIFO_WRITE_wr_en;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN fifo_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk;
  input rst;

  wire FIFO_READ_0_1_EMPTY;
  wire [7:0]FIFO_READ_0_1_RD_DATA;
  wire FIFO_READ_0_1_RD_EN;
  wire FIFO_WRITE_0_1_FULL;
  wire [7:0]FIFO_WRITE_0_1_WR_DATA;
  wire FIFO_WRITE_0_1_WR_EN;
  wire clk_0_1;
  wire rst_0_1;

  assign FIFO_READ_0_1_RD_EN = FIFO_READ_rd_en;
  assign FIFO_READ_empty = FIFO_READ_0_1_EMPTY;
  assign FIFO_READ_rd_data[7:0] = FIFO_READ_0_1_RD_DATA;
  assign FIFO_WRITE_0_1_WR_DATA = FIFO_WRITE_wr_data[7:0];
  assign FIFO_WRITE_0_1_WR_EN = FIFO_WRITE_wr_en;
  assign FIFO_WRITE_full = FIFO_WRITE_0_1_FULL;
  assign clk_0_1 = clk;
  assign rst_0_1 = rst;
  fifo_fifo_generator_0_0 fifo_generator
       (.clk(clk_0_1),
        .din(FIFO_WRITE_0_1_WR_DATA),
        .dout(FIFO_READ_0_1_RD_DATA),
        .empty(FIFO_READ_0_1_EMPTY),
        .full(FIFO_WRITE_0_1_FULL),
        .rd_en(FIFO_READ_0_1_RD_EN),
        .rst(rst_0_1),
        .wr_en(FIFO_WRITE_0_1_WR_EN));
endmodule
