`timescale 1ns/1ns

module not_gate_tb;
    reg A;
    wire Y;

    not_gate uut (
        .A(A),
        .Y(Y)
    );

    initial begin
        $monitor("Tiempo=%0t A=%b Y=%b", $time, A, Y);

        A = 0; #10;
        A = 1; #10;

        $finish;
    end

endmodule
