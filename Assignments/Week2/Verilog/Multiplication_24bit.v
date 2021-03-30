module Multiplication_24bit(MantissasA,MantissasB,outmul,signalout);

input [22:0] MantissasA,MantissasB;
output reg[5:0]signalout;
output [22:0]outmul;

wire [23:0] ManA,ManB;
wire [47:0] outTemp;
wire [22:0] outtemp,outtemp1,outtemp2,outtemp3,outtemp4,outtemp5,outtemp6,outtemp7,outtemp8,outtemp9,outtemp10,outtemp11,outtemp12,outtemp13,outtemp14,outtemp15,outtemp16,outtemp17,outtemp18,outtemp19,outtemp20,outtemp21,outtemp22,outtemp23,outtemp24,outtemp25,outtemp26,outtemp27,outtemp28,outtemp29,outtemp30,outtemp31,outtemp32,outtemp33,outtemp34,outtemp35,outtemp36,outtemp37,outtemp38,outtemp39,outtemp40,outtemp41,outtemp42,outtemp43,outtemp44,outtemp45;

assign ManA={1'b1,MantissasA};
assign ManB={1'b1,MantissasB};
assign outTemp=ManA*ManB;

assign outmul = (outTemp[47] == 1) ? outTemp[46:24] : outtemp ;
assign outtemp = (outTemp[46] == 1) ? outTemp[45:23] : outtemp1;
assign outtemp1 = (outTemp[45] == 1) ? outTemp[44:22] : outtemp2;
assign outtemp2 = (outTemp[44] == 1) ? outTemp[43:21] : outtemp3;
assign outtemp3 = (outTemp[43] == 1) ? outTemp[42:20] : outtemp4;
assign outtemp4 = (outTemp[42] == 1) ? outTemp[41:19] : outtemp5;
assign outtemp5 = (outTemp[41] == 1) ? outTemp[40:18] : outtemp6;
assign outtemp6 = (outTemp[40] == 1) ? outTemp[39:17] : outtemp7;
assign outtemp7 = (outTemp[39] == 1) ? outTemp[38:16] : outtemp8;
assign outtemp8 = (outTemp[38] == 1) ? outTemp[37:15] : outtemp9;
assign outtemp9 = (outTemp[37] == 1) ? outTemp[36:14] : outtemp10;
assign outtemp10 = (outTemp[36] == 1) ? outTemp[35:13] : outtemp11;
assign outtemp11 = (outTemp[35] == 1) ? outTemp[34:12] : outtemp12;
assign outtemp12 = (outTemp[34] == 1) ? outTemp[33:11] : outtemp13;
assign outtemp13 = (outTemp[33] == 1) ? outTemp[32:10] : outtemp14;
assign outtemp14 = (outTemp[32] == 1) ? outTemp[31:9] : outtemp15;
assign outtemp15 = (outTemp[31] == 1) ? outTemp[30:8] : outtemp16;
assign outtemp16 = (outTemp[30] == 1) ? outTemp[29:7] : outtemp17;
assign outtemp17 = (outTemp[29] == 1) ? outTemp[28:6] : outtemp18;
assign outtemp18 = (outTemp[28] == 1) ? outTemp[27:5] : outtemp19;
assign outtemp19 = (outTemp[27] == 1) ? outTemp[26:4] : outtemp20;
assign outtemp20 = (outTemp[26] == 1) ? outTemp[25:3] : outtemp21;
assign outtemp21 = (outTemp[25] == 1) ? outTemp[24:2] : outtemp22;
assign outtemp22 = (outTemp[24] == 1) ? outTemp[23:1] : outtemp23;
assign outtemp23 = (outTemp[23] == 1) ? outTemp[22:0] : outtemp24;
assign outtemp24 = (outTemp[22] == 1) ? outTemp[22:0]<<1 : outtemp25;
assign outtemp25 = (outTemp[21] == 1) ? outTemp[22:0]<<2 : outtemp26;
assign outtemp26 = (outTemp[20] == 1) ? outTemp[22:0]<<3 : outtemp27;
assign outtemp27 = (outTemp[19] == 1) ? outTemp[22:0]<<4 : outtemp28;
assign outtemp28 = (outTemp[18] == 1) ? outTemp[22:0]<<5 : outtemp29;
assign outtemp29 = (outTemp[17] == 1) ? outTemp[22:0]<<6 : outtemp30;
assign outtemp30 = (outTemp[16] == 1) ? outTemp[22:0]<<7 : outtemp31;
assign outtemp31 = (outTemp[15] == 1) ? outTemp[22:0]<<8 : outtemp32;
assign outtemp32 = (outTemp[14] == 1) ? outTemp[22:0]<<9 : outtemp33;
assign outtemp33 = (outTemp[13] == 1) ? outTemp[22:0]<<9 : outtemp34;
assign outtemp34 = (outTemp[12] == 1) ? outTemp[22:0]<<10 : outtemp35;
assign outtemp35 = (outTemp[11] == 1) ? outTemp[22:0]<<11 : outtemp36;
assign outtemp36 = (outTemp[10] == 1) ? outTemp[22:0]<<12 : outtemp37;
assign outtemp37 = (outTemp[9] == 1) ? outTemp[22:0]<<13 : outtemp38;
assign outtemp38 = (outTemp[8] == 1) ? outTemp[22:0]<<14 : outtemp39;
assign outtemp39 = (outTemp[7] == 1) ? outTemp[22:0]<<15 : outtemp40;
assign outtemp40 = (outTemp[6] == 1) ? outTemp[22:0]<<16 : outtemp41;
assign outtemp41 = (outTemp[5] == 1) ? outTemp[22:0]<<17 : outtemp42;
assign outtemp42 = (outTemp[4] == 1) ? outTemp[22:0]<<18 : outtemp43;
assign outtemp43 = (outTemp[3] == 1) ? outTemp[22:0]<<19 : outtemp44;
assign outtemp44 = (outTemp[2] == 1) ? outTemp[22:0]<<20 : outtemp45;
assign outtemp45 = (outTemp[1] == 1) ? outTemp[22:0]<<21 : 23'd0;
always @(*) begin
if (outTemp[47] == 1)
    signalout = 6'd47;
else if (outTemp[46] == 1)
    signalout = 6'd46;
else if (outTemp[45] == 1)
    signalout = 6'd45;
else if (outTemp[44] == 1)
    signalout = 6'd44;
else if (outTemp[43] == 1)
    signalout = 6'd43;
else if (outTemp[42] == 1)
    signalout = 6'd42;
else if (outTemp[41] == 1)
    signalout = 6'd41;
else if (outTemp[40] == 1)
    signalout = 6'd40;
else if (outTemp[39] == 1)
    signalout = 6'd39;
else if (outTemp[38] == 1)
    signalout = 6'd38;
else if (outTemp[37] == 1)
    signalout = 6'd37;
else if (outTemp[36] == 1)
    signalout = 6'd36;
else if (outTemp[35] == 1)
    signalout = 6'd35;
else if (outTemp[34] == 1)
    signalout = 6'd34;
else if (outTemp[33] == 1)
    signalout = 6'd33;
else if (outTemp[32] == 1)
    signalout = 6'd32;
else if (outTemp[31] == 1)
    signalout = 6'd31;
else if (outTemp[30] == 1)
    signalout = 6'd30;
else if (outTemp[29] == 1)
    signalout = 6'd29;
else if (outTemp[28] == 1)
    signalout = 6'd28;
else if (outTemp[27] == 1)
    signalout = 6'd27;
else if (outTemp[26] == 1)
    signalout = 6'd26;
else if (outTemp[25] == 1)
    signalout = 6'd25;
else if (outTemp[24] == 1)
    signalout = 6'd24;
else if (outTemp[23] == 1)
    signalout = 6'd23;
else if (outTemp[22] == 1)
    signalout = 6'd22;
else if (outTemp[21] == 1)
    signalout = 6'd21;
else if (outTemp[20] == 1)
    signalout = 6'd20;
else if (outTemp[19] == 1)
    signalout = 6'd19;
else if (outTemp[18] == 1)
    signalout = 6'd18;
else if (outTemp[17] == 1)
    signalout = 6'd17;
else if (outTemp[16] == 1)
    signalout = 6'd16;
else if (outTemp[15] == 1)
    signalout = 6'd15;
else if (outTemp[14] == 1)
    signalout = 6'd14;
else if (outTemp[13] == 1)
    signalout = 6'd13;
else if (outTemp[12] == 1)
    signalout = 6'd12;
else if (outTemp[11] == 1)
    signalout = 6'd11;
else if (outTemp[10] == 1)
    signalout = 6'd10;
else if (outTemp[9] == 1)
    signalout = 6'd9;
else if (outTemp[8] == 1)
    signalout = 6'd8;
else if (outTemp[7] == 1)
    signalout = 6'd7;
else if (outTemp[6] == 1)
    signalout = 6'd6;
else if (outTemp[5] == 1)
    signalout = 6'd5;
else if (outTemp[4] == 1)
    signalout = 6'd4;
else if (outTemp[3] == 1)
    signalout = 6'd3;
else if (outTemp[2] == 1)
    signalout = 6'd2;
else if (outTemp[1] == 1)
    signalout = 6'd1;
else
    signalout = 6'd0;
end
endmodule