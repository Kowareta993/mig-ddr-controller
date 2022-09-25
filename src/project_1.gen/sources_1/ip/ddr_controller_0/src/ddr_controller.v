module ddr_controller #
  (
   //***************************************************************************
   // The following parameters refer to width of various ports
   //***************************************************************************
   parameter ADDR_WIDTH            = 28,
                                     // # = RANK_WIDTH + BANK_WIDTH
                                     //     + ROW_WIDTH + COL_WIDTH;
                                     // Chip Select is always tied to low for
                                     // single rank devices
   //***************************************************************************
   // System clock frequency parameters
   //***************************************************************************
   parameter nCK_PER_CLK           = 2,
                                     // # of memory CKs per fabric CLK
                                     
   parameter FIFO_SIZE             = 3,
   parameter DATA_WIDTH            = 64,
   parameter nCLIENT           = 2
   )
  (
   // Inouts
   inout [63:0]                       ddr3_dq,
   inout [7:0]                        ddr3_dqs_n,
   inout [7:0]                        ddr3_dqs_p,

   // Outputs
   output [13:0]                      ddr3_addr,
   output [2:0]                       ddr3_ba,
   output                             ddr3_ras_n,
   output                             ddr3_cas_n,
   output                             ddr3_we_n,
   output                             ddr3_reset_n,
   output [0:0]                       ddr3_ck_p,
   output [0:0]                       ddr3_ck_n,
   output [0:0]                       ddr3_cke,
   output [0:0]                       ddr3_cs_n,
   output [7:0]                       ddr3_dm,
   output [0:0]                       ddr3_odt,
   
   // Inputs
   
   // Differential system clocks
   input                             sys_clk_p,
   input                             sys_clk_n,
   
   // differential iodelayctrl clk (reference clock)
   input                             clk_ref_p,
   input                             clk_ref_n,
   
   output                            init_calib_complete,
        
   // System reset - Default polarity of sys_rst pin is Active Low.
   // System reset polarity will change based on the option 
   // selected in GUI.
   input                             sys_rst,
   
   // Our Custom Ports
   input [nCLIENT-1:0] client_cmd,
   input [nCLIENT-1:0] client_en,
   input [nCLIENT*DATA_WIDTH-1:0] client_w_data,
   input [nCLIENT*ADDR_WIDTH-1:0] client_addr,
   
   output [nCLIENT-1:0] client_rdy,
   output [nCLIENT*DATA_WIDTH-1:0] client_r_data,
   output reg [nCLIENT-1:0] client_r_data_valid,
   output reg [nCLIENT-1:0] client_w_done
   );







  localparam APP_DATA_WIDTH        = 2 * nCK_PER_CLK * DATA_WIDTH;
  localparam APP_MASK_WIDTH        = APP_DATA_WIDTH / 8;

  
      

  // Wire declarations
      
  reg [ADDR_WIDTH-1:0]                 app_addr;
  reg [2:0]                            app_cmd;
  reg                                  app_en;
  wire                                  app_rdy;
  wire [APP_DATA_WIDTH-1:0]             app_rd_data;
  wire                                  app_rd_data_end;
  wire                                  app_rd_data_valid;
  reg [APP_DATA_WIDTH-1:0]             app_wdf_data;
  wire                                  app_wdf_end;
  wire [APP_MASK_WIDTH-1:0]             app_wdf_mask;
  wire                                  app_wdf_rdy;
  wire                                  app_sr_active;
  wire                                  app_ref_ack;
  wire                                  app_zq_ack;
  reg                                  app_wdf_wren;

  wire                                  clk;
  wire                                  rst;
 
    
  wire [11:0]                           device_temp;
  

      
  

