-- (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: user.org:user:ddr_controller:1.0
-- IP Revision: 2

-- The following code must appear in the VHDL architecture header.

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT ddr_controller_0
  PORT (
    ddr3_dq : INOUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    ddr3_dqs_n : INOUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ddr3_dqs_p : INOUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ddr3_addr : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
    ddr3_ba : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    ddr3_ras_n : OUT STD_LOGIC;
    ddr3_cas_n : OUT STD_LOGIC;
    ddr3_we_n : OUT STD_LOGIC;
    ddr3_reset_n : OUT STD_LOGIC;
    ddr3_ck_p : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    ddr3_ck_n : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    ddr3_cke : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    ddr3_cs_n : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    ddr3_dm : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ddr3_odt : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    sys_clk_p : IN STD_LOGIC;
    sys_clk_n : IN STD_LOGIC;
    clk_ref_p : IN STD_LOGIC;
    clk_ref_n : IN STD_LOGIC;
    init_calib_complete : OUT STD_LOGIC;
    sys_rst : IN STD_LOGIC;
    client_cmd : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    client_en : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    client_w_data : IN STD_LOGIC_VECTOR(319 DOWNTO 0);
    client_addr : IN STD_LOGIC_VECTOR(139 DOWNTO 0);
    client_rdy : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    client_r_data : OUT STD_LOGIC_VECTOR(319 DOWNTO 0);
    client_r_data_valid : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    client_w_done : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : ddr_controller_0
  PORT MAP (
    ddr3_dq => ddr3_dq,
    ddr3_dqs_n => ddr3_dqs_n,
    ddr3_dqs_p => ddr3_dqs_p,
    ddr3_addr => ddr3_addr,
    ddr3_ba => ddr3_ba,
    ddr3_ras_n => ddr3_ras_n,
    ddr3_cas_n => ddr3_cas_n,
    ddr3_we_n => ddr3_we_n,
    ddr3_reset_n => ddr3_reset_n,
    ddr3_ck_p => ddr3_ck_p,
    ddr3_ck_n => ddr3_ck_n,
    ddr3_cke => ddr3_cke,
    ddr3_cs_n => ddr3_cs_n,
    ddr3_dm => ddr3_dm,
    ddr3_odt => ddr3_odt,
    sys_clk_p => sys_clk_p,
    sys_clk_n => sys_clk_n,
    clk_ref_p => clk_ref_p,
    clk_ref_n => clk_ref_n,
    init_calib_complete => init_calib_complete,
    sys_rst => sys_rst,
    client_cmd => client_cmd,
    client_en => client_en,
    client_w_data => client_w_data,
    client_addr => client_addr,
    client_rdy => client_rdy,
    client_r_data => client_r_data,
    client_r_data_valid => client_r_data_valid,
    client_w_done => client_w_done
  );
-- INST_TAG_END ------ End INSTANTIATION Template ---------

