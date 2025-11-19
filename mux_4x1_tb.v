`timescale 1ns/1ps
module mux4x1_tb();

reg a,b,c,d;
reg [1:0] sel;
wire y;

mux4x1 uut(sel, a, b, c, d, y);

initial begin
    $dumpfile("mux4x1.vcd");
    $dumpvars(0, mux4x1_tb);

    a=0; b=1; c=0; d=1;

    sel=2'b00; #10;
    sel=2'b01; #10;
    sel=2'b10; #10;
    sel=2'b11; #10;

    #10 $finish;
end

endmodule
