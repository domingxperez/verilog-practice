module D_flip_flop (
    input wire clk,
    input wire d,
    output reg q // Reg because it will hold the state of the flip-flop
); 
    always @(posedge clk ) begin // Trigger on the rising edge of clk
        q <= d;  // Non-blocking assignment to ensure q updates on the clock edge
    end
endmodule