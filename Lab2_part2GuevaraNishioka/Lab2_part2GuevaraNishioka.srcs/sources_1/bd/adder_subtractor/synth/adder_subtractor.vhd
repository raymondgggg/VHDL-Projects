--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
--Date        : Thu Feb 20 10:33:13 2020
--Host        : RaymondGuevara-PC running 64-bit major release  (build 9200)
--Command     : generate_target adder_subtractor.bd
--Design      : adder_subtractor
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity adder_subtractor is
  port (
    A : in STD_LOGIC_VECTOR ( 3 downto 0 );
    B : in STD_LOGIC_VECTOR ( 3 downto 0 );
    sumOrSub : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of adder_subtractor : entity is "adder_subtractor,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=adder_subtractor,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=19,numReposBlks=19,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=5,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of adder_subtractor : entity is "adder_subtractor.hwdef";
end adder_subtractor;

architecture STRUCTURE of adder_subtractor is
  component adder_subtractor_FA_0_0 is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    Cin : in STD_LOGIC;
    S : out STD_LOGIC;
    Cout : out STD_LOGIC
  );
  end component adder_subtractor_FA_0_0;
  component adder_subtractor_FA_0_1 is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    Cin : in STD_LOGIC;
    S : out STD_LOGIC;
    Cout : out STD_LOGIC
  );
  end component adder_subtractor_FA_0_1;
  component adder_subtractor_FA_0_2 is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    Cin : in STD_LOGIC;
    S : out STD_LOGIC;
    Cout : out STD_LOGIC
  );
  end component adder_subtractor_FA_0_2;
  component adder_subtractor_FA_0_3 is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    Cin : in STD_LOGIC;
    S : out STD_LOGIC;
    Cout : out STD_LOGIC
  );
  end component adder_subtractor_FA_0_3;
  component adder_subtractor_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component adder_subtractor_xlslice_0_0;
  component adder_subtractor_xlslice_0_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component adder_subtractor_xlslice_0_1;
  component adder_subtractor_xlslice_1_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component adder_subtractor_xlslice_1_0;
  component adder_subtractor_xlslice_1_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component adder_subtractor_xlslice_1_1;
  component adder_subtractor_xlslice_1_2 is
  port (
    Din : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component adder_subtractor_xlslice_1_2;
  component adder_subtractor_xlslice_1_3 is
  port (
    Din : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component adder_subtractor_xlslice_1_3;
  component adder_subtractor_xlslice_1_4 is
  port (
    Din : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component adder_subtractor_xlslice_1_4;
  component adder_subtractor_xlslice_1_5 is
  port (
    Din : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component adder_subtractor_xlslice_1_5;
  component adder_subtractor_util_vector_logic_0_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component adder_subtractor_util_vector_logic_0_0;
  component adder_subtractor_util_vector_logic_0_1 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component adder_subtractor_util_vector_logic_0_1;
  component adder_subtractor_util_vector_logic_0_2 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component adder_subtractor_util_vector_logic_0_2;
  component adder_subtractor_util_vector_logic_0_3 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component adder_subtractor_util_vector_logic_0_3;
  component adder_subtractor_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component adder_subtractor_xlconstant_0_0;
  component adder_subtractor_xlconcat_0_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component adder_subtractor_xlconcat_0_0;
  component adder_subtractor_xorGate_0_0 is
  port (
    x : in STD_LOGIC;
    y : in STD_LOGIC;
    z : out STD_LOGIC
  );
  end component adder_subtractor_xorGate_0_0;
  signal A_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal B_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal FA_0_Cout : STD_LOGIC;
  signal FA_0_S : STD_LOGIC;
  signal FA_1_Cout : STD_LOGIC;
  signal FA_1_S : STD_LOGIC;
  signal FA_2_Cout : STD_LOGIC;
  signal FA_2_S : STD_LOGIC;
  signal FA_3_Cout : STD_LOGIC;
  signal FA_3_S : STD_LOGIC;
  signal util_vector_logic_0_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_vector_logic_1_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_vector_logic_2_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_vector_logic_3_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_1_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_2_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_3_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_4_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_5_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_6_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_7_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xorGate_0_z : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of A : signal is "xilinx.com:signal:data:1.0 DATA.A DATA";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of A : signal is "XIL_INTERFACENAME DATA.A, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of B : signal is "xilinx.com:signal:data:1.0 DATA.B DATA";
  attribute X_INTERFACE_PARAMETER of B : signal is "XIL_INTERFACENAME DATA.B, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of sumOrSub : signal is "xilinx.com:signal:data:1.0 DATA.SUMORSUB DATA";
  attribute X_INTERFACE_PARAMETER of sumOrSub : signal is "XIL_INTERFACENAME DATA.SUMORSUB, LAYERED_METADATA undef, PortWidth 5";
begin
  A_1(3 downto 0) <= A(3 downto 0);
  B_1(3 downto 0) <= B(3 downto 0);
  sumOrSub(4 downto 0) <= xlconcat_0_dout(4 downto 0);
FA_0: component adder_subtractor_FA_0_0
     port map (
      A => xlslice_0_Dout(0),
      B => util_vector_logic_0_Res(0),
      Cin => xlconstant_0_dout(0),
      Cout => FA_0_Cout,
      S => FA_0_S
    );
FA_1: component adder_subtractor_FA_0_1
     port map (
      A => xlslice_1_Dout(0),
      B => util_vector_logic_1_Res(0),
      Cin => FA_0_Cout,
      Cout => FA_1_Cout,
      S => FA_1_S
    );
FA_2: component adder_subtractor_FA_0_2
     port map (
      A => xlslice_2_Dout(0),
      B => util_vector_logic_2_Res(0),
      Cin => FA_1_Cout,
      Cout => FA_2_Cout,
      S => FA_2_S
    );
FA_3: component adder_subtractor_FA_0_3
     port map (
      A => xlslice_3_Dout(0),
      B => util_vector_logic_3_Res(0),
      Cin => FA_2_Cout,
      Cout => FA_3_Cout,
      S => FA_3_S
    );
util_vector_logic_0: component adder_subtractor_util_vector_logic_0_0
     port map (
      Op1(0) => xlconstant_0_dout(0),
      Op2(0) => xlslice_4_Dout(0),
      Res(0) => util_vector_logic_0_Res(0)
    );
util_vector_logic_1: component adder_subtractor_util_vector_logic_0_1
     port map (
      Op1(0) => xlconstant_0_dout(0),
      Op2(0) => xlslice_5_Dout(0),
      Res(0) => util_vector_logic_1_Res(0)
    );
util_vector_logic_2: component adder_subtractor_util_vector_logic_0_2
     port map (
      Op1(0) => xlconstant_0_dout(0),
      Op2(0) => xlslice_6_Dout(0),
      Res(0) => util_vector_logic_2_Res(0)
    );
util_vector_logic_3: component adder_subtractor_util_vector_logic_0_3
     port map (
      Op1(0) => xlconstant_0_dout(0),
      Op2(0) => xlslice_7_Dout(0),
      Res(0) => util_vector_logic_3_Res(0)
    );
xlconcat_0: component adder_subtractor_xlconcat_0_0
     port map (
      In0(0) => FA_0_S,
      In1(0) => FA_1_S,
      In2(0) => FA_2_S,
      In3(0) => FA_3_S,
      In4(0) => xorGate_0_z,
      dout(4 downto 0) => xlconcat_0_dout(4 downto 0)
    );
xlconstant_0: component adder_subtractor_xlconstant_0_0
     port map (
      dout(0) => xlconstant_0_dout(0)
    );
xlslice_0: component adder_subtractor_xlslice_0_0
     port map (
      Din(3 downto 0) => A_1(3 downto 0),
      Dout(0) => xlslice_0_Dout(0)
    );
xlslice_1: component adder_subtractor_xlslice_0_1
     port map (
      Din(3 downto 0) => A_1(3 downto 0),
      Dout(0) => xlslice_1_Dout(0)
    );
xlslice_2: component adder_subtractor_xlslice_1_0
     port map (
      Din(3 downto 0) => A_1(3 downto 0),
      Dout(0) => xlslice_2_Dout(0)
    );
xlslice_3: component adder_subtractor_xlslice_1_1
     port map (
      Din(3 downto 0) => A_1(3 downto 0),
      Dout(0) => xlslice_3_Dout(0)
    );
xlslice_4: component adder_subtractor_xlslice_1_2
     port map (
      Din(3 downto 0) => B_1(3 downto 0),
      Dout(0) => xlslice_4_Dout(0)
    );
xlslice_5: component adder_subtractor_xlslice_1_3
     port map (
      Din(3 downto 0) => B_1(3 downto 0),
      Dout(0) => xlslice_5_Dout(0)
    );
xlslice_6: component adder_subtractor_xlslice_1_4
     port map (
      Din(3 downto 0) => B_1(3 downto 0),
      Dout(0) => xlslice_6_Dout(0)
    );
xlslice_7: component adder_subtractor_xlslice_1_5
     port map (
      Din(3 downto 0) => B_1(3 downto 0),
      Dout(0) => xlslice_7_Dout(0)
    );
xorGate_0: component adder_subtractor_xorGate_0_0
     port map (
      x => xlconstant_0_dout(0),
      y => FA_3_Cout,
      z => xorGate_0_z
    );
end STRUCTURE;
