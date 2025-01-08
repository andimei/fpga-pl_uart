//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Tue Jan  7 16:28:46 2025
//Host        : DESKTOP-5CM83PC running 64-bit major release  (build 9200)
//Command     : generate_target uart_fifo_axi_hw_inst_1.bd
//Design      : uart_fifo_axi_hw_inst_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "uart_fifo_axi_hw_inst_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=uart_fifo_axi_hw_inst_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=7,numReposBlks=7,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=4,numPkgbdBlks=0,bdsource=D_/FPGA/fpga-pl_uart/pl_uart/pl_uart.srcs/sources_1/bd/uart_fifo_axi_hw/uart_fifo_axi_hw.bd,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "uart_fifo_axi_hw_inst_1.hwdef" *) 
module uart_fifo_axi_hw_inst_1
   (S_AXI_ACLK,
    S_AXI_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    i_RX,
    o_TX);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.S_AXI_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, CLK_DOMAIN zynq_uart_fifo_axi_processing_system7_0_0_FCLK_CLK0, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input S_AXI_ACLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.S_AXI_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.S_AXI_ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input S_AXI_ARESETN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN zynq_uart_fifo_axi_processing_system7_0_0_FCLK_CLK0, DATA_WIDTH 32, FREQ_HZ 50000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 8, NUM_READ_THREADS 4, NUM_WRITE_OUTSTANDING 8, NUM_WRITE_THREADS 4, PHASE 0.0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [31:0]S_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output S_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input S_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [31:0]S_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output S_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input S_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input S_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]S_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output S_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]S_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input S_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]S_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output S_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]S_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output S_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]S_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input S_AXI_wvalid;
  input i_RX;
  output o_TX;

  wire [31:0]S_AXI_0_1_ARADDR;
  wire S_AXI_0_1_ARREADY;
  wire S_AXI_0_1_ARVALID;
  wire [31:0]S_AXI_0_1_AWADDR;
  wire S_AXI_0_1_AWREADY;
  wire S_AXI_0_1_AWVALID;
  wire S_AXI_0_1_BREADY;
  wire [1:0]S_AXI_0_1_BRESP;
  wire S_AXI_0_1_BVALID;
  wire [31:0]S_AXI_0_1_RDATA;
  wire S_AXI_0_1_RREADY;
  wire [1:0]S_AXI_0_1_RRESP;
  wire S_AXI_0_1_RVALID;
  wire [31:0]S_AXI_0_1_WDATA;
  wire S_AXI_0_1_WREADY;
  wire [3:0]S_AXI_0_1_WSTRB;
  wire S_AXI_0_1_WVALID;
  wire S_AXI_ACLK_0_1;
  wire S_AXI_ARESETN_1_1;
  wire [31:0]axi_lite_slave_0_o_DVSR;
  wire axi_lite_slave_o_RX_RDEN;
  wire [7:0]axi_lite_slave_o_TX_DATA;
  wire axi_lite_slave_o_TX_WREN;
  wire baudrate_generator_0_o_TICK;
  wire [7:0]fifo_rx_dout;
  wire fifo_rx_empty;
  wire [7:0]fifo_tx_dout;
  wire fifo_tx_empty;
  wire fifo_tx_full;
  wire i_RX_0_1;
  wire [7:0]uart_rx_o_DOUT;
  wire uart_rx_o_RX_DONE_TICK;
  wire uart_tx_1_o_TX;
  wire uart_tx_o_TX_RDY_TICK;
  wire [0:0]util_vector_logic_0_Res;

  assign S_AXI_0_1_ARADDR = S_AXI_araddr[31:0];
  assign S_AXI_0_1_ARVALID = S_AXI_arvalid;
  assign S_AXI_0_1_AWADDR = S_AXI_awaddr[31:0];
  assign S_AXI_0_1_AWVALID = S_AXI_awvalid;
  assign S_AXI_0_1_BREADY = S_AXI_bready;
  assign S_AXI_0_1_RREADY = S_AXI_rready;
  assign S_AXI_0_1_WDATA = S_AXI_wdata[31:0];
  assign S_AXI_0_1_WSTRB = S_AXI_wstrb[3:0];
  assign S_AXI_0_1_WVALID = S_AXI_wvalid;
  assign S_AXI_ACLK_0_1 = S_AXI_ACLK;
  assign S_AXI_ARESETN_1_1 = S_AXI_ARESETN;
  assign S_AXI_arready = S_AXI_0_1_ARREADY;
  assign S_AXI_awready = S_AXI_0_1_AWREADY;
  assign S_AXI_bresp[1:0] = S_AXI_0_1_BRESP;
  assign S_AXI_bvalid = S_AXI_0_1_BVALID;
  assign S_AXI_rdata[31:0] = S_AXI_0_1_RDATA;
  assign S_AXI_rresp[1:0] = S_AXI_0_1_RRESP;
  assign S_AXI_rvalid = S_AXI_0_1_RVALID;
  assign S_AXI_wready = S_AXI_0_1_WREADY;
  assign i_RX_0_1 = i_RX;
  assign o_TX = uart_tx_1_o_TX;
  uart_fifo_axi_hw_inst_1_axi_lite_slave_0 axi_lite_slave
       (.S_AXI_ACLK(S_AXI_ACLK_0_1),
        .S_AXI_ARADDR(S_AXI_0_1_ARADDR[3:0]),
        .S_AXI_ARESETN(S_AXI_ARESETN_1_1),
        .S_AXI_ARREADY(S_AXI_0_1_ARREADY),
        .S_AXI_ARVALID(S_AXI_0_1_ARVALID),
        .S_AXI_AWADDR(S_AXI_0_1_AWADDR[3:0]),
        .S_AXI_AWREADY(S_AXI_0_1_AWREADY),
        .S_AXI_AWVALID(S_AXI_0_1_AWVALID),
        .S_AXI_BREADY(S_AXI_0_1_BREADY),
        .S_AXI_BRESP(S_AXI_0_1_BRESP),
        .S_AXI_BVALID(S_AXI_0_1_BVALID),
        .S_AXI_RDATA(S_AXI_0_1_RDATA),
        .S_AXI_RREADY(S_AXI_0_1_RREADY),
        .S_AXI_RRESP(S_AXI_0_1_RRESP),
        .S_AXI_RVALID(S_AXI_0_1_RVALID),
        .S_AXI_WDATA(S_AXI_0_1_WDATA),
        .S_AXI_WREADY(S_AXI_0_1_WREADY),
        .S_AXI_WSTRB(S_AXI_0_1_WSTRB),
        .S_AXI_WVALID(S_AXI_0_1_WVALID),
        .i_RX_DATA(fifo_rx_dout),
        .i_RX_EMPTY(fifo_rx_empty),
        .i_TX_FULL(fifo_tx_full),
        .o_DVSR(axi_lite_slave_0_o_DVSR),
        .o_RX_RDEN(axi_lite_slave_o_RX_RDEN),
        .o_TX_DATA(axi_lite_slave_o_TX_DATA),
        .o_TX_WREN(axi_lite_slave_o_TX_WREN));
  uart_fifo_axi_hw_inst_1_baudrate_generator_0 baudrate_generator
       (.i_CLK(S_AXI_ACLK_0_1),
        .i_DVSR(axi_lite_slave_0_o_DVSR),
        .i_RESET(util_vector_logic_0_Res),
        .o_TICK(baudrate_generator_0_o_TICK));
  uart_fifo_axi_hw_inst_1_fifo_rx_0 fifo_rx
       (.clk(S_AXI_ACLK_0_1),
        .din(uart_rx_o_DOUT),
        .dout(fifo_rx_dout),
        .empty(fifo_rx_empty),
        .rd_en(axi_lite_slave_o_RX_RDEN),
        .rst(util_vector_logic_0_Res),
        .wr_en(uart_rx_o_RX_DONE_TICK));
  uart_fifo_axi_hw_inst_1_fifo_tx_0 fifo_tx
       (.clk(S_AXI_ACLK_0_1),
        .din(axi_lite_slave_o_TX_DATA),
        .dout(fifo_tx_dout),
        .empty(fifo_tx_empty),
        .full(fifo_tx_full),
        .rd_en(uart_tx_o_TX_RDY_TICK),
        .rst(util_vector_logic_0_Res),
        .wr_en(axi_lite_slave_o_TX_WREN));
  uart_fifo_axi_hw_inst_1_not_rst_0 not_rst
       (.Op1(S_AXI_ARESETN_1_1),
        .Res(util_vector_logic_0_Res));
  uart_fifo_axi_hw_inst_1_uart_rx_0 uart_rx
       (.i_CLK(S_AXI_ACLK_0_1),
        .i_RESET(util_vector_logic_0_Res),
        .i_RX(i_RX_0_1),
        .i_S_TICK(baudrate_generator_0_o_TICK),
        .o_DOUT(uart_rx_o_DOUT),
        .o_RX_DONE_TICK(uart_rx_o_RX_DONE_TICK));
  uart_fifo_axi_hw_inst_1_uart_tx_0 uart_tx
       (.i_CLK(S_AXI_ACLK_0_1),
        .i_DIN(fifo_tx_dout),
        .i_RESET(util_vector_logic_0_Res),
        .i_S_TICK(baudrate_generator_0_o_TICK),
        .i_TX_STARTN(fifo_tx_empty),
        .o_TX(uart_tx_1_o_TX),
        .o_TX_RDY_TICK(uart_tx_o_TX_RDY_TICK));
endmodule
