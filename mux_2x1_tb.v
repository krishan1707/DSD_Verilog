`timescale 1ns/1ps
module mux2x1_tb();

reg a, b, sel;
wire y;

mux2x1 uut(a, b, sel, y);

initial begin
    $dumpfile("mux2x1.vcd");
    $dumpvars(0, mux2x1_tb);

    a=0; b=1;
    sel=0; #10;
    sel=1; #10;

    #10 $finish;
end

endmodule
