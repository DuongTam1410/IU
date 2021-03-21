module int_to_float(
        int_input,      /*8bit unsigned decimal*/
        float_output    /*single-precision iee745*/  
        );
    input wire [7:0] int_input; 
    output wire [31:0] float_output;
    assign float_output[31] = 1'b0; // sign bit (0..255)
    wire [7:0]  e; 
    wire [22:0] m;
    assign {e, m} = (int_input[7]) ? {8'd7, {int_input[6:0], 16'd0}}:
                    (int_input[6]) ? {8'd6, {int_input[5:0], 17'd0}}:
                    (int_input[5]) ? {8'd5, {int_input[4:0], 18'd0}}:
                    (int_input[4]) ? {8'd4, {int_input[3:0], 19'd0}}:
                    (int_input[3]) ? {8'd3, {int_input[2:0], 20'd0}}:
                    (int_input[2]) ? {8'd2, {int_input[1:0], 21'd0}}:
                    (int_input[1]) ? {8'd1, {int_input[0]  , 22'd0}}:
                                     {8'd0, 23'd0};
    assign float_output[22:0]  =  (int_input == 0) ? 0 : m; 
    assign float_output[30:23] = (int_input == 0) ? 0 : e + 127;  
endmodule