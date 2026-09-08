module counter_4bit_tb;

reg CLK;
reg RESET;
wire [3:0] Q;

counter_4bit uut (
    .CLK(CLK),
    .RESET(RESET),
    .Q(Q)
);

// Clock generation
initial begin
    CLK = 0;
    forever #5 CLK = ~CLK;
end

// Test sequence
initial begin

    // Waveform generation
    $dumpfile("counter.vcd");
    $dumpvars(0, counter_4bit_tb);

    // Apply reset
    RESET = 1;
    #12;

    // Start counting
    RESET = 0;
    #80;

    // Reset again
    RESET = 1;
    #10;

    RESET = 0;
    #30;

    $finish;

end

endmodule
