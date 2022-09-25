module client # 
(
    parameter DATA_WIDTH = 64,
    parameter ADDR_WIDTH = 28
) 
(
   input controller_rdy,
   input [DATA_WIDTH-1:0] controller_r_data,
   input controller_r_data_valid,
   input controller_w_done,
   output reg controller_cmd,
   output reg controller_en,
   output reg [DATA_WIDTH-1:0] controller_w_data,
   output reg [ADDR_WIDTH-1:0] controller_addr,
   
   input clk,
   input rst,
   input start,
   input [ADDR_WIDTH-1:0] addr,
   output reg [DATA_WIDTH-1:0] result,
   output reg finished
);

localparam IDLE = 3'd0;
localparam WRITE = 3'd1;
localparam READ = 3'd2;
localparam WAIT_WRITE = 3'd3;
localparam WAIT_READ = 3'd4;
reg [2:0] state = IDLE;
reg [3:0] count;
reg [ADDR_WIDTH-1:0] saddr; 
reg [DATA_WIDTH-1:0] sdata;
always @(posedge clk) begin
    if (!rst) begin
        state <= IDLE;
        finished <= 0;
    end else begin
        case (state)
            IDLE: begin
                controller_en <= 0;
                if (start) begin
                    state <= WRITE;
                    saddr <= addr;
                    count <= 4'b0000;
                    sdata <= 0;
                    finished <= 0;
                end
            end
            WRITE: begin
                if(controller_rdy) begin   
                    controller_en <= 1;
                    controller_cmd <= 0;
                    controller_w_data <= sdata + 1;
                    controller_addr  <= saddr;
                    state <= WAIT_WRITE;
                end
            end
            WAIT_WRITE: begin
                controller_en <= 0;
                if (controller_w_done) begin
                    state <= READ;
                end
            end
            READ: begin
                if(controller_rdy) begin
                    controller_en <= 1;
                    controller_cmd <= 1;
                    controller_addr  <= saddr;
                    state <= WAIT_READ;
                end
            end
            WAIT_READ: begin
                controller_en <= 0;
                if(controller_r_data_valid) begin
                    sdata <= controller_r_data;
                    count <= count + 1;
                    if(count != 15) begin
                        state <= WRITE;
                    end else begin
                        state <= IDLE;
                        result <= controller_r_data;
                        finished <= 1;
                    end
                end
            end
        endcase
    end
end
endmodule 