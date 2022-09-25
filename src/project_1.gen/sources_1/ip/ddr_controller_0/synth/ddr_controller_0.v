// (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: user.org:user:ddr_controller:1.0
// IP Revision: 2

(* X_CORE_INFO = "ddr_controller,Vivado 2021.2" *)
(* CHECK_LICENSE_TYPE = "ddr_controller_0,ddr_controller,{}" *)
(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module ddr_controller_0 (
  ddr3_dq,
  ddr3_dqs_n,
  ddr3_dqs_p,
  ddr3_addr,
  ddr3_ba,
  ddr3_ras_n,
  ddr3_cas_n,
  ddr3_we_n,
  ddr3_reset_n,
  ddr3_ck_p,
  ddr3_ck_n,
  ddr3_cke,
  ddr3_cs_n,
  ddr3_dm,
  ddr3_odt,
  sys_clk_p,
  sys_clk_n,
  clk_ref_p,
  clk_ref_n,
  init_calib_complete,
  sys_rst,
  client_cmd,
  client_en,
  client_w_data,
  client_addr,
  client_rdy,
  client_r_data,
  client_r_data_valid,
  client_w_done
);

inout wire [63 : 0] ddr3_dq;
inout wire [7 : 0] ddr3_dqs_n;
inout wire [7 : 0] ddr3_dqs_p;
output wire [13 : 0] ddr3_addr;
output wire [2 : 0] ddr3_ba;
output wire ddr3_ras_n;
output wire ddr3_cas_n;
output wire ddr3_we_n;
output wire ddr3_reset_n;
output wire [0 : 0] ddr3_ck_p;
output wire [0 : 0] ddr3_ck_n;
output wire [0 : 0] ddr3_cke;
output wire [0 : 0] ddr3_cs_n;
output wire [7 : 0] ddr3_dm;
output wire [0 : 0] ddr3_odt;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sys_clk_p, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 sys_clk_p CLK" *)
input wire sys_clk_p;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sys_clk_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 sys_clk_n CLK" *)
input wire sys_clk_n;
input wire clk_ref_p;
input wire clk_ref_n;
output wire init_calib_complete;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sys_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 sys_rst RST" *)
input wire sys_rst;
input wire [4 : 0] client_cmd;
input wire [4 : 0] client_en;
input wire [319 : 0] client_w_data;
input wire [139 : 0] client_addr;
output wire [4 : 0] client_rdy;
output wire [319 : 0] client_r_data;
output wire [4 : 0] client_r_data_valid;
output wire [4 : 0] client_w_done;

  ddr_controller #(
    .ADDR_WIDTH(28),
    .nCK_PER_CLK(2),
    .FIFO_SIZE(10),
    .DATA_WIDTH(64),
    .nCLIENT(5)
  ) inst (
    .ddr3_dq(ddr3_dq),
    .ddr3_dqs_n(ddr3_dqs_n),
    .ddr3_dqs_p(ddr3_dqs_p),
    .ddr3_addr(ddr3_addr),
    .ddr3_ba(ddr3_ba),
    .ddr3_ras_n(ddr3_ras_n),
    .ddr3_cas_n(ddr3_cas_n),
    .ddr3_we_n(ddr3_we_n),
    .ddr3_reset_n(ddr3_reset_n),
    .ddr3_ck_p(ddr3_ck_p),
    .ddr3_ck_n(ddr3_ck_n),
    .ddr3_cke(ddr3_cke),
    .ddr3_cs_n(ddr3_cs_n),
    .ddr3_dm(ddr3_dm),
    .ddr3_odt(ddr3_odt),
    .sys_clk_p(sys_clk_p),
    .sys_clk_n(sys_clk_n),
    .clk_ref_p(clk_ref_p),
    .clk_ref_n(clk_ref_n),
    .init_calib_complete(init_calib_complete),
    .sys_rst(sys_rst),
    .client_cmd(client_cmd),
    .client_en(client_en),
    .client_w_data(client_w_data),
    .client_addr(client_addr),
    .client_rdy(client_rdy),
    .client_r_data(client_r_data),
    .client_r_data_valid(client_r_data_valid),
    .client_w_done(client_w_done)
  );
endmodule
