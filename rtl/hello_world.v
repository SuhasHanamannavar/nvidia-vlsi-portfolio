// rtl/hello_world.v
// A simple 8-bit counter that increments on each clock edge

module hello_world(
    input  wire        clk,
    input  wire        rst_n,
    output reg  [7:0]  led
);

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        led <= 8'b00000000;
    end else begin
        led <= led + 1'b1;
    end
end

endmodule