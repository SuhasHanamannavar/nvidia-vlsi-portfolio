`timescale 1ns/1ps

module counter_4bit_tb;

    reg        clk;
    reg        rst_n;
    reg        en;
    wire [3:0] count;

    // Instantiate DUT
    counter_4bit uut (
        .clk(clk),
        .rst_n(rst_n),
        .en(en),
        .count(count)
    );

    // Clock generation: 10ns period (100 MHz)
    always #5 clk = ~clk;

    initial begin
        // Setup VCD dumping for GTKWave
        $dumpfile("counter_4bit.vcd");
        $dumpvars(0, counter_4bit_tb);

        // Initialize signals
        clk   = 0;
        rst_n = 0;
        en    = 0;

        // Reset pulse
        #15 rst_n = 1;

        // Enable counter
        #10 en = 1;
        #100;

        // Disable counter
        en = 0;
        #20;

        $display("Verification Complete: Final Count = %d", count);
        $finish;
    end

endmodule
