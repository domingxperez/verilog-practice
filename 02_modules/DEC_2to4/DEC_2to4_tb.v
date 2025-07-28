`timescale 1ps/1ps

module DEC_2to4_tb;

    reg [1:0] binary_in;
    wire [3:0] one_hot_out;

    DEC_2to4 uut (
        .binary_in(binary_in),
        .one_hot_out(one_hot_out)
    );

    initial begin
        // Monitor changes
        $monitor("Time: %0t | binary_in: %b | one_hot_out: %b", 
                 $time, binary_in, one_hot_out);
        // Test all possible inputs
        binary_in = 2'b00; #10;
        binary_in = 2'b01; #10;
        binary_in = 2'b10; #10;
        binary_in = 2'b11; #10;
        $finish;
    end 
endmodule