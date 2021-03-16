module array (out);
output [319:0] out;
wire[319:0] out;

assign out[31:0] = 32'b01000001010101100000000000000000;
assign out[63:32] = 32'b00111111000000000000000000000000;
assign out[95:64] = 32'b00111110101010101010101010101010;
assign out[127:96] = 32'b00111110100000000000000000000000;
assign out[159:128] = 32'b00111110010011001100110011001100;
assign out[191:160] = 32'b00111110001010101010101010101010;
assign out[223:192] = 32'b00111110000100100100100100100100;
assign out[255:224] = 32'b00111110000000000000000000000000;
assign out[287:256] = 32'b00111101111000111000111000111000;
assign out[319:288] = 32'b00111101110011001100110011001100;
endmodule