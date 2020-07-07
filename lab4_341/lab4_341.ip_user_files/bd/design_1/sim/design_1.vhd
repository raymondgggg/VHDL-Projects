--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
--Date        : Tue Apr 28 21:33:41 2020
--Host        : RaymondGuevara-PC running 64-bit major release  (build 9200)
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    alutOut : out STD_LOGIC_VECTOR ( 31 downto 0 );
    cin : in STD_LOGIC;
    clock : in STD_LOGIC;
    cout : out STD_LOGIC;
    overflow : out STD_LOGIC;
    reset : in STD_LOGIC;
    zero : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=12,numReposBlks=12,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=7,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=1,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_instmem_0_0 is
  port (
    read_inst : in STD_LOGIC_VECTOR ( 31 downto 0 );
    inst_out : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_1_instmem_0_0;
  component design_1_programCounterADD_0_0 is
  port (
    programCounterIn : in STD_LOGIC_VECTOR ( 31 downto 0 );
    programCounterOut : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_1_programCounterADD_0_0;
  component design_1_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  end component design_1_xlslice_0_0;
  component design_1_xlslice_0_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component design_1_xlslice_0_1;
  component design_1_xlslice_0_2 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component design_1_xlslice_0_2;
  component design_1_xlslice_0_3 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component design_1_xlslice_0_3;
  component design_1_xlslice_0_4 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  end component design_1_xlslice_0_4;
  component design_1_regfile_0_0 is
  port (
    clock : in STD_LOGIC;
    RegWrite : in STD_LOGIC;
    read_reg1 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    read_reg2 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    write_reg : in STD_LOGIC_VECTOR ( 4 downto 0 );
    write_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    read_data1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    read_data2 : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_1_regfile_0_0;
  component design_1_alu_control_0_0 is
  port (
    funct : in STD_LOGIC_VECTOR ( 5 downto 0 );
    operation : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component design_1_alu_control_0_0;
  component design_1_ALU_0_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ALUCntl : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Carryin : in STD_LOGIC;
    ALUOut : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Zero : out STD_LOGIC;
    Carryout : out STD_LOGIC;
    Overflow : out STD_LOGIC
  );
  end component design_1_ALU_0_0;
  component design_1_PC_0_0 is
  port (
    PCin : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reset : in STD_LOGIC;
    clock : in STD_LOGIC;
    PCout : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_1_PC_0_0;
  component design_1_controlUnit_0_0 is
  port (
    opcode : in STD_LOGIC_VECTOR ( 5 downto 0 );
    regWrite : out STD_LOGIC
  );
  end component design_1_controlUnit_0_0;
  signal ALU_0_ALUOut : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ALU_0_Carryout : STD_LOGIC;
  signal ALU_0_Overflow : STD_LOGIC;
  signal ALU_0_Zero : STD_LOGIC;
  signal alu_control_0_operation : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal cin_1 : STD_LOGIC;
  signal clock_1 : STD_LOGIC;
  signal controlUnit_0_regWrite : STD_LOGIC;
  signal instmem_0_inst_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal programCounterADD_0_programCounterOut : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal programCounter_0_Dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal regfile_0_read_data1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal regfile_0_read_data2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal reset_1 : STD_LOGIC;
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal xlslice_1_Dout : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal xlslice_2_Dout : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal xlslice_3_Dout : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal xlslice_4_Dout : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of cin : signal is "xilinx.com:signal:data:1.0 DATA.CIN DATA";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of cin : signal is "XIL_INTERFACENAME DATA.CIN, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of clock : signal is "xilinx.com:signal:clock:1.0 CLK.CLOCK CLK";
  attribute X_INTERFACE_PARAMETER of clock : signal is "XIL_INTERFACENAME CLK.CLOCK, ASSOCIATED_RESET reset, CLK_DOMAIN design_1_clock, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of cout : signal is "xilinx.com:signal:data:1.0 DATA.COUT DATA";
  attribute X_INTERFACE_PARAMETER of cout : signal is "XIL_INTERFACENAME DATA.COUT, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of overflow : signal is "xilinx.com:signal:data:1.0 DATA.OVERFLOW DATA";
  attribute X_INTERFACE_PARAMETER of overflow : signal is "XIL_INTERFACENAME DATA.OVERFLOW, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 RST.RESET RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_HIGH";
  attribute X_INTERFACE_INFO of zero : signal is "xilinx.com:signal:data:1.0 DATA.ZERO DATA";
  attribute X_INTERFACE_PARAMETER of zero : signal is "XIL_INTERFACENAME DATA.ZERO, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of alutOut : signal is "xilinx.com:signal:data:1.0 DATA.ALUTOUT DATA";
  attribute X_INTERFACE_PARAMETER of alutOut : signal is "XIL_INTERFACENAME DATA.ALUTOUT, LAYERED_METADATA undef";
begin
  alutOut(31 downto 0) <= ALU_0_ALUOut(31 downto 0);
  cin_1 <= cin;
  clock_1 <= clock;
  cout <= ALU_0_Carryout;
  overflow <= ALU_0_Overflow;
  reset_1 <= reset;
  zero <= ALU_0_Zero;
ALU_0: component design_1_ALU_0_0
     port map (
      A(31 downto 0) => regfile_0_read_data1(31 downto 0),
      ALUCntl(3 downto 0) => alu_control_0_operation(3 downto 0),
      ALUOut(31 downto 0) => ALU_0_ALUOut(31 downto 0),
      B(31 downto 0) => regfile_0_read_data2(31 downto 0),
      Carryin => cin_1,
      Carryout => ALU_0_Carryout,
      Overflow => ALU_0_Overflow,
      Zero => ALU_0_Zero
    );
PC_0: component design_1_PC_0_0
     port map (
      PCin(31 downto 0) => programCounterADD_0_programCounterOut(31 downto 0),
      PCout(31 downto 0) => programCounter_0_Dout(31 downto 0),
      clock => clock_1,
      reset => reset_1
    );
alu_control_0: component design_1_alu_control_0_0
     port map (
      funct(5 downto 0) => xlslice_4_Dout(5 downto 0),
      operation(3 downto 0) => alu_control_0_operation(3 downto 0)
    );
controlUnit_0: component design_1_controlUnit_0_0
     port map (
      opcode(5 downto 0) => xlslice_0_Dout(5 downto 0),
      regWrite => controlUnit_0_regWrite
    );
instmem_0: component design_1_instmem_0_0
     port map (
      inst_out(31 downto 0) => instmem_0_inst_out(31 downto 0),
      read_inst(31 downto 0) => programCounter_0_Dout(31 downto 0)
    );
programCounterADD_0: component design_1_programCounterADD_0_0
     port map (
      programCounterIn(31 downto 0) => programCounter_0_Dout(31 downto 0),
      programCounterOut(31 downto 0) => programCounterADD_0_programCounterOut(31 downto 0)
    );
regfile_0: component design_1_regfile_0_0
     port map (
      RegWrite => controlUnit_0_regWrite,
      clock => clock_1,
      read_data1(31 downto 0) => regfile_0_read_data1(31 downto 0),
      read_data2(31 downto 0) => regfile_0_read_data2(31 downto 0),
      read_reg1(4 downto 0) => xlslice_1_Dout(4 downto 0),
      read_reg2(4 downto 0) => xlslice_2_Dout(4 downto 0),
      write_data(31 downto 0) => ALU_0_ALUOut(31 downto 0),
      write_reg(4 downto 0) => xlslice_3_Dout(4 downto 0)
    );
xlslice_0: component design_1_xlslice_0_0
     port map (
      Din(31 downto 0) => instmem_0_inst_out(31 downto 0),
      Dout(5 downto 0) => xlslice_0_Dout(5 downto 0)
    );
xlslice_1: component design_1_xlslice_0_1
     port map (
      Din(31 downto 0) => instmem_0_inst_out(31 downto 0),
      Dout(4 downto 0) => xlslice_1_Dout(4 downto 0)
    );
xlslice_2: component design_1_xlslice_0_2
     port map (
      Din(31 downto 0) => instmem_0_inst_out(31 downto 0),
      Dout(4 downto 0) => xlslice_2_Dout(4 downto 0)
    );
xlslice_3: component design_1_xlslice_0_3
     port map (
      Din(31 downto 0) => instmem_0_inst_out(31 downto 0),
      Dout(4 downto 0) => xlslice_3_Dout(4 downto 0)
    );
xlslice_4: component design_1_xlslice_0_4
     port map (
      Din(31 downto 0) => instmem_0_inst_out(31 downto 0),
      Dout(5 downto 0) => xlslice_4_Dout(5 downto 0)
    );
end STRUCTURE;
