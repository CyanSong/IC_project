//module single
//test
//date 2018-03-20

module IDCT_whole ( d_in_1, d_in_2, d_in_3, d_in_4,
                    reset, clk,
                    d_out_1, d_out_2, d_out_3, d_out_4);
      input [15:0] d_in_1;
      input [15:0] d_in_2;
      input [15:0] d_in_3;
      input [15:0] d_in_4;
      input reset;
      input clk;
      output [23:0] d_out_1;
      output [23:0] d_out_2;
      output [23:0] d_out_3;
      output [23:0] d_out_4;

      wire [15:0] int1_2_1;
      wire [15:0] int1_2_2;
      wire [15:0] int1_2_3;
      wire [15:0] int1_2_4;
      
      wire [15:0] int2_3_1;
      wire [15:0] int2_3_2;
      wire [15:0] int2_3_3;
      wire [15:0] int2_3_4;
      
      wire [15:0] int3_4_1;
      wire [15:0] int3_4_2;
      wire [15:0] int3_4_3;
      wire [15:0] int3_4_4;

      IDCT_test1 module1( .d_in_1(d_in_1), .d_in_2(d_in_2), .d_in_3(d_in_3), .d_in_4(d_in_4),
                    .reset(reset), .clk(clk),
                    .d_out(d_out_1), .d_out_1(int1_2_1), .d_out_2(int1_2_2), .d_out_3(int1_2_3), .d_out_4(int1_2_4));

      IDCT_test2 module2( .d_in_1(d_in_1), .d_in_2(d_in_2), .d_in_3(d_in_3), .d_in_4(d_in_4),
                    .reset(reset), .clk(clk),
                    .d_out(d_out_2), .d_out_1(int2_3_1), .d_out_2(int2_3_2), .d_out_3(int2_3_3), .d_out_4(int2_3_4));
      
      IDCT_test3 module3( .d_in_1(d_in_1), .d_in_2(d_in_2), .d_in_3(d_in_3), .d_in_4(d_in_4),
                    .reset(reset), .clk(clk),
                    .d_out(d_out_3), .d_out_1(int3_4_1), .d_out_2(int3_4_2), .d_out_3(int3_4_3), .d_out_4(int3_4_4));
      
      IDCT_test4 module4( .d_in_1(d_in_1), .d_in_2(d_in_2), .d_in_3(d_in_3), .d_in_4(d_in_4),
                    .reset(reset), .clk(clk),
                    .d_out(d_out_4));



      
endmodule
