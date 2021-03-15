module small_alu (in1, in2, bigger , out);  
    
	 input [7:0] in1, in2;
	 output [7:0] out;
	 output bigger;
	 
	 wire bigger;
	 
	 assign bigger = in1 > in2;
	 assign out = (bigger) ?  (in1 - in2) : (in2 - in1);

endmodule
	
    	