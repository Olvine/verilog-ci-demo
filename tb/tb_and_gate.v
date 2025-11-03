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
        if (y == 0) $display("Test passed for a=0, b=0");
		else $fatal(1, "Simulation failed: unexpected value detected!");	
        a = 0; b = 1; #10;
        if (y == 0) $display("Test passed for a=0, b=1");
        	else $fatal(1, "Simulation failed: unexpected value detected!");

        a = 1; b = 0; #10;
        if (y == 0) $display("Test passed for a=1, b=0");
		else $fatal(1, "Simulation failed: unexpected value detected!");
        a = 1; b = 1; #10;
        if (y == 1) $display("Test Passed for a=1, b=1");
		else $fatal(1, "Simulation failed: unexpected value detected!");
        $display("All tests passed.");
        $finish;
    end
endmodule

