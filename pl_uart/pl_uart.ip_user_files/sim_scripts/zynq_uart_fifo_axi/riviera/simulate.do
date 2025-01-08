transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+zynq_uart_fifo_axi  -L xilinx_vip -L xpm -L xil_defaultlib -L fifo_generator_v13_2_9 -L util_vector_logic_v2_0_3 -L axi_infrastructure_v1_1_0 -L axi_vip_v1_1_15 -L processing_system7_vip_v1_0_17 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_14 -L generic_baseblocks_v2_1_1 -L axi_data_fifo_v2_1_28 -L axi_register_slice_v2_1_29 -L axi_protocol_converter_v2_1_29 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.zynq_uart_fifo_axi xil_defaultlib.glbl

do {zynq_uart_fifo_axi.udo}

run 1000ns

endsim

quit -force
