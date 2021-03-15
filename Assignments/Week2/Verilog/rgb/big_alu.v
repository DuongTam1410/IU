module big_alu (in1, in2, 	out);
    
	 input [22:0] in1, in2;
	 output [22:0] out;
	 
	 wire [22:0] out;
	 
	 assign out = in1 + in2;
	 
endmodule