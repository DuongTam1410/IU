module adder8bit (ExponentA,ExponentB,OutAdder,signal);
input [7:0] ExponentA,ExponentB;
input [5:0]signal;
output reg [7:0]OutAdder;
always @(*) begin
if (signal==6'd47)
    OutAdder= (ExponentA+ExponentB) - 8'd127 + 8'd1 ; 
else if (signal == 6'd46)
    OutAdder= (ExponentA+ExponentB) - 8'd127;
else if (signal == 6'd45)
    OutAdder= (ExponentA+ExponentB) - 8'd127 - 8'd1;
else if (signal == 6'd44)
    OutAdder= (ExponentA+ExponentB) - 8'd127 - 8'd2;
else if (signal == 6'd43)
    OutAdder= (ExponentA+ExponentB) - 8'd127 - 8'd3;
else if (signal == 6'd42)
    OutAdder= (ExponentA+ExponentB) - 8'd127 - 8'd4;
else if (signal == 6'd41)
    OutAdder= (ExponentA+ExponentB) - 8'd127 - 8'd5;
else if (signal == 6'd40)
    OutAdder= (ExponentA+ExponentB) - 8'd127 - 8'd6;
else if (signal == 6'd39)
    OutAdder= (ExponentA+ExponentB) - 8'd127 - 8'd7;
else if (signal == 6'd38)
    OutAdder= (ExponentA+ExponentB) - 8'd127 - 8'd8;
else if (signal == 6'd37)
    OutAdder= (ExponentA+ExponentB) - 8'd127 - 8'd9;
else if (signal == 6'd36)
    OutAdder= (ExponentA+ExponentB) - 8'd127 - 8'd10;
else if (signal == 6'd35)
    OutAdder= (ExponentA+ExponentB) - 8'd127 - 8'd11;
else if (signal == 6'd34)
    OutAdder= (ExponentA+ExponentB) - 8'd127 - 8'd12;
else if (signal == 6'd33)
    OutAdder= (ExponentA+ExponentB) - 8'd127 - 8'd13;
else if (signal == 6'd32)
    OutAdder= (ExponentA+ExponentB) - 8'd127 - 8'd14;
else if (signal == 6'd31)
    OutAdder= (ExponentA+ExponentB) - 8'd127 - 8'd15;
else if (signal == 6'd30)
    OutAdder= (ExponentA+ExponentB) - 8'd127 - 8'd16;
else if (signal == 6'd29)
    OutAdder= (ExponentA+ExponentB) - 8'd127 - 8'd17;
else if (signal == 6'd28)
    OutAdder= (ExponentA+ExponentB) - 8'd127 - 8'd18;
else if (signal == 6'd27)
    OutAdder= (ExponentA+ExponentB) - 8'd127 - 8'd19;
else if (signal == 6'd26)
    OutAdder= (ExponentA+ExponentB) - 8'd127 - 8'd20;
else if (signal == 6'd25)
    OutAdder= (ExponentA+ExponentB) - 8'd127 - 8'd21;
else if (signal == 6'd24)
    OutAdder= (ExponentA+ExponentB) - 8'd127 - 8'd22;
else if (signal == 6'd23)
    OutAdder= (ExponentA+ExponentB) - 8'd127 - 8'd23;
else if (signal == 6'd22)
    OutAdder= (ExponentA+ExponentB) - 8'd127 - 8'd24;
else if (signal == 6'd21)
    OutAdder= (ExponentA+ExponentB) - 8'd127 - 8'd25;
else if (signal == 6'd20)
    OutAdder= (ExponentA+ExponentB) - 8'd127 - 8'd26;
else if (signal == 6'd19)
    OutAdder= (ExponentA+ExponentB) - 8'd127 - 8'd27;
else if (signal == 6'd18)
    OutAdder= (ExponentA+ExponentB) - 8'd127 - 8'd28;
else if (signal == 6'd17)
    OutAdder= (ExponentA+ExponentB) - 8'd127 - 8'd29;
else if (signal == 6'd16)
    OutAdder= (ExponentA+ExponentB) - 8'd127 - 8'd30;
else if (signal == 6'd15)
    OutAdder= (ExponentA+ExponentB) - 8'd127 - 8'd31;
else if (signal == 6'd14)
    OutAdder= (ExponentA+ExponentB) - 8'd127 - 8'd32;
else if (signal == 6'd13)
    OutAdder= (ExponentA+ExponentB) - 8'd127 - 8'd33;
else if (signal == 6'd12)
    OutAdder= (ExponentA+ExponentB) - 8'd127 - 8'd34;
else if (signal == 6'd11)
    OutAdder= (ExponentA+ExponentB) - 8'd127 - 8'd35;
else if (signal == 6'd10)
    OutAdder= (ExponentA+ExponentB) - 8'd127 - 8'd36;
else if (signal == 6'd9)
    OutAdder= (ExponentA+ExponentB) - 8'd127 - 8'd37;
else if (signal == 6'd8)
    OutAdder= (ExponentA+ExponentB) - 8'd127 - 8'd38;
else if (signal == 6'd7)
    OutAdder= (ExponentA+ExponentB) - 8'd127 - 8'd39;
else if (signal == 6'd6)
    OutAdder= (ExponentA+ExponentB) - 8'd127 - 8'd40;
else if (signal == 6'd5)
    OutAdder= (ExponentA+ExponentB) - 8'd127 - 8'd41;
else if (signal == 6'd4)
    OutAdder= (ExponentA+ExponentB) - 8'd127 - 8'd42;
else if (signal == 6'd3)
    OutAdder= (ExponentA+ExponentB) - 8'd127 - 8'd43;
else if (signal == 6'd2)
    OutAdder= (ExponentA+ExponentB) - 8'd127 - 8'd44;
else if (signal == 6'd1)
    OutAdder= (ExponentA+ExponentB) - 8'd127 - 8'd45;
else 
    OutAdder=8'd0;
end
endmodule