`timescale 1ns/1ns

module switcher(reset, clk, sda, lines_in, lines_out);
input reset;
input clk;
input sda;
input[7:0] lines_in;
reg[7:0] data;
reg[3:0] bitcnt = 4'h0;
output[15:0] lines_out;

genvar i;
generate
    for (i = 0; i < 8; i = i + 1) begin : ADD_SW
        assign lines_out[i*2] = (~data[i]) & lines_in[i];
        assign lines_out[i*2+1] = data[i] & lines_in[i];
    end
endgenerate

always @(posedge clk) begin
    if (reset == 1) begin
        data <= 8'h00;
        bitcnt <= 4'h0;
    end
    else begin
        bitcnt <= bitcnt + 1;
        data[bitcnt-1] <= sda;
    end
end

endmodule
