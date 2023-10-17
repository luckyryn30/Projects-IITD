library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity H1 is
Port(A,B,C,D :in STD_LOGIC;
o1,o2,o3,o4,o5,o6,o7,a0,a1,a2,a3 : out STD_LOGIC);
end H1;

architecture Behavioral of H1 is

begin
 o1 <= NOT ((NOT A AND C) OR (B AND C) OR (NOT A AND B AND D) OR (NOT B AND NOT D) OR (A AND NOT D) OR (A AND NOT B AND NOT C)); 
 o2 <= NOT ((NOT A AND NOT B) OR (NOT A AND NOT C AND NOT D) OR (A AND NOT C AND D) OR (A AND C AND NOT D) OR (NOT B AND NOT C) OR (NOT A AND C AND D)); 
 o3 <= NOT ((A AND NOT B) OR (NOT C AND D) OR (NOT A AND B) OR (NOT A AND NOT C) OR (NOT A AND D));
 o4 <= NOT ((C AND NOT D) OR (NOT B AND C) OR (B AND NOT C AND D) OR (A AND NOT D) OR (NOT B AND NOT D));
 o5 <= NOT ((C AND NOT D) OR (A AND B) OR (A AND C) OR (NOT B AND NOT D));
 o6 <= NOT ((NOT C AND NOT D) OR (B AND NOT D) OR (A AND NOT B AND D) OR (A AND C AND D) OR (NOT A AND B AND NOT C));
 o7 <= NOT ((A AND NOT B) OR (C AND NOT D) OR (A AND D) OR (NOT A AND B AND NOT C) OR (NOT B AND C));
 a0 <= A AND NOT A;
 a1 <= A OR NOT A;
 a2 <= A OR NOT A;
 a3 <= A OR NOT A;

end Behavioral;