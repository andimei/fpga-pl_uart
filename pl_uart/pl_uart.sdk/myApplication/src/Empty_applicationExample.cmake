set(DDR ps7_ram_0)
set(ps7_ram_0 "0x0;0x30000")
set(ps7_ram_1 "0xffff0000;0xfe00")
set(TOTAL_MEM_CONTROLLERS "ps7_ram_0;ps7_ram_1")
set(MEMORY_SECTION "MEMORY
{
	ps7_ram_0 : ORIGIN = 0x0, LENGTH = 0x30000
	ps7_ram_1 : ORIGIN = 0xffff0000, LENGTH = 0xfe00
}")
set(STACK_SIZE 0x2000)
set(HEAP_SIZE 0x2000)
