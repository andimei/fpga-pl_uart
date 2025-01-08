// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon Jan  6 16:18:42 2025
// Host        : DESKTOP-5CM83PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top uart_fifo_axi_hw_inst_1_fifo_tx_0 -prefix
//               uart_fifo_axi_hw_inst_1_fifo_tx_0_ uart_fifo_axi_hw_inst_1_fifo_rx_0_sim_netlist.v
// Design      : uart_fifo_axi_hw_inst_1_fifo_rx_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "uart_fifo_axi_hw_inst_1_fifo_rx_0,fifo_generator_v13_2_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_9,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module uart_fifo_axi_hw_inst_1_fifo_tx_0
   (clk,
    rst,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 core_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME core_clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN zynq_uart_fifo_axi_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
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
  uart_fifo_axi_hw_inst_1_fifo_tx_0_fifo_generator_v13_2_9 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 51728)
`pragma protect data_block
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
atS5Jz/q/xLYrAxfxaDIxFFnzUFL4IfFyIF8r7w=
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
