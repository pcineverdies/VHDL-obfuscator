library ieee; 
use ieee.std_logic_1164.all; 

entity ripple_carry_adder is 
    generic (
        N: integer := 16
    );
    port (	
        A:	in	std_logic_vector(N - 1 downto 0);
        B:  in	std_logic_vector(N - 1 downto 0);
        Ci:	in	std_logic;

        S:	out	std_logic_vector(N - 1 downto 0);
        Co:	out	std_logic
    );
end ripple_carry_adder; 

architecture structural of ripple_carry_adder is

    signal temporary_sum   : std_logic_vector(N - 1 downto 0);
    signal temporary_carry : std_logic_vector(N downto 0);

    component full_adder
        port ( 
            A:	in  std_logic;
            B:	in	std_logic;
            Ci:	in	std_logic;
            S:	out	std_logic;
            Co:	out	std_logic);
    end component; 

begin

    temporary_carry(0) <= Ci; -- Connection to carry in
    S <= temporary_sum;       -- Connection to sum
    Co <= temporary_carry(N); -- Connection to carry out
 
    adder_generate: for i in 0 to N - 1 generate
        full_adder_i: full_adder
            port map( A => A(i), B => B(i), Ci => temporary_carry(i),
                      S => temporary_sum(i), Co => temporary_carry(i + 1));
    end generate;

end structural;
