--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
--Date        : Sat Mar 20 10:53:54 2021
--Host        : DESKTOP-L3OMJC1 running 64-bit major release  (build 9200)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    CLP_C_N : in STD_LOGIC;
    CLP_C_P : in STD_LOGIC;
    CLP_D_N : in STD_LOGIC_VECTOR ( 1 downto 0 );
    CLP_D_P : in STD_LOGIC_VECTOR ( 1 downto 0 );
    CSI_C_N : in STD_LOGIC;
    CSI_C_P : in STD_LOGIC;
    CSI_D_N : in STD_LOGIC_VECTOR ( 1 downto 0 );
    CSI_D_P : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 15 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    TMDS_0_0_clk_n : out STD_LOGIC;
    TMDS_0_0_clk_p : out STD_LOGIC;
    TMDS_0_0_data_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    TMDS_0_0_data_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    const_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    const_2 : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    CSI_D_N : in STD_LOGIC_VECTOR ( 1 downto 0 );
    CSI_D_P : in STD_LOGIC_VECTOR ( 1 downto 0 );
    CLP_D_N : in STD_LOGIC_VECTOR ( 1 downto 0 );
    CLP_D_P : in STD_LOGIC_VECTOR ( 1 downto 0 );
    CSI_C_N : in STD_LOGIC;
    CSI_C_P : in STD_LOGIC;
    CLP_C_N : in STD_LOGIC;
    CLP_C_P : in STD_LOGIC;
    const_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    const_2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_dm : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 15 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    TMDS_0_0_clk_p : out STD_LOGIC;
    TMDS_0_0_clk_n : out STD_LOGIC;
    TMDS_0_0_data_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    TMDS_0_0_data_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      CLP_C_N => CLP_C_N,
      CLP_C_P => CLP_C_P,
      CLP_D_N(1 downto 0) => CLP_D_N(1 downto 0),
      CLP_D_P(1 downto 0) => CLP_D_P(1 downto 0),
      CSI_C_N => CSI_C_N,
      CSI_C_P => CSI_C_P,
      CSI_D_N(1 downto 0) => CSI_D_N(1 downto 0),
      CSI_D_P(1 downto 0) => CSI_D_P(1 downto 0),
      DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
      DDR_cas_n => DDR_cas_n,
      DDR_ck_n => DDR_ck_n,
      DDR_ck_p => DDR_ck_p,
      DDR_cke => DDR_cke,
      DDR_cs_n => DDR_cs_n,
      DDR_dm(1 downto 0) => DDR_dm(1 downto 0),
      DDR_dq(15 downto 0) => DDR_dq(15 downto 0),
      DDR_dqs_n(1 downto 0) => DDR_dqs_n(1 downto 0),
      DDR_dqs_p(1 downto 0) => DDR_dqs_p(1 downto 0),
      DDR_odt => DDR_odt,
      DDR_ras_n => DDR_ras_n,
      DDR_reset_n => DDR_reset_n,
      DDR_we_n => DDR_we_n,
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(31 downto 0) => FIXED_IO_mio(31 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      TMDS_0_0_clk_n => TMDS_0_0_clk_n,
      TMDS_0_0_clk_p => TMDS_0_0_clk_p,
      TMDS_0_0_data_n(2 downto 0) => TMDS_0_0_data_n(2 downto 0),
      TMDS_0_0_data_p(2 downto 0) => TMDS_0_0_data_p(2 downto 0),
      const_1(0) => const_1(0),
      const_2(0) => const_2(0)
    );
end STRUCTURE;
