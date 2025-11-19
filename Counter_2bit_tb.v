`timescale 1ns/1ps
module tb_counter_2bit;

reg clk;
reg rst;
wire [1:0] count;

counter_2bit uut (
    .clk(clk),
    .rst(rst),
    .count(count)
);

always begin
    clk = 0; #5;
    clk = 1; #5;
end

initial begin
    $dumpfile("counter_2bit.vcd");
    $dumpvars(0, tb_counter_2bit);

    rst = 1;
    #10;
    rst = 0;

    #100;

    $finish;
end

endmodule
