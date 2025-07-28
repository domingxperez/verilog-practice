`timescale 1ns / 1ps

module MUX_2to1_tb;

    // Inputs
    reg A;
    reg B;
    reg Sel;

    // Outputs
    wire Y;

    // Instantiate the Unit Under Test (UUT)
    MUX_2to1 uut (
        .A(A), 
        .B(B), 
        .Sel(Sel), 
        .Y(Y)
    );

    initial begin
        // Initialize Inputs
        A = 0;
        B = 0;
        Sel = 0;

        // Wait for global reset to finish
        #100;

        $monitor("A = %b, B = %b, Sel = %b, Y = %b", A, B, Sel, Y);

        A = 0; B = 0; Sel = 0; // Test case 1
        #10; // Wait for 10 time units
        A = 0; B = 1; Sel = 0; // Test case 2
        #10; // Wait for 10 time units
        A = 1; B = 0; Sel = 0; // Test case
        #10; // Wait for 10 time units
        A = 1; B = 1; Sel = 0; // Test case
        #10; // Wait for 10 time units
        A = 0; B = 0; Sel = 1; // Test case
        #10; // Wait for 10 time units
        A = 0; B = 1; Sel = 1; // Test case
        #10; // Wait for 10 time units
        A = 1; B = 0; Sel = 1; // Test case
        #10; // Wait for 10 time units
        A = 1; B = 1; Sel = 1; // Test case
        #10; // Wait for 10 time units
        // End simulation
        $finish;
    end
endmodule