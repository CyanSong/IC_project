//module single
//test
//date 2018-03-20

module IDCT_test4 ( d_in_1, d_in_2, d_in_3, d_in_4,
                    reset, clk,
                    d_out);

      input [15:0] d_in_1;
      input [15:0] d_in_2;
      input [15:0] d_in_3;
      input [15:0] d_in_4;
      input reset;
      input clk;
      output [23:0] d_out;

      wire [23:0] multi_out_1;
      wire [23:0] multi_out_2;
      wire [23:0] multi_out_3;
      wire [23:0] multi_out_4;

      wire [23:0] ff_out_1;
      wire [23:0] ff_out_2;
      wire [23:0] ff_out_3;

      wire [23:0] adder_out_1;
      wire [23:0] adder_out_2;

      x64 multi1(d_in_1, multi_out_1);
      xn83 multi2(d_in_2, multi_out_2);
      x64 multi3(d_in_3, multi_out_3);
      xn36 multi4(d_in_4, multi_out_4);

      ff ff1(multi_out_1, ff_out_1, clk, reset);
      ff ff2(adder_out_1, ff_out_2, clk, reset);
      ff ff3(adder_out_2, ff_out_3, clk, reset);

      adder adder1(multi_out_2, ff_out_1, adder_out_1);
      adder adder2(multi_out_3, ff_out_2, adder_out_2);
      adder adder3(multi_out_4, ff_out_3, d_out);

endmodule
