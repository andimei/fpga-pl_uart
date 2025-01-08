transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+uart_fifo_axi  -L xilinx_vip -L xpm -L xil_defaultlib -L fifo_generator_v13_2_9 -L util_vector_logic_v2_0_3 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.uart_fifo_axi xil_defaultlib.glbl

do {uart_fifo_axi.udo}

run 1000ns

endsim

quit -force
