-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Tue Jan  7 15:51:45 2025
-- Host        : DESKTOP-5CM83PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/FPGA/fpga-pl_uart/pl_uart/pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/bd/uart_fifo_axi_hw_inst_1/ip/uart_fifo_axi_hw_inst_1_baudrate_generator_0/uart_fifo_axi_hw_inst_1_baudrate_generator_0_stub.vhdl
-- Design      : uart_fifo_axi_hw_inst_1_baudrate_generator_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity uart_fifo_axi_hw_inst_1_baudrate_generator_0 is
  Port ( 
    i_CLK : in STD_LOGIC;
    i_RESET : in STD_LOGIC;
    i_DVSR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_TICK : out STD_LOGIC
  );

end uart_fifo_axi_hw_inst_1_baudrate_generator_0;

architecture stub of uart_fifo_axi_hw_inst_1_baudrate_generator_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "i_CLK,i_RESET,i_DVSR[31:0],o_TICK";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "baudrate_generator,Vivado 2023.2";
begin
end;
