// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon Jan  6 09:28:02 2025
// Host        : DESKTOP-5CM83PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top uart_fifo_axi_fifo_tx_0 -prefix
//               uart_fifo_axi_fifo_tx_0_ uart_fifo_axi_fifo_rx_0_sim_netlist.v
// Design      : uart_fifo_axi_fifo_rx_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "uart_fifo_axi_fifo_rx_0,fifo_generator_v13_2_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_9,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module uart_fifo_axi_fifo_tx_0
   (clk,
    rst,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 core_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME core_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN uart_fifo_axi_S_AXI_ACLK_0, INSERT_VIP 0" *) input clk;
  input rst;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [7:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire rst;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [9:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [9:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [9:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "1" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "10" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "8" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "8" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "6" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "4" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "1022" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "1021" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "10" *) 
  (* C_RD_DEPTH = "1024" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "10" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "10" *) 
  (* C_WR_DEPTH = "1024" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "10" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  uart_fifo_axi_fifo_tx_0_fifo_generator_v13_2_9 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(clk),
        .data_count(NLW_U0_data_count_UNCONNECTED[9:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[9:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(rst),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(1'b0),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[9:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
gcDjvJ18gZEH8C+LHMq/N7AaYWSyHgvjIQn585rdUOTVX2orO9n8j6LNiga3BYkS91+lbHAjAieW
oD/8serz9uvKt9uVuyMIE6oOFFScZR6q2wQk1d1Qzq717+8yPCwgBT9HIhfJIHLujHt+cA2l2L5t
tux9aNBdVKkk1MHv7yY=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
exhH3ieiewq538XhQByQWj7PMh1Y+pzdDw+4bALHgOXUMTZleYL0Pvhip/E5VwYBOb3/5i/ElWf3
Vm6OeE9b1Jj8xb7x10akeyRaNdCJYAtTqgb7gFS/crjXeoaYKJgLqCiyaB7LdWR9BiZOWqxEPSxe
/lr/8F8psti0kra2jACCbz94iU3qDIdZWH5kqd21Pp2/YczWpJBQzh+bBz9V+EuMAeZIzY3x2GZy
jOMZPemqiqFhSEcDf09mKK3xKEUxE+TPz82hd9ZrF5OjFst6mWMVye10lkzmY5Hmmx5Y/PVgPx3R
fN0tTAZfIDGH/YUu758U8UWOIcMzBHF6rytqmg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Umfm0FNxPKfdryB9QccnkcrzqkPtalTpE+R0M3D9kxaXOa1YOGT+9jGc1TRZMLcN5NyGN3UIZcH4
LWFVfGg80k9RmFHBDZaHzOXaomQhoPSO++ArXvmvO5zgttfCHEl7jypYkuPgwfQMfjK7YII9Deex
KOC8JtqORVWmhq47cpQ=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cm7WeJnXtFlUdJuJH7wHYfinJTaBhpglyFWD2YwmOuS4fmVA4nXbX0IMaU1F1WGO1VK25KlFf8Nm
w8L6BJ6ZpH12xPIl3J17rMT4/3KHv9tpBWqeC080GeV5nISo8JrhOpIKa4+HBHZ6lYLce8LBAu/Z
EiBmDqw22aLsAuPAzAMh9yuHT5rpX9ykD9u0uZ5UplK05S0TsvYMUqcHNQ2hijt/lbxvUxXHTa+W
GJ5RRQAdw98wG1mc65u16hfZPsLimnw4BHwpyNGOPadShqb78rQihc+YiBTn4lgN1HhquWRGqCYZ
ZEjBmtWOJm8WJSTWtcpFEkmPlOTDmNX82e9mnw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
a1mMNsEVIHwFCxw3sHygQ6eU3z5whgDQI+YHUmPAwU6q4vqfu2NVxu0z42QL1rV1rCsm39SqZ078
EGEqt7XUt6bdvI3yu4dU8gF+jou5njJ2UU34VmbOw/MQt48Hmi+hxtH1/zSlbNe2iOksDFEFTHmW
WGHgPS2bACG/KtAZMYK3gBtbnb9dtu+p5hxiQtwMOFnv9kQGBxcMaciN0yqy2TE5fygwKcNEua29
jiGUF0qgPS1k6qN+zLrYWkaVT0amR1MFXpv0WcwL+xVkxj6bBQhe5D7t5xCIsfLR4xqa5WVpa0dN
FkxGlIoufL17G/cGRr4nV4QP0sqcDCCHYpRoIA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rPFWI49JcHqYFxRrTG2uFixmE4jeIWIero9KijBFo7+FOCC7hJeSlCuNlwb8mBsI0Up57fm7C8t9
tb1l2QCfvy82JqTvEuH49UmS+8/GEnbK1QbVHsDIiv3/8cFn+0zw/VSuVeaN8L0yzeNIo8m59iAq
AQ9wOyqKFEhKKkbn+nVg+hQW3L/P25hisjV06sqmfsA0Rx4bYhFoxEvIw3A4x9LsBIIfDpgDsPzS
NICAEhfA7fWXKK6UsOmuq1NZLTDmFe2zEHijVMovzm/qqvHfu7fCt5POlGtLOPZhXGCDZi0v1yiq
VyT7JTUW5P/rcLgzkfyKToozq36lEkXd6VSaLg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
T4EV2kKcg5a7rlvEGr4AG3uvv0JzSoc0NQb9aIeE2gsKGq0oLel4q0oZ7eO6He8noW5KEowgkY0O
xDnerk/R4qxdSePYeRRmUg3KZ7hAHVEQrHpQ2RbYwK5mUIpQLjxCWRWzBjeWOce2bh0dAMR/4OH6
t95V8b9VWpgepcUXynGvLDv31tVgr+8LtXlgWTNBiJj2mTZ3gEVxpgGRwMGsampw9yKqBKoR+/hg
++FP8JJkrOSdB2bhnNaD4fZotMLkhYDrWvQm9z6rW7fwxA2oEI+oUqi+K+82oiLzeVWy7FhVyzgS
Y273uSE53DWk35UE9A6ebcI/xUl1iGqwdeZihA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
gZRrJLrBkbil4BLf1tia07NzGL28f+Pk9zyPElbTDf8NEXCsuwTum6RjR5lvY/odzAYHlcKxpG+6
gwjafT2OV5gHqqtPXrRHcVU4p5LEzOOl5p3puqvK+1z2+YpHqxOZIIZPIH9kjtzNgcBmcU7S2sFN
zTxyAYuLL9sAN+AIQ9UrW4MXDWxUtdkwPaSyFIvuKoxOKUD5IXEY9NtBpz1zsABMKNHneOO8pAix
qg8S/uQ/XJ8Qggr+vE7HDUUMCsijNXvqbkLM3xf6dXFpOqanKxd6/GfTcob4sezm/hMOZ2xiXcfS
hsYUMRdO9H6fmhECfszoK2XMsMt6xM+vlLywWJ0I6u468qVFxROkf9vL+ZDq/tMiJOm7E1p+HDif
98f5v1OybtzlZJP9bDMwWYcsCqcDejCMQyYOgPCgg+2jTR1JezxuK7PpjyliT0rnu7FfI/0tRzbL
d5YqO79RN0byWVTTdIlTWzL/qBD8BLVqXzWs3M+up46dGPxbkzv44od4

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
A79lFm/8JnoMxv1MOWkY+AtU24uc6/CeGf6bjoYWLJXkzzHQooKleg9l+jH7oajoC3oVQh/sMXdi
3QmwZ5SKMt6sb03SC5BW7xPky8zyP6w8FRMCI2Tz1/GhozqjIbgSstUfCaemxIgj3rG7GkRYZ/2k
ualG2mpYDNyaxz1lMYaHfm7stH/IQlkCh6HHMbi7ImYJ6pILa828Ls3VREjo7dtXPS2ZDFxreSIH
2SZ3NpLJO0/umchZaUkt1xN0bsxgtGdOzSqGDpTJrU/ltmclBX199pmrXQa5p/q0FSLj2WkB043l
l3x1Rdipn49DvChkvbVzJP9aej4kwSPhvxHnHQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GFpXmWYmUY46GvuVucUW1VOu3+gGtLxYW4Ho/p4wggZ+jWrpUVhz2RSAxu+ufiLHtM9oYgKPaSYT
DOeuIJGTnxGr20Vh6Nn3cc41TyKAf0vxN2fGISEQQWrjh9OOgNcBmJfaHsSq7+5dhCaIWlGrInVr
GD5TqclLzw6cHAuPGxMi2wD4rq16RkDJnQbPf8ptaskWz81NxZfyWAL4T2E24soybpln8+vuF+72
IQYfLQh/dDDsNHKNKwTKAtGjpFS8eVSbYnS+k3Am4loN8JRflh0+c4yGUo4EkuRzUFiIBrJOKylp
qicgwQw7vdbe+yPl6moUlvA1U2CjJ87bsXk5CA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hzklq501x4qEym07A6+Vh+O6T5Q1srpTjckVi/KQ8/P6I6xpFqHBBikoKASz9mkWuvFaf6aly934
etGfnzZuPuKCoMPixevIcq9cgFblu43p0H0FR4BSbqN+A/K2utwAblPur01qwtH9nc1azxOtPedI
3KLsEBUN2ObidzkZIUbiQlQ72wru0lGZ5uN6iiNcLRnEhqjdjWiOHf5qGo+df2QyP6S5zRR7hGOd
N5h9/9towH2UQ++6hnOd4pjtl7PKHWlU92421M+LhruDkz4Bw6c7d7EVdbIcZ3ub+l/OnCyNwQsr
WUo2E+j4vd3zIVA0gzTA1oLX73BJ1oxwQdO3JA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 51568)
`pragma protect data_block
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
`pragma protect end_protected
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
