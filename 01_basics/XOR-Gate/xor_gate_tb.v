`timescale 1ps/1ps

module xor_gate_tb;

  // Inputs
  reg A;
  reg B;

  // Outputs
  wire Y;

  // Instantiate the Unit Under Test (UUT)
  xor_gate uut (
    .A(A), 
    .B(B), 
    .Y(Y)
  );

  initial begin
    // Initialize Inputs
    A = 0;
    B = 0;

    // Wait for global reset to finish
    #100;

    $monitor("Tiempo=%0t A=%b B=%b Y=%b", $time, A, B, Y);

    // Test all combinations of inputs
    A = 0; B = 0; #100; // Expect Y = 0
    A = 0; B = 1; #100; // Expect Y = 1
    A = 1; B = 0; #100; // Expect Y = 1
    A = 1; B = 1; #100; // Expect Y = 0

    $finish;
  end
endmodule