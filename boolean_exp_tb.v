`timescale 1ns/1ps
module boolean_expr_tb();

reg A, B, C, D;
wire Y;

boolean_expr uut(A, B, C, D, Y);

initial begin
    $dumpfile("boolean_expr.vcd");
    $dumpvars(0, boolean_expr_tb);

    {A,B,C,D} = 4'b0000;
    repeat(16) begin
        #10 {A,B,C,D} = {A,B,C,D} + 1;
    end

    #10 $finish;
end

endmodule
