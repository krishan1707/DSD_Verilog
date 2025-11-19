`timescale 1ns/1ps

module counter_3bit_tb();

reg clk;
reg reset;
wire [2:0] count;

counter_3bit uut (
    .clk(clk),
    .reset(reset),
    .count(count)
);

always begin
    clk = 0; #5;
    clk = 1; #5;
end

initial begin
    $dumpfile("counter3bit.vcd");
    $dumpvars(0, counter_3bit_tb);

    reset = 1; #10;
    reset = 0;

    #50;

    uut.count = 3'b010;

    #50;

    $finish;
end

endmodule
