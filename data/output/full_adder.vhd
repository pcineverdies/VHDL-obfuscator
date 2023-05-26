library ieee; 
use ieee.std_logic_1164.all; 

entity etJzZdwThrqkyJsTdFrqEvWZKSqmOy is 
    port(
        TVtGGDCsMNKyggnVxkYRNpSBNdAJYd:  in  std_logic;
        TyHNIowRBRqYjvPsspDEDCAPQepPbF:  in  std_logic;
        WODcpGQslmJMMMzPrgYYQpmaoMJoLy: in  std_logic;

        XvfEJqErJUQlxuqTNvbNUUPqwFSXqs:  out std_logic;
        cavyAzdrtXTEFGLUPLFuNHQCPNeXIQ: out std_logic
    );
end etJzZdwThrqkyJsTdFrqEvWZKSqmOy; 

architecture DIkgYCRfsQCVrMjEqXBrlYsjTmwZIS of etJzZdwThrqkyJsTdFrqEvWZKSqmOy is

begin

    wnaFArneyvQxbJybWzsIHpwJnhGuhm: process(TVtGGDCsMNKyggnVxkYRNpSBNdAJYd, TyHNIowRBRqYjvPsspDEDCAPQepPbF, WODcpGQslmJMMMzPrgYYQpmaoMJoLy)
    begin
        XvfEJqErJUQlxuqTNvbNUUPqwFSXqs  <= TVtGGDCsMNKyggnVxkYRNpSBNdAJYd xor TyHNIowRBRqYjvPsspDEDCAPQepPbF xor WODcpGQslmJMMMzPrgYYQpmaoMJoLy;
        cavyAzdrtXTEFGLUPLFuNHQCPNeXIQ <= (TVtGGDCsMNKyggnVxkYRNpSBNdAJYd and TyHNIowRBRqYjvPsspDEDCAPQepPbF) or (TyHNIowRBRqYjvPsspDEDCAPQepPbF and WODcpGQslmJMMMzPrgYYQpmaoMJoLy) or (TVtGGDCsMNKyggnVxkYRNpSBNdAJYd and WODcpGQslmJMMMzPrgYYQpmaoMJoLy);
    end process wnaFArneyvQxbJybWzsIHpwJnhGuhm;
  
end DIkgYCRfsQCVrMjEqXBrlYsjTmwZIS;
