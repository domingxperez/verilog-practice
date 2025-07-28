module counter_4bit (
    input wire clk,         // Reloj síncrono
    input wire reset,       // Reset asíncrono
    output reg [3:0] count  // Salida de 4 bits
);

    always @(posedge clk or posedge reset) begin
        if (reset)
            count <= 4'b0000;       // Reinicio inmediato si reset es 1
        else
            count <= count + 1;     // Incremento en cada flanco de subida
    end

endmodule
