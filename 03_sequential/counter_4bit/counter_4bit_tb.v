`timescale 1ns/1ns

module counter_4bit_tb;
    reg clk;
    reg reset;
    wire [3:0] count;

    counter_4bit uut (
        .clk(clk),
        .reset(reset),
        .count(count)
    );

    // Generador de clock: periodo de 10 ns
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Secuencia de prueba
    initial begin
        $monitor("T=%0t | reset=%b | count=%b", $time, reset, count);

        reset = 1; #10;
        reset = 0; #100;

        reset = 1; #10;
        reset = 0; #50;

        $finish;
    end

endmodule
