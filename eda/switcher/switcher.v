`timescale 1ns/1ns

module switcher(reset, clk, sda, motors_in,
    servo_in, motors_out, servos_out);
input reset;
input clk;
input sda;
input[5:0] motors_in;
input servo_in;
reg[5:0] motors_reg;
reg[5:0] servos_reg;
reg[7:0] msg;
reg[3:0] bitcnt = 4'h0;
output[11:0] motors_out;
output[5:0] servos_out;

genvar i;
generate
    for (i = 0; i < 6; i = i + 1) begin : MOTORS
        assign motors_out[i*2] = (~motors_reg[i]) & motors_in[i];
        assign motors_out[i*2+1] = motors_reg[i] & motors_in[i];
    end

    for (i = 0; i < 6; i = i + 1) begin : SERVOS
        assign servos_out[i] = servos_reg[i] & servo_in;
    end
endgenerate

always @(posedge clk) begin
    if (reset == 1) begin
        msg <= 8'h00;
        bitcnt <= 4'h0;
    end
    else begin
        if (bitcnt  < 9) begin
            msg[bitcnt-1] <= sda;
            bitcnt <= bitcnt + 1;
        end
        else begin
            case (msg[1:0])
                2'b0: motors_reg[5:0] <= msg[7:2];
                2'b1: servos_reg[5:0] <= msg[7:2];
                default: ;
            endcase
        end
    end
end

endmodule
