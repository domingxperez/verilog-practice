module DEC_2to4 (
    input [1:0] binary_in,
    output [3:0] one_hot_out
);

    assign one_hot_out = (1 << binary_in);

endmodule