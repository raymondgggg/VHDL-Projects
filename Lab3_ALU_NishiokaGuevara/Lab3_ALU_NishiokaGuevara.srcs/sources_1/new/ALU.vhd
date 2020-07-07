library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;


entity ALU is
   port (    A, B   : in std_logic_vector(31 downto 0);
       Cin   : in std_logic;
       ctrl  : in std_logic_vector(3 downto 0);
       aluOut   : out std_logic_vector(31 downto 0);
       zero   : out std_logic;
       overflow: out std_logic;
       Cout: out std_logic
   );
end ALU;

architecture behavior of ALU is

signal output : std_logic_vector(32 downto 0);

signal A1, B1 : std_logic_vector(32 downto 0);

begin

   A1 <= '0' & A;
   B1 <= '0' & B;

   process (A1, B1, Cin, ctrl)

   begin

   case (ctrl) is
     
       when "0000" => output <= A1 AND B1;
       when "0001" => output <= A1 OR B1;
       when "0011" => output <= A1 XOR B1;
       when "0010" => output <= A1 + B1 + Cin;
       when "0110" => output <= A1 - B1 - Cin;
       when "1100" => output <= A1 NOR B1;
       when others => null;

   end case;

   end process;

   aluOut <= output (31 downto 0);
   Zero <= '1' when (output = 0) else '0';
   Cout <= output(32);
   Overflow <= '1' when ((A(31) = '1' and B(31) = '1' and output(31) = '0') or (A(31) = '0' and B(31) = '0' and output(31) = '1')) else '0';


end behavior;


