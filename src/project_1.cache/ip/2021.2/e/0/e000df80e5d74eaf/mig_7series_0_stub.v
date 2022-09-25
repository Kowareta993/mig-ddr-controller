// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Fri Mar 11 09:28:35 2022
// Host        : kowareta running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mig_7series_0_stub.v
// Design      : mig_7series_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(ddr3_dq, ddr3_dqs_n, ddr3_dqs_p, ddr3_addr, 
  ddr3_ba, ddr3_ras_n, ddr3_cas_n, ddr3_we_n, ddr3_reset_n, ddr3_ck_p, ddr3_ck_n, ddr3_cke, 
  ddr3_cs_n, ddr3_dm, ddr3_odt, sys_clk_p, sys_clk_n, clk_ref_p, clk_ref_n, app_addr, app_cmd, 
  app_en, app_wdf_data, app_wdf_end, app_wdf_mask, app_wdf_wren, app_rd_data, app_rd_data_end, 
  app_rd_data_valid, app_rdy, app_wdf_rdy, app_sr_req, app_ref_req, app_zq_req, app_sr_active, 
  app_ref_ack, app_zq_ack, ui_clk, ui_clk_sync_rst, init_calib_complete, device_temp, sys_rst)
/* synthesis syn_black_box black_box_pad_pin="ddr3_dq[63:0],ddr3_dqs_n[7:0],ddr3_dqs_p[7:0],ddr3_addr[13:0],ddr3_ba[2:0],ddr3_ras_n,ddr3_cas_n,ddr3_we_n,ddr3_reset_n,ddr3_ck_p[0:0],ddr3_ck_n[0:0],ddr3_cke[0:0],ddr3_cs_n[0:0],ddr3_dm[7:0],ddr3_odt[0:0],sys_clk_p,sys_clk_n,clk_ref_p,clk_ref_n,app_addr[27:0],app_cmd[2:0],app_en,app_wdf_data[511:0],app_wdf_end,app_wdf_mask[63:0],app_wdf_wren,app_rd_data[511:0],app_rd_data_end,app_rd_data_valid,app_rdy,app_wdf_rdy,app_sr_req,app_ref_req,app_zq_req,app_sr_active,app_ref_ack,app_zq_ack,ui_clk,ui_clk_sync_rst,init_calib_complete,device_temp[11:0],sys_rst" */;
  inout [63:0]ddr3_dq;
  inout [7:0]ddr3_dqs_n;
  inout [7:0]ddr3_dqs_p;
  output [13:0]ddr3_addr;
  output [2:0]ddr3_ba;
  output ddr3_ras_n;
  output ddr3_cas_n;
  output ddr3_we_n;
  output ddr3_reset_n;
  output [0:0]ddr3_ck_p;
  output [0:0]ddr3_ck_n;
  output [0:0]ddr3_cke;
  output [0:0]ddr3_cs_n;
  output [7:0]ddr3_dm;
  output [0:0]ddr3_odt;
  input sys_clk_p;
  input sys_clk_n;
  input clk_ref_p;
  input clk_ref_n;
  input [27:0]app_addr;
  input [2:0]app_cmd;
  input app_en;
  input [511:0]app_wdf_data;
  input app_wdf_end;
  input [63:0]app_wdf_mask;
  input app_wdf_wren;
  output [511:0]app_rd_data;
  output app_rd_data_end;
  output app_rd_data_valid;
  output app_rdy;
  output app_wdf_rdy;
  input app_sr_req;
  input app_ref_req;
  input app_zq_req;
  output app_sr_active;
  output app_ref_ack;
  output app_zq_ack;
  output ui_clk;
  output ui_clk_sync_rst;
  output init_calib_complete;
  output [11:0]device_temp;
  input sys_rst;
endmodule
