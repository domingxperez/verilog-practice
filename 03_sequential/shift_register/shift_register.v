module shift_register (
    input wire clk,
    input wire rst,
    input wire din,
    output reg [3:0] q
);

    always @(posedge clk or posedge rst) begin
        if (rst)
            q <= 4'b0000;         // Reset asíncrono: pone todo a 0
        else
            q <= {din, q[3:1]};   // Desplaza a la derecha, entra din por MSB
    end

endmodule
