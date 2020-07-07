--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
--Date        : Tue May  5 11:21:54 2020
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
    Clock : in STD_LOGIC;
    FinalReg : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Reset : in STD_LOGIC;
    cout : out STD_LOGIC;
    overflow : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=25,numReposBlks=25,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=14,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
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
  component design_1_datamem_0_0 is
  port (
    clock : in STD_LOGIC;
    address : in STD_LOGIC_VECTOR ( 31 downto 0 );
    write_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    MemWrite : in STD_LOGIC;
    MemRead : in STD_LOGIC;
    Read_data : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_1_datamem_0_0;
  component design_1_instmem_0_0 is
  port (
    read_inst : in STD_LOGIC_VECTOR ( 31 downto 0 );
    inst_out : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_1_instmem_0_0;
  component design_1_mux2x1_5bit_0_0 is
  port (
    selector : in STD_LOGIC;
    input1 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    input2 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    output : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component design_1_mux2x1_5bit_0_0;
  component design_1_programCounterADD_0_0 is
  port (
    programCounterIn : in STD_LOGIC_VECTOR ( 31 downto 0 );
    programCounterOut : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_1_programCounterADD_0_0;
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
  component design_1_shiftleft2_0_0 is
  port (
    input : in STD_LOGIC_VECTOR ( 31 downto 0 );
    output : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_1_shiftleft2_0_0;
  component design_1_sign_extend_0_0 is
  port (
    input : in STD_LOGIC_VECTOR ( 15 downto 0 );
    output : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_1_sign_extend_0_0;
  component design_1_controlUnit_0_0 is
  port (
    opcode : in STD_LOGIC_VECTOR ( 5 downto 0 );
    regWrite : out STD_LOGIC;
    alusrc : out STD_LOGIC;
    memWrite : out STD_LOGIC;
    aluOp : out STD_LOGIC_VECTOR ( 2 downto 0 );
    memtoreg : out STD_LOGIC;
    memread : out STD_LOGIC;
    branch : out STD_LOGIC;
    regdst : out STD_LOGIC;
    branchne : out STD_LOGIC
  );
  end component design_1_controlUnit_0_0;
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
  component design_1_xlslice_1_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component design_1_xlslice_1_0;
  component design_1_xlslice_1_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component design_1_xlslice_1_1;
  component design_1_xlslice_1_2 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component design_1_xlslice_1_2;
  component design_1_xlslice_1_3 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  end component design_1_xlslice_1_3;
  component design_1_c_addsub_0_2 is
  port (
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    CLK : in STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_1_c_addsub_0_2;
  component design_1_util_vector_logic_0_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_util_vector_logic_0_0;
  component design_1_util_vector_logic_0_1 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_util_vector_logic_0_1;
  component design_1_util_vector_logic_1_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_util_vector_logic_1_0;
  component design_1_util_vector_logic_1_1 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_util_vector_logic_1_1;
  component design_1_mux2x1_32bit_0_0 is
  port (
    selector : in STD_LOGIC;
    input1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    input2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    output : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_1_mux2x1_32bit_0_0;
  component design_1_mux2x1_32bit_0_1 is
  port (
    selector : in STD_LOGIC;
    input1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    input2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    output : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_1_mux2x1_32bit_0_1;
  component design_1_mux2x1_32bit_1_0 is
  port (
    selector : in STD_LOGIC;
    input1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    input2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    output : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_1_mux2x1_32bit_1_0;
  component design_1_alu_control_0_0 is
  port (
    aluop : in STD_LOGIC_VECTOR ( 2 downto 0 );
    funct : in STD_LOGIC_VECTOR ( 5 downto 0 );
    operation : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component design_1_alu_control_0_0;
  signal ALU_0_ALUOut : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ALU_0_Carryout : STD_LOGIC;
  signal ALU_0_Overflow : STD_LOGIC;
  signal ALU_0_Zero : STD_LOGIC;
  signal Clock_1 : STD_LOGIC;
  signal PC_0_PCout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Reset_1 : STD_LOGIC;
  signal alu_control_0_operation : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal c_addsub_0_S : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal controlUnit_0_aluOp : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal controlUnit_0_alusrc : STD_LOGIC;
  signal controlUnit_0_branch : STD_LOGIC;
  signal controlUnit_0_branchne : STD_LOGIC;
  signal controlUnit_0_memWrite : STD_LOGIC;
  signal controlUnit_0_memread : STD_LOGIC;
  signal controlUnit_0_memtoreg : STD_LOGIC;
  signal controlUnit_0_regWrite : STD_LOGIC;
  signal controlUnit_0_regdst : STD_LOGIC;
  signal datamem_0_Read_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal instmem_0_inst_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mux2x1_32bit_0_output : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mux2x1_32bit_1_output : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mux2x1_32bit_2_output : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mux2x1_5bit_0_output : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal programCounterADD_0_programCounterOut : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal regfile_0_read_data1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal regfile_0_read_data2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal shiftleft2_0_output : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal sign_extend_0_output : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal util_vector_logic_0_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_vector_logic_1_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_vector_logic_2_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_vector_logic_3_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal xlslice_1_Dout : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal xlslice_2_Dout : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal xlslice_3_Dout : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal xlslice_4_Dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xlslice_5_Dout : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of Clock : signal is "xilinx.com:signal:clock:1.0 CLK.CLOCK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of Clock : signal is "XIL_INTERFACENAME CLK.CLOCK, ASSOCIATED_RESET Reset, CLK_DOMAIN design_1_Clock, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of Reset : signal is "xilinx.com:signal:reset:1.0 RST.RESET RST";
  attribute X_INTERFACE_PARAMETER of Reset : signal is "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_HIGH";
  attribute X_INTERFACE_INFO of cout : signal is "xilinx.com:signal:data:1.0 DATA.COUT DATA";
  attribute X_INTERFACE_PARAMETER of cout : signal is "XIL_INTERFACENAME DATA.COUT, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of overflow : signal is "xilinx.com:signal:data:1.0 DATA.OVERFLOW DATA";
  attribute X_INTERFACE_PARAMETER of overflow : signal is "XIL_INTERFACENAME DATA.OVERFLOW, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of FinalReg : signal is "xilinx.com:signal:data:1.0 DATA.FINALREG DATA";
  attribute X_INTERFACE_PARAMETER of FinalReg : signal is "XIL_INTERFACENAME DATA.FINALREG, LAYERED_METADATA undef";
begin
  Clock_1 <= Clock;
  FinalReg(31 downto 0) <= mux2x1_32bit_1_output(31 downto 0);
  Reset_1 <= Reset;
  cout <= ALU_0_Carryout;
  overflow <= ALU_0_Overflow;
ALU_0: component design_1_ALU_0_0
     port map (
      A(31 downto 0) => regfile_0_read_data1(31 downto 0),
      ALUCntl(3 downto 0) => alu_control_0_operation(3 downto 0),
      ALUOut(31 downto 0) => ALU_0_ALUOut(31 downto 0),
      B(31 downto 0) => mux2x1_32bit_0_output(31 downto 0),
      Carryin => '0',
      Carryout => ALU_0_Carryout,
      Overflow => ALU_0_Overflow,
      Zero => ALU_0_Zero
    );
PC_0: component design_1_PC_0_0
     port map (
      PCin(31 downto 0) => mux2x1_32bit_2_output(31 downto 0),
      PCout(31 downto 0) => PC_0_PCout(31 downto 0),
      clock => Clock_1,
      reset => Reset_1
    );
alu_control_0: component design_1_alu_control_0_0
     port map (
      aluop(2 downto 0) => controlUnit_0_aluOp(2 downto 0),
      funct(5 downto 0) => xlslice_5_Dout(5 downto 0),
      operation(3 downto 0) => alu_control_0_operation(3 downto 0)
    );
c_addsub_0: component design_1_c_addsub_0_2
     port map (
      A(31 downto 0) => programCounterADD_0_programCounterOut(31 downto 0),
      B(31 downto 0) => shiftleft2_0_output(31 downto 0),
      CLK => Clock_1,
      S(31 downto 0) => c_addsub_0_S(31 downto 0)
    );
controlUnit_0: component design_1_controlUnit_0_0
     port map (
      aluOp(2 downto 0) => controlUnit_0_aluOp(2 downto 0),
      alusrc => controlUnit_0_alusrc,
      branch => controlUnit_0_branch,
      branchne => controlUnit_0_branchne,
      memWrite => controlUnit_0_memWrite,
      memread => controlUnit_0_memread,
      memtoreg => controlUnit_0_memtoreg,
      opcode(5 downto 0) => xlslice_0_Dout(5 downto 0),
      regWrite => controlUnit_0_regWrite,
      regdst => controlUnit_0_regdst
    );
datamem_0: component design_1_datamem_0_0
     port map (
      MemRead => controlUnit_0_memread,
      MemWrite => controlUnit_0_memWrite,
      Read_data(31 downto 0) => datamem_0_Read_data(31 downto 0),
      address(31 downto 0) => ALU_0_ALUOut(31 downto 0),
      clock => Clock_1,
      write_data(31 downto 0) => regfile_0_read_data2(31 downto 0)
    );
instmem_0: component design_1_instmem_0_0
     port map (
      inst_out(31 downto 0) => instmem_0_inst_out(31 downto 0),
      read_inst(31 downto 0) => PC_0_PCout(31 downto 0)
    );
mux2x1_32bit_0: component design_1_mux2x1_32bit_0_0
     port map (
      input1(31 downto 0) => regfile_0_read_data2(31 downto 0),
      input2(31 downto 0) => sign_extend_0_output(31 downto 0),
      output(31 downto 0) => mux2x1_32bit_0_output(31 downto 0),
      selector => controlUnit_0_alusrc
    );
mux2x1_32bit_1: component design_1_mux2x1_32bit_0_1
     port map (
      input1(31 downto 0) => ALU_0_ALUOut(31 downto 0),
      input2(31 downto 0) => datamem_0_Read_data(31 downto 0),
      output(31 downto 0) => mux2x1_32bit_1_output(31 downto 0),
      selector => controlUnit_0_memtoreg
    );
mux2x1_32bit_2: component design_1_mux2x1_32bit_1_0
     port map (
      input1(31 downto 0) => programCounterADD_0_programCounterOut(31 downto 0),
      input2(31 downto 0) => c_addsub_0_S(31 downto 0),
      output(31 downto 0) => mux2x1_32bit_2_output(31 downto 0),
      selector => util_vector_logic_3_Res(0)
    );
mux2x1_5bit_0: component design_1_mux2x1_5bit_0_0
     port map (
      input1(4 downto 0) => xlslice_2_Dout(4 downto 0),
      input2(4 downto 0) => xlslice_3_Dout(4 downto 0),
      output(4 downto 0) => mux2x1_5bit_0_output(4 downto 0),
      selector => controlUnit_0_regdst
    );
programCounterADD_0: component design_1_programCounterADD_0_0
     port map (
      programCounterIn(31 downto 0) => PC_0_PCout(31 downto 0),
      programCounterOut(31 downto 0) => programCounterADD_0_programCounterOut(31 downto 0)
    );
regfile_0: component design_1_regfile_0_0
     port map (
      RegWrite => controlUnit_0_regWrite,
      clock => Clock_1,
      read_data1(31 downto 0) => regfile_0_read_data1(31 downto 0),
      read_data2(31 downto 0) => regfile_0_read_data2(31 downto 0),
      read_reg1(4 downto 0) => xlslice_1_Dout(4 downto 0),
      read_reg2(4 downto 0) => xlslice_2_Dout(4 downto 0),
      write_data(31 downto 0) => mux2x1_32bit_1_output(31 downto 0),
      write_reg(4 downto 0) => mux2x1_5bit_0_output(4 downto 0)
    );
shiftleft2_0: component design_1_shiftleft2_0_0
     port map (
      input(31 downto 0) => sign_extend_0_output(31 downto 0),
      output(31 downto 0) => shiftleft2_0_output(31 downto 0)
    );
sign_extend_0: component design_1_sign_extend_0_0
     port map (
      input(15 downto 0) => xlslice_4_Dout(15 downto 0),
      output(31 downto 0) => sign_extend_0_output(31 downto 0)
    );
util_vector_logic_0: component design_1_util_vector_logic_0_0
     port map (
      Op1(0) => controlUnit_0_branch,
      Op2(0) => ALU_0_Zero,
      Res(0) => util_vector_logic_0_Res(0)
    );
util_vector_logic_1: component design_1_util_vector_logic_0_1
     port map (
      Op1(0) => ALU_0_Zero,
      Res(0) => util_vector_logic_1_Res(0)
    );
util_vector_logic_2: component design_1_util_vector_logic_1_0
     port map (
      Op1(0) => controlUnit_0_branchne,
      Op2(0) => util_vector_logic_1_Res(0),
      Res(0) => util_vector_logic_2_Res(0)
    );
util_vector_logic_3: component design_1_util_vector_logic_1_1
     port map (
      Op1(0) => util_vector_logic_0_Res(0),
      Op2(0) => util_vector_logic_2_Res(0),
      Res(0) => util_vector_logic_3_Res(0)
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
xlslice_2: component design_1_xlslice_1_0
     port map (
      Din(31 downto 0) => instmem_0_inst_out(31 downto 0),
      Dout(4 downto 0) => xlslice_2_Dout(4 downto 0)
    );
xlslice_3: component design_1_xlslice_1_1
     port map (
      Din(31 downto 0) => instmem_0_inst_out(31 downto 0),
      Dout(4 downto 0) => xlslice_3_Dout(4 downto 0)
    );
xlslice_4: component design_1_xlslice_1_2
     port map (
      Din(31 downto 0) => instmem_0_inst_out(31 downto 0),
      Dout(15 downto 0) => xlslice_4_Dout(15 downto 0)
    );
xlslice_5: component design_1_xlslice_1_3
     port map (
      Din(31 downto 0) => instmem_0_inst_out(31 downto 0),
      Dout(5 downto 0) => xlslice_5_Dout(5 downto 0)
    );
end STRUCTURE;
