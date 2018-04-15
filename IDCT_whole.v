//module single
//test
//date 2018-03-20

module IDCT_whole ( d_in_1, d_in_2, d_in_3, d_in_4,
                    reset, clk,
                    d_out_1, d_out_2, d_out_3, d_out_4);

      input reset;
      input clk;

      input signed [24:0] d_in_1;
      input signed [24:0] d_in_2;
      input signed [24:0] d_in_3;
      input signed [24:0] d_in_4;

      output wire signed [24:0] d_out_1;
      output wire signed [24:0] d_out_2;
      output wire signed [24:0] d_out_3;
      output wire signed [24:0] d_out_4;

      wire signed [24:0] int1_2_1;
      wire signed [24:0] int1_2_2;
      wire signed [24:0] int1_2_3;
      wire signed [24:0] int1_2_4;

      wire signed [24:0] int2_3_1;
      wire signed [24:0] int2_3_2;
      wire signed [24:0] int2_3_3;
      wire signed [24:0] int2_3_4;

      wire signed [24:0] int3_4_1;
      wire signed [24:0] int3_4_2;
      wire signed [24:0] int3_4_3;
      wire signed [24:0] int3_4_4;

      reg unsigned [3:0] counter;
      wire [3:0] shift_1;
      wire [3:0] shift_2;
      wire [3:0] shift_3;
      wire [3:0] shift_4;

      wire signed [24:0] add_1;
      wire signed [24:0] add_2;
      wire signed [24:0] add_3;
      wire signed [24:0] add_4;

      wire signed [24:0] d_in_1_temp;
      wire signed [24:0] d_in_2_temp;
      wire signed [24:0] d_in_3_temp;
      wire signed [24:0] d_in_4_temp;

      wire signed [24:0] d_out_1_temp;
      wire signed [24:0] d_out_2_temp;
      wire signed [24:0] d_out_3_temp;
      wire signed [24:0] d_out_4_temp;

      always @ ( posedge clk or posedge reset ) begin
          if(reset) counter <= 0;

          else if(counter == 4'd8) begin
              counter <= 4'd1;
          end

          else begin
              counter <= counter + 1;
          end
      end

      assign shift_1 = (counter>3 && counter<8) ? 4'd7 : 4'd12;
      assign add_1 = 1<<(shift_1 - 1);

      assign shift_2 = (counter>4) ? 4'd7 : 4'd12;
      assign add_2 = 1 << (shift_2 - 1);

      assign shift_3 = (counter<2 || counter>5) ? 4'd7 : 4'd12;
      assign add_3 = 1 << (shift_3 - 1);

      assign shift_4 = (counter<3 || counter>6) ? 4'd7 : 4'd12;
      assign add_4 = 1 << (shift_4 - 1);

      assign d_in_1_temp = (counter < 5) ? d_in_1:
                           (counter == 5) ? d_out_1_temp:
                           (counter == 6) ? d_out_2_temp:
                           (counter == 7) ? d_out_3_temp : d_out_4_temp;

      assign d_in_2_temp = (counter == 1) ? d_out_4_temp :
                           (counter>1 && counter<6 ) ? d_in_2:
                           (counter == 6) ? d_out_1_temp:
                           (counter == 7) ? d_out_2_temp : d_out_3_temp;

      assign d_in_3_temp = (counter == 1) ? d_out_3_temp:
                           (counter == 2) ? d_out_4_temp:
                           (counter>2 && counter<7) ? d_in_3:
                           (counter == 7) ? d_out_1_temp : d_out_2_temp;

      assign d_in_4_temp = (counter == 1) ? d_out_2_temp:
                           (counter == 2) ? d_out_3_temp:
                           (counter == 3) ? d_out_4_temp:
                           (counter>3 && counter<8) ? d_in_4 : d_out_1_temp;

      assign d_out_1 = (counter<5) ? d_out_1_temp : 25'd0;
      assign d_out_2 = (counter>1 && counter<6) ? d_out_2_temp : 25'd0;
      assign d_out_3 = (counter>2 && counter<7) ? d_out_3_temp : 25'd0;
      assign d_out_4 = (counter>3 && counter<8) ? d_out_4_temp : 25'd0;

      IDCT_test1 module1( .d_in_1(d_in_1_temp), .d_in_2(d_in_2_temp), .d_in_3(d_in_3_temp), .d_in_4(d_in_4_temp),
                    .reset(reset), .clk(clk),
                    .d_out(d_out_1_temp), .d_out_1(int1_2_1), .d_out_2(int1_2_2), .d_out_3(int1_2_3), .d_out_4(int1_2_4),
                    .shift(shift_1), .add(add_1));

      IDCT_test2 module2( .d_in_1(int1_2_1), .d_in_2(int1_2_2), .d_in_3(int1_2_3), .d_in_4(int1_2_4),
                    .reset(reset), .clk(clk),
                    .d_out(d_out_2_temp), .d_out_1(int2_3_1), .d_out_2(int2_3_2), .d_out_3(int2_3_3), .d_out_4(int2_3_4),
                    .shift(shift_2), .add(add_2));

      IDCT_test3 module3( .d_in_1(int2_3_1), .d_in_2(int2_3_2), .d_in_3(int2_3_3), .d_in_4(int2_3_4),
                    .reset(reset), .clk(clk),
                    .d_out(d_out_3_temp), .d_out_1(int3_4_1), .d_out_2(int3_4_2), .d_out_3(int3_4_3), .d_out_4(int3_4_4),
                    .shift(shift_3), .add(add_3));

      IDCT_test4 module4( .d_in_1(int3_4_1), .d_in_2(int3_4_2), .d_in_3(int3_4_3), .d_in_4(int3_4_4),
                    .reset(reset), .clk(clk),
                    .d_out(d_out_4_temp),
                    .shift(shift_4), .add(add_4));
endmodule
