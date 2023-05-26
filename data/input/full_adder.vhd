library ieee; 
use ieee.std_logic_1164.all; 

entity full_adder is 
    port(
        A:  in  std_logic;
        B:  in  std_logic;
        Ci: in  std_logic;

        S:  out std_logic;
        Co: out std_logic
    );
end full_adder; 

architecture behavioural of full_adder is

begin

    comb_logic: process(A, B, Ci)
    begin
        S  <= A xor B xor Ci;
        Co <= (A and B) or (B and Ci) or (A and Ci);
    end process comb_logic;
  
end behavioural;
