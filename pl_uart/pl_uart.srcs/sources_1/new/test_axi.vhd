----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/05/2022 04:59:26 PM
-- Design Name: 
-- Module Name: fifo_to_axis - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

Library xpm;
use xpm.vcomponents.all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity fifo_to_axis is
  Port ( 

    pi_data           : in   STD_LOGIC_VECTOR ( 32 downto 0 );
    pi_valid          : in   STD_LOGIC;
    pi_ready          : out  STD_LOGIC;
--    pi_last          : in   STD_LOGIC;
    po_last          : out   STD_LOGIC;
                
--    dl_i              : in std_logic_vector(9 downto 0);    
--    n_block_i         : in std_logic_vector(9 downto 0);    

    s_axis_clk        : in    STD_LOGIC;
    s_axis_rstn       : in    STD_LOGIC;
    s_axis_tdata   : out   STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tlasto   : out   STD_LOGIC;
    s_axis_tready  : in    STD_LOGIC;
    s_axis_tuser   : out   STD_LOGIC;
    s_axis_tvalid  : out   STD_LOGIC
  );
end fifo_to_axis;

architecture Behavioral of fifo_to_axis is

    signal po_cnt   : unsigned(9 downto 0);
    signal pi_last    : std_logic;
begin

    s_axis_tdata    <= pi_data(31 downto 0);--X"ABCD_1234";-- when pi_last='0' else (others=>'0');--pi_data(31 downto 0);  
    s_axis_tlast    <= pi_last;
    pi_ready        <= s_axis_tready;  --pi_valid and 
    s_axis_tuser    <= '0';
    s_axis_tvalid   <= pi_valid;


    pi_last    <= pi_data(32) and pi_valid;
--   pi_last    <= '1' when pi_data = X"0000_0000" and pi_valid = '1' else '0';
    po_last <= pi_last;
    
----output counter      
--    process(sys_clk,sys_rstn)
--    begin
--        if sys_rstn='0' then
--            po_cnt          <= (others=>'0');
--        elsif sys_clk'Event and sys_clk='1' then
--                if pi_valid ='1' then                    
--                    if pi_last ='0' then
--                      po_cnt          <= po_cnt + 1;
--                    else 
--                      po_cnt <= (others=>'0');
--                    end if;    
--                end if;             
--        end if;
--    end process;


end Behavioral;
