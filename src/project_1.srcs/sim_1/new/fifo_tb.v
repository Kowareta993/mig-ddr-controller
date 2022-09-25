`timescale 1ns / 1ps



module fifo_tb;
reg clk, rst, push, pop;
reg [15:0] data_in;    
wire [15:0] data_out;
 fifo
   u1
     (

     .clk(clk),
    .rst(rst),
    .push(push),
    .pop(pop),
    .data_in(data_in),
    .data_out(data_out),
    .full(full),
    .empty(empty)
     );
     
initial begin
    rst = 1'b1;
    #100
      rst = 1'b0;
   end
initial
    clk = 1'b0;
  always
    clk = #(100/2.0) ~clk;
    
initial begin
    wait(!rst);
    wait(!clk);
    data_in <= 16'hABCD;
    push <= 1;
    wait(clk);
    wait(!clk);
    data_in <= 16'h1234;
    push <= 1;
    wait(clk);
    wait(!clk);
    data_in <= 16'h9595;
    push <= 1;
    wait(clk);
    wait(!clk);
    data_in <= 16'h1010;
    push <= 1;
    wait(clk);
    wait(!clk);
    push <= 0;
    wait(clk);
    wait(!clk);
    pop <= 1;
    wait(clk);
    wait(!clk);
    pop <= 1;
    wait(clk);
    wait(!clk);
    pop <= 1;
    wait(clk);
    wait(!clk);
    pop <= 0;
    wait(clk);
    wait(!clk);
    $finish;
end
endmodule
