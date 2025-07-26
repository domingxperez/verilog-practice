`timescale 1ns/1ns

module and_gate_tb;
    reg A;
    reg B;
    wire Y;

    and_gate uut (
        .A(A),
        .B(B),
        .Y(Y)
    );

    initial begin
        $monitor("Tiempo=%0t A=%b B=%b Y=%b", $time, A, B, Y);

        A = 0; B = 0; #10;
        A = 0; B = 1; #10;
        A = 1; B = 0; #10;
        A = 1; B = 1; #10;

        $finish;
    end

endmodule
