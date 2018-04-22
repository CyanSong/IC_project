//module single
//test
//date 2018-03-20

module IDCT_whole ( d_in_1_ori, d_in_2_ori, d_in_3_ori, d_in_4_ori,
                    reset, clk,
                    d_out_5_fin, d_out_6_fin, d_out_7_fin, d_out_8_fin);

      input reset;
      input clk;

      input signed [24:0] d_in_1_ori;
      input signed [24:0] d_in_2_ori;
      input signed [24:0] d_in_3_ori;
      input signed [24:0] d_in_4_ori;

      output wire signed [24:0] d_out_5_fin;
      output wire signed [24:0] d_out_6_fin;
      output wire signed [24:0] d_out_7_fin;
      output wire signed [24:0] d_out_8_fin;

      wire signed [24:0] d_in_1;
      wire signed [24:0] d_in_2;
      wire signed [24:0] d_in_3;
      wire signed [24:0] d_in_4;
      
      wire signed [24:0] d_out_1;
      wire signed [24:0] d_out_2;
      wire signed [24:0] d_out_3;
      wire signed [24:0] d_out_4;

      wire signed [24:0] d_in_5;
      wire signed [24:0] d_in_6;
      wire signed [24:0] d_in_7;
      wire signed [24:0] d_in_8;

      wire signed [24:0] d_out_5;
      wire signed [24:0] d_out_6;
      wire signed [24:0] d_out_7;
      wire signed [24:0] d_out_8;
      
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

      wire signed [24:0] int5_6_1;
      wire signed [24:0] int5_6_2;
      wire signed [24:0] int5_6_3;
      wire signed [24:0] int5_6_4;

      wire signed [24:0] int6_7_1;
      wire signed [24:0] int6_7_2;
      wire signed [24:0] int6_7_3;
      wire signed [24:0] int6_7_4;

      wire signed [24:0] int7_8_1;
      wire signed [24:0] int7_8_2;
      wire signed [24:0] int7_8_3;
      wire signed [24:0] int7_8_4;




      reg unsigned [1:0] counter;


      assign d_in_1 = d_in_1_ori;
      ff25 module9(.data_in(d_in_2_ori), .data_out(d_in_2), .clk(clk), .reset(reset));
      delay2 module10(.data_in(d_in_3_ori), .data_out(d_in_3), .clk(clk), .reset(reset));
      delay3 module11(.data_in(d_in_4_ori), .data_out(d_in_4), .clk(clk), .reset(reset));
      
      assign d_out_8_fin = d_out_8;
      ff25 module12(.data_in(d_out_7), .data_out(d_out_7_fin), .clk(clk), .reset(reset));
      delay2 module13(.data_in(d_out_6), .data_out(d_out_6_fin), .clk(clk), .reset(reset));
      delay3 module14(.data_in(d_out_5), .data_out(d_out_5_fin), .clk(clk), .reset(reset));
      

      // delay4 module12(.data_in(d_out_8), .data_out(d_out_8_fin), .clk(clk), .reset(reset));
      // delay5 module13(.data_in(d_out_7), .data_out(d_out_7_fin), .clk(clk), .reset(reset));
      // delay6 module14(.data_in(d_out_6), .data_out(d_out_6_fin), .clk(clk), .reset(reset));
      // delay7 module15(.data_in(d_out_5), .data_out(d_out_5_fin), .clk(clk), .reset(reset));



      always @ ( posedge clk or posedge reset ) begin
          if(reset) counter <= 0;

          else if(counter == 4'd3) begin
              counter <= 4'd0;
          end

          else begin
              counter <= counter + 1;
          end
      end


      assign d_in_5 = (counter == 1) ? d_out_1:
                      (counter == 2) ? d_out_2:
                      (counter == 3) ? d_out_3:d_out_4;
      assign d_in_6 = (counter == 2) ? d_out_1:
                      (counter == 3) ? d_out_2:
                      (counter == 0) ? d_out_3:d_out_4;
      assign d_in_7 = (counter == 3) ? d_out_1:
                      (counter == 0) ? d_out_2:
                      (counter == 1) ? d_out_3:d_out_4;
      assign d_in_8 = (counter == 0) ? d_out_1:
                      (counter == 1) ? d_out_2:
                      (counter == 2) ? d_out_3:d_out_4;


      IDCT_test1 module1( .d_in_1(d_in_1), .d_in_2(d_in_2), .d_in_3(d_in_3), .d_in_4(d_in_4),
                    .reset(reset), .clk(clk),
                    .d_out(d_out_1), .d_out_1(int1_2_1), .d_out_2(int1_2_2), .d_out_3(int1_2_3), .d_out_4(int1_2_4));

      IDCT_test2 module2( .d_in_1(int1_2_1), .d_in_2(int1_2_2), .d_in_3(int1_2_3), .d_in_4(int1_2_4),
                    .reset(reset), .clk(clk),
                    .d_out(d_out_2), .d_out_1(int2_3_1), .d_out_2(int2_3_2), .d_out_3(int2_3_3), .d_out_4(int2_3_4));

      IDCT_test3 module3( .d_in_1(int2_3_1), .d_in_2(int2_3_2), .d_in_3(int2_3_3), .d_in_4(int2_3_4),
                    .reset(reset), .clk(clk),
                    .d_out(d_out_3), .d_out_1(int3_4_1), .d_out_2(int3_4_2), .d_out_3(int3_4_3), .d_out_4(int3_4_4));

      IDCT_test4 module4( .d_in_1(int3_4_1), .d_in_2(int3_4_2), .d_in_3(int3_4_3), .d_in_4(int3_4_4),
                    .reset(reset), .clk(clk),
                    .d_out(d_out_4));


      IDCT_test5 module5( .d_in_1(d_in_5), .d_in_2(d_in_6), .d_in_3(d_in_7), .d_in_4(d_in_8),
                    .reset(reset), .clk(clk),
                    .d_out(d_out_5), .d_out_1(int5_6_1), .d_out_2(int5_6_2), .d_out_3(int5_6_3), .d_out_4(int5_6_4));

      IDCT_test6 module6( .d_in_1(int5_6_1), .d_in_2(int5_6_2), .d_in_3(int5_6_3), .d_in_4(int5_6_4),
                    .reset(reset), .clk(clk),
                    .d_out(d_out_6), .d_out_1(int6_7_1), .d_out_2(int6_7_2), .d_out_3(int6_7_3), .d_out_4(int6_7_4));

      IDCT_test7 module7( .d_in_1(int6_7_1), .d_in_2(int6_7_2), .d_in_3(int6_7_3), .d_in_4(int6_7_4),
                    .reset(reset), .clk(clk),
                    .d_out(d_out_7), .d_out_1(int7_8_1), .d_out_2(int7_8_2), .d_out_3(int7_8_3), .d_out_4(int7_8_4));

      IDCT_test8 module8( .d_in_1(int7_8_1), .d_in_2(int7_8_2), .d_in_3(int7_8_3), .d_in_4(int7_8_4),
                    .reset(reset), .clk(clk),
                    .d_out(d_out_8));













endmodule
