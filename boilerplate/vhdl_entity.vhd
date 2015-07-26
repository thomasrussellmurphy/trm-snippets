library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_arith.all;
  use ieee.std_logic_unsigned.all;

entity vhdl_entity is
  port (
    -- Clock input
    CLK : in std_logic;
    -- Clock enable, synchronous to CLK
    c_en : in boolean;
    last_signal : out std_logic
  );
end vhdl_entity;

architecture RTL of vhdl_entity is
  -- internal signals
  signal internal_signal : std_logic := '0';
  variable internal_variable : std_logic := '0';
begin
  -- logic and processes
  registers: process (CLK)
  begin
    if rising_edge(CLK) then
      -- Set registers
    end if;
  end process registers;
end RTL;
