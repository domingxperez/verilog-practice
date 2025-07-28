`timescale 1ns/1ns

module D_flip_flop_tb;

    reg clk;
    reg d;
    wire q;

    // Instancia del módulo
    D_flip_flop uut (
        .clk(clk),
        .d(d),
        .q(q)
    );

    // Generador de reloj: alterna cada 5 ns (10 ns de periodo)
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Prueba de señales
    initial begin
        $monitor("Time=%0t | clk=%b | d=%b | q=%b", $time, clk, d, q);

        d = 0; #12;  // se toma en siguiente flanco
        d = 1; #10;
        d = 0; #10;
        d = 1; #10;
        $finish;
    end

endmodule
