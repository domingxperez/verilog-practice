module fsm_simple (
    input wire clk,
    input wire reset,
    output reg [1:0] state
);

// Codificación de estados
parameter IDLE = 2'b00,
          LOAD = 2'b01,
          EXECUTE = 2'b10,
          DONE = 2'b11;

always @(posedge clk or posedge reset) begin
    if (reset)
        state <= IDLE;
    else begin
        case (state)
            IDLE:    state <= LOAD;
            LOAD:    state <= EXECUTE;
            EXECUTE: state <= DONE;
            DONE:    state <= IDLE;
            default: state <= IDLE;
        endcase
    end
end

endmodule
