module divisor(
    input logic clk, rst, start,
    input logic[15:0] dividendo,
    input logic[15:0] divisor, 
    output logic ready, done_tick,
    output logic[15:0] quociente,
    output logic [15:0] resto
);

    typedef enum {idle, op, done} state_type;
    state_type state_reg, state_next;

    logic [15:0] acumulador_reg, acumulador_next, quociente_reg, quociente_next;

    always_ff @(posedge clk or posedge rst) begin
        if (rst) begin
            state_reg <= idle;
            acumulador_reg <= 0;
            quociente_reg <= 0;
        end else begin
            state_reg <= state_next;
            acumulador_reg <= acumulador_next;
            quociente_reg <= quociente_next;
        end
    end

    always_comb begin
        state_next = state_reg;
        ready = 1'b0;
        done_tick = 1'b0;
        acumulador_next = acumulador_reg;
        quociente_next = quociente_reg;
        resto = acumulador_reg;

        quociente = quociente_reg;
        resto = acumulador_reg;

        case (state_reg)
            idle: begin
                ready = 1'b1;
                if (start) begin
                    if (divisor != 0) begin
                        acumulador_next = dividendo;
                        quociente_next = 0;
                        state_next = op;
                    end else begin
                        state_next = idle;
                    end
                end
            end
            op: begin
                if (acumulador_reg >= divisor) begin
                    acumulador_next = acumulador_reg - divisor;
                    quociente_next = quociente_reg + 1;
                    state_next = op;
                end else begin
                    state_next = done;
                end
            end
            done: begin
                done_tick = 1'b1;
                quociente = quociente_reg;
                resto = acumulador_reg;
                state_next = idle;
            end
            default: begin
                state_next = idle;
            end
        endcase
    end
endmodule



