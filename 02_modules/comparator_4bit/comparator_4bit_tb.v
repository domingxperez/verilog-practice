`timescale 1ns / 1ps

module comparator_4bit_tb;

    reg [3:0] a;
    reg [3:0] b;
    wire a_gt_b;
    wire a_eq_b;
    wire a_lt_b;

    // Instantiate the comparator_4bit module
    comparator_4bit uut (
        .a(a),
        .b(b),
        .a_gt_b(a_gt_b),
        .a_eq_b(a_eq_b),
        .a_lt_b(a_lt_b)
    );

    initial begin

        $monitor("a = %b, b = %b, a_gt_b = %b, a_eq_b = %b, a_lt_b = %b", a, b, a_gt_b, a_eq_b, a_lt_b);
        // Test case 1: a = 4'b0000, b = 4'b0000
        a = 4'b0000; b = 4'b0000;
        #10;
        // Test case 2: a = 4'b0001, b = 4'b0000
        a = 4'b0001; b = 4'b0000;
        #10;
        // Test case 3: a = 4'b0010, b = 4'b0011
        a = 4'b0010; b = 4'b0011;
        #10;
        // Test case 4: a = 4'b1111, b = 4'b0111
        a = 4'b1111; b = 4'b0111;
        #10;
    end
endmodule