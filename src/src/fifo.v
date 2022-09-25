module fifo # (
    parameter SIZE = 3,
    parameter WIDTH = 16
)
(
    input clk,
    input rst,
    input push,
    input pop,
    input [WIDTH-1:0] data_in,
    output [WIDTH-1:0] data_out,
    output full,
    output empty
);

function integer clogb2 (input integer size);
    begin
      size = size - 1;
      for (clogb2=1; size>1; clogb2=clogb2+1)
        size = size >> 1;
    end
  endfunction // clogb2
localparam ADDR = clogb2(SIZE);
reg [WIDTH-1:0] mem [0:SIZE - 1];
 
reg [ADDR-1:0] sp, ep;
reg [31:0] size; 
always @ (posedge clk) begin
    if (rst) begin
        sp <= 0;
        ep <= 0;
        size <= 0;
    end else begin 
        if (push) begin
            if (size == SIZE) begin
            
            end else begin
            size <= size + 1;
            mem[ep] <= data_in;
            if (ep == SIZE - 1) begin
                ep <= 0;
            end else begin
                ep <= ep + 1;
            end
            end
        end
    end
end
always @ (posedge pop) begin
    if (size == 0) begin
    
    end else begin
    size <= size - 1;
    if (sp == SIZE - 1) begin
        sp <= 0;
    end else begin
        sp <= sp + 1;
    end
    end
end
assign full = size == SIZE;
assign empty = size == 0;
assign data_out = mem[sp];
endmodule