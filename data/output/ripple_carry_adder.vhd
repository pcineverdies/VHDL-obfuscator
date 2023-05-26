library ieee; 
use ieee.std_logic_1164.all; 

entity IYWzTWYbhfpNPXsqZpiZRGRdwHvvuO is 
    generic (
        JGmEUiqRQeNgWlIqyEyQBLjgclqIbh: integer := 16
    );
    port (	
        TVtGGDCsMNKyggnVxkYRNpSBNdAJYd:	in	std_logic_vector(JGmEUiqRQeNgWlIqyEyQBLjgclqIbh - 1 downto 0);
        TyHNIowRBRqYjvPsspDEDCAPQepPbF:  in	std_logic_vector(JGmEUiqRQeNgWlIqyEyQBLjgclqIbh - 1 downto 0);
        WODcpGQslmJMMMzPrgYYQpmaoMJoLy:	in	std_logic;

        XvfEJqErJUQlxuqTNvbNUUPqwFSXqs:	out	std_logic_vector(JGmEUiqRQeNgWlIqyEyQBLjgclqIbh - 1 downto 0);
        cavyAzdrtXTEFGLUPLFuNHQCPNeXIQ:	out	std_logic
    );
end IYWzTWYbhfpNPXsqZpiZRGRdwHvvuO; 

architecture WpCJAMngkESLRLgdbQgDQRxfmzrSAy of IYWzTWYbhfpNPXsqZpiZRGRdwHvvuO is

    signal temporary_sum   : std_logic_vector(JGmEUiqRQeNgWlIqyEyQBLjgclqIbh - 1 downto 0);
    signal temporary_carry : std_logic_vector(JGmEUiqRQeNgWlIqyEyQBLjgclqIbh downto 0);

    component etJzZdwThrqkyJsTdFrqEvWZKSqmOy
        port ( 
            TVtGGDCsMNKyggnVxkYRNpSBNdAJYd:	in  std_logic;
            TyHNIowRBRqYjvPsspDEDCAPQepPbF:	in	std_logic;
            WODcpGQslmJMMMzPrgYYQpmaoMJoLy:	in	std_logic;
            XvfEJqErJUQlxuqTNvbNUUPqwFSXqs:	out	std_logic;
            cavyAzdrtXTEFGLUPLFuNHQCPNeXIQ:	out	std_logic);
    end component; 

begin

    temporary_carry(0) <= WODcpGQslmJMMMzPrgYYQpmaoMJoLy; 
    XvfEJqErJUQlxuqTNvbNUUPqwFSXqs <= temporary_sum;       
    cavyAzdrtXTEFGLUPLFuNHQCPNeXIQ <= temporary_carry(JGmEUiqRQeNgWlIqyEyQBLjgclqIbh); 
 
    xFDHDxBFuaSwGKEDNdynebKHJVOQzk: for jOTJHBwgfLUhbGIyQNzIVtTgCOgLeG in 0 to JGmEUiqRQeNgWlIqyEyQBLjgclqIbh - 1 generate
        YlKZUrwcvxiLVCZOLjbTcTUUhKLXKF: etJzZdwThrqkyJsTdFrqEvWZKSqmOy
            port map( TVtGGDCsMNKyggnVxkYRNpSBNdAJYd => TVtGGDCsMNKyggnVxkYRNpSBNdAJYd(jOTJHBwgfLUhbGIyQNzIVtTgCOgLeG), TyHNIowRBRqYjvPsspDEDCAPQepPbF => TyHNIowRBRqYjvPsspDEDCAPQepPbF(jOTJHBwgfLUhbGIyQNzIVtTgCOgLeG), WODcpGQslmJMMMzPrgYYQpmaoMJoLy => temporary_carry(jOTJHBwgfLUhbGIyQNzIVtTgCOgLeG),
                      XvfEJqErJUQlxuqTNvbNUUPqwFSXqs => temporary_sum(jOTJHBwgfLUhbGIyQNzIVtTgCOgLeG), cavyAzdrtXTEFGLUPLFuNHQCPNeXIQ => temporary_carry(jOTJHBwgfLUhbGIyQNzIVtTgCOgLeG + 1));
    end generate;

end WpCJAMngkESLRLgdbQgDQRxfmzrSAy;
