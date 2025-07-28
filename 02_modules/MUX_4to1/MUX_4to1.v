module MUX_4to1 (
    input wire A,
    input wire B,
    input wire C,
    input wire D,
    input wire [1:0] Sel,
    output wire Y
);
    assign Y = (Sel == 2'b00) ? A :
               (Sel == 2'b01) ? B :
               (Sel == 2'b10) ? C : D;
endmodule