module sr_ff_tb;
reg s, r, clk;
wire q, qbar;

sr_ff dut(s, r, clk, q, qbar);

initial
begin
    $dumpfile("sr_ff.vcd");
    $dumpvars(0, sr_ff_tb);
end

initial
begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial
begin
    s = 0; r = 0; #10;
    s = 1; r = 0; #10;
    s = 0; r = 1; #10;
    s = 0; r = 0; #10;
    s = 1; r = 1; #10;
    $finish;
end

endmodule
