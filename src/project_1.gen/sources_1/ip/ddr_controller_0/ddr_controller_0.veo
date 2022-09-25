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

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
ddr_controller_0 your_instance_name (
  .ddr3_dq(ddr3_dq),                          // inout wire [63 : 0] ddr3_dq
  .ddr3_dqs_n(ddr3_dqs_n),                    // inout wire [7 : 0] ddr3_dqs_n
  .ddr3_dqs_p(ddr3_dqs_p),                    // inout wire [7 : 0] ddr3_dqs_p
  .ddr3_addr(ddr3_addr),                      // output wire [13 : 0] ddr3_addr
  .ddr3_ba(ddr3_ba),                          // output wire [2 : 0] ddr3_ba
  .ddr3_ras_n(ddr3_ras_n),                    // output wire ddr3_ras_n
  .ddr3_cas_n(ddr3_cas_n),                    // output wire ddr3_cas_n
  .ddr3_we_n(ddr3_we_n),                      // output wire ddr3_we_n
  .ddr3_reset_n(ddr3_reset_n),                // output wire ddr3_reset_n
  .ddr3_ck_p(ddr3_ck_p),                      // output wire [0 : 0] ddr3_ck_p
  .ddr3_ck_n(ddr3_ck_n),                      // output wire [0 : 0] ddr3_ck_n
  .ddr3_cke(ddr3_cke),                        // output wire [0 : 0] ddr3_cke
  .ddr3_cs_n(ddr3_cs_n),                      // output wire [0 : 0] ddr3_cs_n
  .ddr3_dm(ddr3_dm),                          // output wire [7 : 0] ddr3_dm
  .ddr3_odt(ddr3_odt),                        // output wire [0 : 0] ddr3_odt
  .sys_clk_p(sys_clk_p),                      // input wire sys_clk_p
  .sys_clk_n(sys_clk_n),                      // input wire sys_clk_n
  .clk_ref_p(clk_ref_p),                      // input wire clk_ref_p
  .clk_ref_n(clk_ref_n),                      // input wire clk_ref_n
  .init_calib_complete(init_calib_complete),  // output wire init_calib_complete
  .sys_rst(sys_rst),                          // input wire sys_rst
  .client_cmd(client_cmd),                    // input wire [4 : 0] client_cmd
  .client_en(client_en),                      // input wire [4 : 0] client_en
  .client_w_data(client_w_data),              // input wire [319 : 0] client_w_data
  .client_addr(client_addr),                  // input wire [139 : 0] client_addr
  .client_rdy(client_rdy),                    // output wire [4 : 0] client_rdy
  .client_r_data(client_r_data),              // output wire [319 : 0] client_r_data
  .client_r_data_valid(client_r_data_valid),  // output wire [4 : 0] client_r_data_valid
  .client_w_done(client_w_done)              // output wire [4 : 0] client_w_done
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

