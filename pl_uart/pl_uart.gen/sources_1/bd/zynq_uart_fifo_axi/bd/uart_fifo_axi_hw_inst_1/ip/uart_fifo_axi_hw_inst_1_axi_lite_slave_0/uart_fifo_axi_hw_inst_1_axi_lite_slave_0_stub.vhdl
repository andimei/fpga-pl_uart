-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Tue Jan  7 15:51:45 2025
-- Host        : DESKTOP-5CM83PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/FPGA/fpga-pl_uart/pl_uart/pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/bd/uart_fifo_axi_hw_inst_1/ip/uart_fifo_axi_hw_inst_1_axi_lite_slave_0/uart_fifo_axi_hw_inst_1_axi_lite_slave_0_stub.vhdl
-- Design      : uart_fifo_axi_hw_inst_1_axi_lite_slave_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity uart_fifo_axi_hw_inst_1_axi_lite_slave_0 is
  Port ( 
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    o_DVSR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    i_RX_DATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_RX_RDEN : out STD_LOGIC;
    i_RX_EMPTY : in STD_LOGIC;
    o_TX_DATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_TX_WREN : out STD_LOGIC;
    i_TX_FULL : in STD_LOGIC
  );

end uart_fifo_axi_hw_inst_1_axi_lite_slave_0;

architecture stub of uart_fifo_axi_hw_inst_1_axi_lite_slave_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "S_AXI_ACLK,S_AXI_ARESETN,S_AXI_AWADDR[3:0],S_AXI_AWVALID,S_AXI_AWREADY,S_AXI_WDATA[31:0],S_AXI_WSTRB[3:0],S_AXI_WVALID,S_AXI_WREADY,S_AXI_BRESP[1:0],S_AXI_BVALID,S_AXI_BREADY,S_AXI_ARADDR[3:0],S_AXI_ARVALID,S_AXI_ARREADY,S_AXI_RDATA[31:0],S_AXI_RRESP[1:0],S_AXI_RVALID,S_AXI_RREADY,o_DVSR[31:0],i_RX_DATA[7:0],o_RX_RDEN,i_RX_EMPTY,o_TX_DATA[7:0],o_TX_WREN,i_TX_FULL";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "axi_lite_slave,Vivado 2023.2";
begin
end;
