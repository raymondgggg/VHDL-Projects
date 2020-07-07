library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



ENTITY PC IS
      PORT ( PCin: in std_logic_vector(31 downto 0);
		reset, clock : IN  STD_LOGIC ;
                   PCout : OUT  STD_LOGIC_vector(31 downto 0) ) ;
END PC;

ARCHITECTURE Behavior OF PC IS
SIGNAL  Qint :  STD_LOGIC_vector(31 downto 0) ;
Signal zeros: std_logic_vector(31 downto 0):=(others=>'0');
BEGIN
     PROCESS ( Clock, Reset ) 
     BEGIN
          
               IF Reset = '1' THEN
                    Qint  <=  zeros ;
				
          ELSIF Clock'Event AND Clock = '1' THEN
          Qint  <=  PCin;
				
          END IF ; 
     END PROCESS ; 
     PCout  <=  Qint ;
END Behavior ;
