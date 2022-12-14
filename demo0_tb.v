`timescale 1ns/1ps
`include "demo0.v"

module demo0_tb;
reg[1:0] in;
wire[1:0] out;

reverse m0(in, out);

initial begin
    $dumpfile("demo0_tb.vcd");
    $dumpvars(0, demo0_tb);

    in = 2'b10;
    #10; in = 2'b01;
    #10; in = 2'b00;
end
endmodule