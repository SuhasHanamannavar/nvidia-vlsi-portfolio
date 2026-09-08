`timescale 1ns/1ps

module hello_world_tb;
    reg a;
    reg b;
    wire y;

    hello_world dut (.a(a), .b(b), .y(y));

    initial begin
        $dumpfile("hello_world.vcd");
        $dumpvars(0, hello_world_tb);

        a = 0; b = 0; #1;
        if (y !== 0) $fatal(1, "FAIL: 0 & 0");
        a = 0; b = 1; #1;
        if (y !== 0) $fatal(1, "FAIL: 0 & 1");
        a = 1; b = 0; #1;
        if (y !== 0) $fatal(1, "FAIL: 1 & 0");
        a = 1; b = 1; #1;
        if (y !== 1) $fatal(1, "FAIL: 1 & 1");

        $display("PASS: hello_world output is correct");
        $finish;
    end
endmodule
