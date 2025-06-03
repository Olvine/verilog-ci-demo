`timescale 1ns/1ps

module tb_and_gate;
    reg a, b;
    wire y;

    and_gate uut (
        .a(a),
        .b(b),
        .y(y)
    );

    initial begin
        $display("Running AND gate test...");
        a = 0; b = 0; #10;
        if (y !== 0) $fatal("Test failed for a=0, b=0");

        a = 0; b = 1; #10;
        if (y !== 0) $fatal("Test failed for a=0, b=1");

        a = 1; b = 0; #10;
        if (y !== 0) $fatal("Test failed for a=1, b=0");

        a = 1; b = 1; #10;
        if (y !== 1) $fatal("Test failed for a=1, b=1");

        $display("All tests passed.");
        $finish;
    end
endmodule

