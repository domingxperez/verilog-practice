`timescale 1ns / 1ps

module MUX_4to1_tb;

    // Inputs
    reg A;
    reg B;
    reg C;
    reg D;
    reg [1:0] Sel;

    // Outputs
    wire Y;

    // Instantiate the Unit Under Test (UUT)
    MUX_4to1 uut (
        .A(A), 
        .B(B), 
        .C(C), 
        .D(D), 
        .Sel(Sel), 
        .Y(Y)
    );

    initial begin
        // Initialize Inputs
        A = 0;
        B = 0;
        C = 0;
        D = 0;
        Sel = 0;

        // Wait for global reset to finish
        #100;

        $monitor("A = %b, B = %b, C = %b, D = %b, Sel = %b, Y = %b", A, B, C, D, Sel, Y);

        A = 0; B = 0; C = 0; D = 0; Sel = 2'b00; // Test case 1
        #10; // Wait for 10 time units
        A = 1; B = 1; C = 0; D = 0; Sel = 2'b00; // Test case 2
        #10; // Wait for 10 time units
        A = 1; B = 0; C = 0; D = 0; Sel = 2'b01; // Test case 3
        #10; // Wait for 10 time units
        A = 1; B = 1; C = 1; D = 0; Sel = 2'b11; // Test case 4
        #10; // Wait for 10 time units
        $finish;
    end
endmodule