`timescale 1ns/1ns

module fsm_simple_tb;

    reg clk;
    reg reset;
    wire [1:0] state;

    // Instancia del DUT
    fsm_simple uut (
        .clk(clk),
        .reset(reset),
        .state(state)
    );

    // Clock
    always #5 clk = ~clk;

    // Mostrar estado en texto
    always @(posedge clk) begin
        $display("%0t | Reset = %b | State = %s", $time, reset, state_string(state));
    end

    // Función que convierte el estado a string
    function [8*10:1] state_string;
        input [1:0] s;
        begin
            case (s)
                2'b00: state_string = "IDLE";
                2'b01: state_string = "LOAD";
                2'b10: state_string = "EXECUTE";
                2'b11: state_string = "DONE";
                default: state_string = "UNKNOWN";
            endcase
        end
    endfunction

    initial begin
        clk = 0;
        reset = 1;

        #10 reset = 0;
        #80;

        reset = 1;
        #10 reset = 0;
        #40;

        $finish;
    end

endmodule
