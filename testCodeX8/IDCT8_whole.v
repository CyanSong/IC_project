//IDCT whole
module IDCT8_whole( data_in_1, data_in_2, data_in_3, data_in_4,
                    data_in_5, data_in_6, data_in_7, data_in_8,

                    reset, clk,

                    data_out_1, data_out_2, data_out_3, data_out_4,
					          data_out_5, data_out_6, data_out_7, data_out_8);

        input reset;
        input clk;

        input signed [24:0] data_in_1;
        input signed [24:0] data_in_2;
        input signed [24:0] data_in_3;
        input signed [24:0] data_in_4;
        input signed [24:0] data_in_5;
        input signed [24:0] data_in_6;
        input signed [24:0] data_in_7;
        input signed [24:0] data_in_8;


        output wire signed [24:0] data_out_1;
        output wire signed [24:0] data_out_2;
        output wire signed [24:0] data_out_3;
        output wire signed [24:0] data_out_4;
        output wire signed [24:0] data_out_5;
        output wire signed [24:0] data_out_6;
        output wire signed [24:0] data_out_7;
        output wire signed [24:0] data_out_8;

        wire signed [24:0] prop_1_2 [8:1];
        wire signed [24:0] prop_2_3 [8:1];
        wire signed [24:0] prop_3_4 [8:1];
        wire signed [24:0] prop_4_5 [8:1];
        wire signed [24:0] prop_5_6 [8:1];
        wire signed [24:0] prop_6_7 [8:1];
        wire signed [24:0] prop_7_8 [8:1];

        wire unsigned [3:0] shift1;
        wire unsigned [3:0] shift2;
        wire unsigned [3:0] shift3;
        wire unsigned [3:0] shift4;
        wire unsigned [3:0] shift5;
        wire unsigned [3:0] shift6;
        wire unsigned [3:0] shift7;
        wire unsigned [3:0] shift8;

        wire unsigned [24:0] add1;
        wire unsigned [24:0] add2;
        wire unsigned [24:0] add3;
        wire unsigned [24:0] add4;
        wire unsigned [24:0] add5;
        wire unsigned [24:0] add6;
        wire unsigned [24:0] add7;
        wire unsigned [24:0] add8;

        reg unsigned [4:0] counter;

        wire signed [24:0] data_in_temp1;
        wire signed [24:0] data_in_temp2;
        wire signed [24:0] data_in_temp3;
        wire signed [24:0] data_in_temp4;
        wire signed [24:0] data_in_temp5;
        wire signed [24:0] data_in_temp6;
        wire signed [24:0] data_in_temp7;
        wire signed [24:0] data_in_temp8;

	    wire signed [24:0] data_out_temp1;
        wire signed [24:0] data_out_temp2;
        wire signed [24:0] data_out_temp3;
        wire signed [24:0] data_out_temp4;
        wire signed [24:0] data_out_temp5;
        wire signed [24:0] data_out_temp6;
        wire signed [24:0] data_out_temp7;
        wire signed [24:0] data_out_temp8;

        always @ ( posedge clk ) begin
            if(reset) counter <= 0;

            else if(counter == 16) counter <= 1;

            else begin
              counter <= counter + 1;
            end

        end

        assign data_in_temp1 = (counter<9 ) ? data_in_1 :
							   (counter==9 ) ? data_out_temp1 :
							   (counter==10) ? data_out_temp2 :
							   (counter==11) ? data_out_temp3 :
							   (counter==12) ? data_out_temp4 :
							   (counter==13) ? data_out_temp5 :
							   (counter==14) ? data_out_temp6 :
							   (counter==15) ? data_out_temp7 : data_out_temp8;
							   
        assign data_in_temp2 = (counter==1) ? data_out_temp8:
							   (counter>1 && counter<10) ? data_in_2:
							   (counter==10) ? data_out_temp1 :
							   (counter==11) ? data_out_temp2 :
							   (counter==12) ? data_out_temp3 :
							   (counter==13) ? data_out_temp4 :
							   (counter==14) ? data_out_temp5 :
							   (counter==15) ? data_out_temp6 : data_out_temp7;
							   
        assign data_in_temp3 = (counter==1) ? data_out_temp7 :
							   (counter==2) ? data_out_temp8 :
							   (counter>2 && counter<11) ? data_in_3 :
							   (counter==11) ? data_out_temp1 :
							   (counter==12) ? data_out_temp2 :
							   (counter==13) ? data_out_temp3 :
							   (counter==14) ? data_out_temp4 :
							   (counter==15) ? data_out_temp5 : data_out_temp6;
							   
        assign data_in_temp4 = (counter==1) ? data_out_temp6 :
							   (counter==2) ? data_out_temp7 :
							   (counter==3) ? data_out_temp8 :
							   (counter>3 && counter<12) ? data_in_4 :
							   (counter==12) ? data_out_temp1 :
							   (counter==13) ? data_out_temp2 :
							   (counter==14) ? data_out_temp3 :
							   (counter==15) ? data_out_temp4 : data_out_temp5;
							   
        assign data_in_temp5 = (counter==1) ? data_out_temp5 :
							   (counter==2) ? data_out_temp6 :
							   (counter==3) ? data_out_temp7 :
							   (counter==4) ? data_out_temp8 :
							   (counter>4 && counter<13) ? data_in_5 :
							   (counter==13) ? data_out_temp1 :
							   (counter==14) ? data_out_temp2 :
							   (counter==15) ? data_out_temp3 : data_out_4;
							   
        assign data_in_temp6 = (counter==1) ? data_out_temp4 :
							   (counter==2) ? data_out_temp5 :
							   (counter==3) ? data_out_temp6 :
							   (counter==4) ? data_out_temp7 :
							   (counter==5) ? data_out_temp8 :
							   (counter>5 && counter<14) ? data_in_6 :
							   (counter==14) ? data_out_temp1 :
							   (counter==15) ? data_out_temp2 : data_out_temp3;
							   
        assign data_in_temp7 = (counter==1) ? data_out_temp3 :
							   (counter==2) ? data_out_temp4 :
							   (counter==3) ? data_out_temp5 :
							   (counter==4) ? data_out_temp6 :
							   (counter==5) ? data_out_temp7 :
							   (counter==6) ? data_out_temp8 :
							   (counter>6 && counter<15) ? data_in_7 :
							   (counter==15) ? data_out_temp1 : data_out_temp2;
							   
        assign data_in_temp8 = (counter==1) ? data_out_temp2 :
							   (counter==2) ? data_out_temp3 :
							   (counter==3) ? data_out_temp4 :
							   (counter==4) ? data_out_temp5 :
							   (counter==5) ? data_out_temp6 :
							   (counter==6) ? data_out_temp7 :
							   (counter==7) ? data_out_temp8 :
							   (counter>7 && counter<16) ? data_in_8 : data_out_temp1;

        //shift = 7/12 depending on doing row or col transform
        //when counter<=8 phase col
        assign shift1 = (counter>7 && counter<16 ) ? 4'd7 : 4'd12;
        assign shift2 = (counter>8               ) ? 4'd7 : 4'd12;
        assign shift3 = (counter<2 || counter>9  ) ? 4'd7 : 4'd12;
        assign shift4 = (counter<3 || counter>10 ) ? 4'd7 : 4'd12;
        assign shift5 = (counter<4 || counter>11 ) ? 4'd7 : 4'd12;
        assign shift6 = (counter<5 || counter>12 ) ? 4'd7 : 4'd12;
        assign shift7 = (counter<6 || counter>13 ) ? 4'd7 : 4'd12;
        assign shift8 = (counter<7 || counter>14 ) ? 4'd7 : 4'd12;

        assign add1 = 1 << (shift1 -1);
        assign add2 = 1 << (shift2 -1);
        assign add3 = 1 << (shift3 -1);
        assign add4 = 1 << (shift4 -1);
        assign add5 = 1 << (shift5 -1);
        assign add6 = 1 << (shift6 -1);
        assign add7 = 1 << (shift7 -1);
        assign add8 = 1 << (shift8 -1);
		
		assign data_out_1 = (counter<9) ? d_out_temp1 : 25'd0;
		assign data_out_2 = (counter>1 && counter<10) ? d_out_temp2 : 25'd0;
		assign data_out_3 = (counter>2 && counter<11) ? d_out_temp3 : 25'd0;
		assign data_out_4 = (counter>3 && counter<12) ? d_out_temp4 : 25'd0;
		assign data_out_5 = (counter>4 && counter<13) ? d_out_temp5 : 25'd0;
		assign data_out_6 = (counter>5 && counter<14) ? d_out_temp6 : 25'd0;
		assign data_out_7 = (counter>6 && counter<15) ? d_out_temp7 : 25'd0;
		assign data_out_8 = (counter>7 && counter<16) ? d_out_temp8 : 25'd0;

		

        IDCT_test8_1  module1( .d_in_1( data_in_temp1 ), .d_in_2( data_in_temp2 ), .d_in_3( data_in_temp3 ), .d_in_4( data_in_temp4 ),
							                 .d_in_5( data_in_temp5 ), .d_in_6( data_in_temp6 ), .d_in_7( data_in_temp7 ), .d_in_8( data_in_temp8 ),

							                 .reset(reset), .clk(clk),

							                 .d_out(data_out_temp1),

							                 .d_prop_1( prop_1_2[1] ), .d_prop_2( prop_1_2[2] ), .d_prop_3( prop_1_2[3] ), .d_prop_4( prop_1_2[4] ),
							                 .d_prop_5( prop_1_2[5] ), .d_prop_6( prop_1_2[6] ), .d_prop_7( prop_1_2[7] ), .d_prop_8( prop_1_2[8] ),

							                 .shift( shift1 ), .add( add1 )
							               );

        IDCT_test8_2  module2( .d_in_1( prop_1_2[1] ), .d_in_2( prop_1_2[2] ), .d_in_3( prop_1_2[3] ), .d_in_4( prop_1_2[4] ),
                     				   .d_in_5( prop_1_2[5] ), .d_in_6( prop_1_2[6] ), .d_in_7( prop_1_2[7] ), .d_in_8( prop_1_2[8] ),

                     					 .reset(reset), .clk(clk),

                     					 .d_out(data_out_temp2),

                     					 .d_prop_1( prop_2_3[1] ), .d_prop_2( prop_2_3[2] ), .d_prop_3( prop_2_3[3] ), .d_prop_4( prop_2_3[4] ),
                     					 .d_prop_5( prop_2_3[5] ), .d_prop_6( prop_2_3[6] ), .d_prop_7( prop_2_3[7] ), .d_prop_8( prop_2_3[8] ),

                     					 .shift( shift2 ), .add( add2 )
                     				 );

        IDCT_test8_3  module3( .d_in_1( prop_2_3[1] ), .d_in_2( prop_2_3[2] ), .d_in_3( prop_2_3[3] ), .d_in_4( prop_2_3[4] ),
                               .d_in_5( prop_2_3[5] ), .d_in_6( prop_2_3[6] ), .d_in_7( prop_2_3[7] ), .d_in_8( prop_2_3[8] ),

                               .reset(reset), .clk(clk),

                               .d_out(data_out_temp3),

                               .d_prop_1( prop_3_4[1] ), .d_prop_2( prop_3_4[2] ), .d_prop_3( prop_3_4[3] ), .d_prop_4( prop_3_4[4] ),
                               .d_prop_5( prop_3_4[5] ), .d_prop_6( prop_3_4[6] ), .d_prop_7( prop_3_4[7] ), .d_prop_8( prop_3_4[8] ),

                               .shift( shift3 ), .add( add3 )
                              );

        IDCT_test8_4  module4( .d_in_1( prop_3_4[1] ), .d_in_2( prop_3_4[2] ), .d_in_3( prop_3_4[3] ), .d_in_4( prop_3_4[4] ),
                               .d_in_5( prop_3_4[5] ), .d_in_6( prop_3_4[6] ), .d_in_7( prop_3_4[7] ), .d_in_8( prop_3_4[8] ),

                               .reset(reset), .clk(clk),

                               .d_out(data_out_temp4),

                               .d_prop_1( prop_4_5[1] ), .d_prop_2( prop_4_5[2] ), .d_prop_3( prop_4_5[3] ), .d_prop_4( prop_4_5[4] ),
                               .d_prop_5( prop_4_5[5] ), .d_prop_6( prop_4_5[6] ), .d_prop_7( prop_4_5[7] ), .d_prop_8( prop_4_5[8] ),

                               .shift( shift4 ), .add( add4 )
                            );

        IDCT_test8_5  module5( .d_in_1( prop_4_5[1] ), .d_in_2( prop_4_5[2] ), .d_in_3( prop_4_5[3] ), .d_in_4( prop_4_5[4] ),
  						                 .d_in_5( prop_4_5[5] ), .d_in_6( prop_4_5[6] ), .d_in_7( prop_4_5[7] ), .d_in_8( prop_4_5[8] ),

  						                 .reset(reset), .clk(clk),

  						                 .d_out(data_out_temp5),

  						                 .d_prop_1( prop_5_6[1] ), .d_prop_2( prop_5_6[2] ), .d_prop_3( prop_5_6[3] ), .d_prop_4( prop_5_6[4] ),
  						                 .d_prop_5( prop_5_6[5] ), .d_prop_6( prop_5_6[6] ), .d_prop_7( prop_5_6[7] ), .d_prop_8( prop_5_6[8] ),

  						                 .shift( shift5 ), .add( add5 )
  						               );

        IDCT_test8_6  module6( .d_in_1( prop_5_6[1] ), .d_in_2( prop_5_6[2] ), .d_in_3( prop_5_6[3] ), .d_in_4( prop_5_6[4] ),
                     				   .d_in_5( prop_5_6[5] ), .d_in_6( prop_5_6[6] ), .d_in_7( prop_5_6[7] ), .d_in_8( prop_5_6[8] ),

                     					 .reset(reset), .clk(clk),

                     					 .d_out(data_out_temp6),

                     					 .d_prop_1( prop_6_7[1] ), .d_prop_2( prop_6_7[2] ), .d_prop_3( prop_6_7[3] ), .d_prop_4( prop_6_7[4] ),
                     					 .d_prop_5( prop_6_7[5] ), .d_prop_6( prop_6_7[6] ), .d_prop_7( prop_6_7[7] ), .d_prop_8( prop_6_7[8] ),

                     					 .shift( shift6 ), .add( add6 )
                     				 );

        IDCT_test8_7  module7( .d_in_1( prop_6_7[1] ), .d_in_2( prop_6_7[2] ), .d_in_3( prop_6_7[3] ), .d_in_4( prop_6_7[4] ),
                               .d_in_5( prop_6_7[5] ), .d_in_6( prop_6_7[6] ), .d_in_7( prop_6_7[7] ), .d_in_8( prop_6_7[8] ),

                               .reset(reset), .clk(clk),

                               .d_out(data_out_temp7),

                               .d_prop_1( prop_7_8[1] ), .d_prop_2( prop_7_8[2] ), .d_prop_3( prop_7_8[3] ), .d_prop_4( prop_7_8[4] ),
                               .d_prop_5( prop_7_8[5] ), .d_prop_6( prop_7_8[6] ), .d_prop_7( prop_7_8[7] ), .d_prop_8( prop_7_8[8] ),

                               .shift( shift7 ), .add( add7 )
                              );

        IDCT_test8_8  module8( .d_in_1( prop_7_8[1] ), .d_in_2( prop_7_8[2] ), .d_in_3( prop_7_8[3] ), .d_in_4( prop_7_8[4] ),
                               .d_in_5( prop_7_8[5] ), .d_in_6( prop_7_8[6] ), .d_in_7( prop_7_8[7] ), .d_in_8( prop_7_8[8] ),

                               .reset(reset), .clk(clk),

                               .d_out(data_out_temp8),

                               //.d_prop_1( prop_3_4[1] ), .d_prop_2( prop_3_4[2] ), .d_prop_3( prop_3_4[3] ), .d_prop_4( prop_3_4[4] ),
                               //.d_prop_5( prop_3_4[5] ), .d_prop_6( prop_3_4[6] ), .d_prop_7( prop_3_4[7] ), .d_prop_8( prop_3_4[8] ),

                               .shift( shift8 ), .add( add8 )
                            );

endmodule
