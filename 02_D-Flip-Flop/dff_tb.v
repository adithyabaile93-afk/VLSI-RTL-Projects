module d_flip_flop_tb;

reg D;
reg CLK;
wire Q;

d_flip_flop uut (
    .D(D),
    .CLK(CLK),
    .Q(Q)
);

initial begin
    CLK = 0;
    forever #5 CLK = ~CLK;
end

initial begin

    $dumpfile("dff.vcd");
    $dumpvars(0, d_flip_flop_tb);

    D = 0;
    #12;

    D = 1;
    #10;

    D = 0;
    #10;

    D = 1;
    #10;

    $finish;

end

endmodule
