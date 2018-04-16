//module single
//test
//date 2018-03-20

module IDCT_test8 ( d_in_1, d_in_2, d_in_3, d_in_4,
                    reset, clk,
                    d_out);


      input reset;
      input clk;

      input signed [24:0] d_in_1;
      input signed [24:0] d_in_2;
      input signed [24:0] d_in_3;
      input signed [24:0] d_in_4;
      parameter unsigned shift = 12;
      parameter signed add = 2048;

      output reg signed [24:0] d_out;

      //output [24:0] d_out_1;
      //output [24:0] d_out_2;
      //output [24:0] d_out_3;
      //output [24:0] d_out_4;

      wire signed [24:0] d_out_temp;
      wire signed [24:0] multi_out_1;
      wire signed [24:0] multi_out_2;
      wire signed [24:0] multi_out_3;
      wire signed [24:0] multi_out_4;

      wire signed [24:0] ff_out_1;
      wire signed [24:0] ff_out_2;
      wire signed [24:0] ff_out_3;

      wire signed [24:0] adder_out_1;
      wire signed [24:0] adder_out_2;

      assign multi_out_1 = d_in_1 * 64;
      assign multi_out_2 = d_in_2 * -83;
      assign multi_out_3 = d_in_3 * 64;
      assign multi_out_4 = d_in_4 * -36;

      ff25 ff1(multi_out_1, ff_out_1, clk, reset);
      ff25 ff2(adder_out_1, ff_out_2, clk, reset);
      ff25 ff3(adder_out_2, ff_out_3, clk, reset);


      assign adder_out_1 = multi_out_2 + ff_out_1; 
      assign adder_out_2 = multi_out_3 + ff_out_2; 
      assign d_out_temp = multi_out_4 + ff_out_3; 


      always @(posedge clk or posedge reset) begin
          if(reset) d_out <= 25'd0;
          else d_out <= (d_out_temp + add ) >>> shift;
      end

endmodule
