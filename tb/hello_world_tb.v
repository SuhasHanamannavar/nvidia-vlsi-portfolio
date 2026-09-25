// tb/hello_world_tb.v
// Testbench to verify the hello_world counter

module hello_world_tb;

reg         clk;
reg         rst_n;
wire [7:0]  led;

// Instantiate the Design Under Test (DUT)
hello_world dut (
    .clk(clk),
    .rst_n(rst_n),
    .led(led)
);

// Generate clock: toggle every 5 time units
always begin
    #5 clk = ~clk;
end

// Initial block: runs ONCE at simulation start
initial begin
    // Setup waveform dumping for GTKWave
    $dumpfile("hello_world.vcd");
    $dumpvars(0, hello_world_tb);

    // Initialize signals
    clk = 0;
    rst_n = 0;

    // Release reset after 20 time units
    #20 rst_n = 1;

    // Let simulation run for 100 more time units
    #100;

    // Check result
    if (led == 8'd10) begin
        $display("PASS: hello_world output is correct");
    end else begin
        $display("FAIL: Expected led=10, Got led=%0d", led);
    end

    #20 $finish;
end

endmodule