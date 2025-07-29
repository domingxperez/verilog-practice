`timescale 1ns/1ns

module shift_register_tb;
    reg clk;
    reg rst;
    reg din;
    wire [3:0] q;

    // Instancia del módulo
    shift_register uut (
        .clk(clk),
        .rst(rst),
        .din(din),
        .q(q)
    );

    // Generación de reloj: periodo de 10ns
    always #5 clk = ~clk;

    initial begin
        $monitor("Time=%0t | rst=%b | din=%b | q=%b", $time, rst, din, q);

        // Inicialización
        clk = 0;
        rst = 1;
        din = 0;
        #10;

        rst = 0;
        din = 1; #10;  // Inserta 1
        din = 0; #10;  // Inserta 0
        din = 1; #10;  // Inserta 1
        din = 1; #10;  // Inserta 1
        din = 0; #10;  // Inserta 0

        rst = 1; #10;  // Reset
        rst = 0; din = 1; #10;

        $finish;
    end
endmodule