//***************************************************************************






      
// Start of User Design top instance
//***************************************************************************
// The User design is instantiated below. The memory interface ports are
// connected to the top-level and the application interface ports are
// connected to the traffic generator module. This provides a reference
// for connecting the memory controller to system.
//***************************************************************************

  mig_7series_0 u_mig_7series_0
      (
       
       
// Memory interface ports
       .ddr3_addr                      (ddr3_addr),
       .ddr3_ba                        (ddr3_ba),
       .ddr3_cas_n                     (ddr3_cas_n),
       .ddr3_ck_n                      (ddr3_ck_n),
       .ddr3_ck_p                      (ddr3_ck_p),
       .ddr3_cke                       (ddr3_cke),
       .ddr3_ras_n                     (ddr3_ras_n),
       .ddr3_we_n                      (ddr3_we_n),
       .ddr3_dq                        (ddr3_dq),
       .ddr3_dqs_n                     (ddr3_dqs_n),
       .ddr3_dqs_p                     (ddr3_dqs_p),
       .ddr3_reset_n                   (ddr3_reset_n),
       .init_calib_complete            (init_calib_complete),
      
       .ddr3_cs_n                      (ddr3_cs_n),
       .ddr3_dm                        (ddr3_dm),
       .ddr3_odt                       (ddr3_odt),
// Application interface ports
       .app_addr                       (app_addr),
       .app_cmd                        (app_cmd),
       .app_en                         (app_en),
       .app_wdf_data                   (app_wdf_data),
       .app_wdf_end                    (app_wdf_end),
       .app_wdf_wren                   (app_wdf_wren),
       .app_rd_data                    (app_rd_data),
       .app_rd_data_end                (app_rd_data_end),
       .app_rd_data_valid              (app_rd_data_valid),
       .app_rdy                        (app_rdy),
       .app_wdf_rdy                    (app_wdf_rdy),
       .app_sr_req                     (1'b0),
       .app_ref_req                    (1'b0),
       .app_zq_req                     (1'b0),
       .app_sr_active                  (app_sr_active),
       .app_ref_ack                    (app_ref_ack),
       .app_zq_ack                     (app_zq_ack),
       .ui_clk                         (clk),
       .ui_clk_sync_rst                (rst),
      
       .app_wdf_mask                   (app_wdf_mask),
      
       
// System Clock Ports
       .sys_clk_p                       (sys_clk_p),
       .sys_clk_n                       (sys_clk_n),
// Reference Clock Ports
       .clk_ref_p                      (clk_ref_p),
       .clk_ref_n                      (clk_ref_n),
       .device_temp            (device_temp),

      
       .sys_rst                        (sys_rst)
       );
// End of User Design top instance

 localparam IDLE = 3'd0;
 localparam FETCH = 3'd1;
 localparam WRITE = 3'd2;
 localparam WRITE_DONE = 3'd3;
 localparam READ = 3'd4;
 localparam READ_DONE = 3'd5;
 localparam PICK = 3'd6;
 reg [2:0] state = IDLE;

 localparam CMD_WRITE = 3'b000;
 localparam CMD_READ = 3'b001;
 
 assign app_wdf_end = 1'b1;
 assign app_wdf_mask = 32'd0;
 
  
 localparam FIFO_WIDTH = 1 + ADDR_WIDTH + DATA_WIDTH;
 wire [FIFO_WIDTH-1:0] fifo_r_data [nCLIENT-1:0];
 wire [FIFO_WIDTH-1:0] fifo_wr_data [nCLIENT-1:0];
 reg [nCLIENT-1:0] fifo_pop;
 wire [nCLIENT-1:0] fifo_push;
 wire [nCLIENT-1:0] fifo_full;
 wire [nCLIENT-1:0] fifo_empty;
 reg [DATA_WIDTH-1:0] client_r_data_arr [nCLIENT-1:0];
 
 genvar i;
 generate
    for (i = 0; i < nCLIENT; i = i + 1) begin
        fifo  # (
            .SIZE(FIFO_SIZE),
            .WIDTH(FIFO_WIDTH)
         )
         client_fifo_i
         (
            .clk(sys_clk_p),
            .rst(~sys_rst),
            .push(fifo_push[i]),
            .pop(fifo_pop[i]),
            .data_in(fifo_wr_data[i]),
            .data_out(fifo_r_data[i]),
            .full(fifo_full[i]),
            .empty(fifo_empty[i])
         );
         assign fifo_push[i] = client_en[i] & ~fifo_full[i];
         assign fifo_wr_data[i] = {client_cmd[i], client_addr[ADDR_WIDTH*(i+1)-1:ADDR_WIDTH*i], client_w_data[DATA_WIDTH*(i+1)-1:DATA_WIDTH*i]};
         assign client_rdy[i] = ~fifo_full[i];
         assign client_r_data[DATA_WIDTH*(i+1)-1:DATA_WIDTH*i] = client_r_data_arr[i];
    end
 endgenerate
 
reg [31:0] idx, next_idx;
reg [FIFO_WIDTH-1:0] entry;
wire [ADDR_WIDTH-1:0] addr = entry[FIFO_WIDTH-2:FIFO_WIDTH-ADDR_WIDTH-1];
wire [DATA_WIDTH-1:0] data = entry[DATA_WIDTH-1:0];
wire cmd = entry[FIFO_WIDTH-1];

always @ (posedge clk) begin
  if (rst) begin
    state <= IDLE;
    app_en <= 0;
    app_wdf_wren <= 0;
    idx <= 0;
    next_idx <= 0;
  end else begin
    case (state)
      IDLE: begin
        idx <= next_idx;
        client_w_done <= 0;
        client_r_data_valid <= 0;
        if (init_calib_complete) begin
          state <= PICK;
        end
      end
      PICK: begin
        if (~fifo_empty[idx]) begin
            state <= FETCH; 
            entry <= fifo_r_data[idx];
        end else begin
            idx <= next_idx;
        end 
        if (idx == nCLIENT-1) begin
            next_idx <= 0;
        end
        else begin
            next_idx <= idx + 1;
        end
      end
      FETCH: begin
         fifo_pop[idx] <= 1;

         if (cmd == 1'b1) begin
            state <= READ;
         end else begin
            state <= WRITE;
         end 
        end
      WRITE: begin
        fifo_pop[idx] <= 0;
        if (app_rdy & app_wdf_rdy) begin
          state <= WRITE_DONE;
          app_en <= 1;
          app_wdf_wren <= 1;
          app_addr <= addr;
          app_cmd <= CMD_WRITE;
          app_wdf_data <= {data, data, data, data};
        end
      end

      WRITE_DONE: begin
        if (app_rdy & app_en) begin
          app_en <= 0;
        end

        if (app_wdf_rdy & app_wdf_wren) begin
          app_wdf_wren <= 0;
        end

        if (~app_en & ~app_wdf_wren) begin
          client_w_done[idx] <= 1;
          state <= IDLE;
        end
      end

      READ: begin
        fifo_pop[idx] <= 0;
        if (app_rdy) begin
          app_en <= 1;
          app_addr <= addr;
          app_cmd <= CMD_READ;
          state <= READ_DONE;
        end
      end

      READ_DONE: begin
        if (app_rdy & app_en) begin
          app_en <= 0;
        end

        if (app_rd_data_valid) begin
          client_r_data_arr[idx] <= app_rd_data[DATA_WIDTH-1:0];
          client_r_data_valid[idx] <= 1;
          state <= IDLE;
        end
      end


      default: state <= IDLE;
   endcase
 end
end
endmodule


