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
		
		wire unsigned [3:0]  shift_col;
		wire signed   [24:0] add_col;
		wire unsigned [3:0]  shift_row;
		wire signed   [24:0] add_row;
		
        wire signed [24:0] prop_11_2 [8:1];
        wire signed [24:0] prop_12_3 [8:1];
        wire signed [24:0] prop_13_4 [8:1];
        wire signed [24:0] prop_14_5 [8:1];
        wire signed [24:0] prop_15_6 [8:1];
        wire signed [24:0] prop_16_7 [8:1];
        wire signed [24:0] prop_17_8 [8:1];

		wire signed [24:0] prop_21_2 [8:1];
        wire signed [24:0] prop_22_3 [8:1];
        wire signed [24:0] prop_23_4 [8:1];
        wire signed [24:0] prop_24_5 [8:1];
        wire signed [24:0] prop_25_6 [8:1];
        wire signed [24:0] prop_26_7 [8:1];
        wire signed [24:0] prop_27_8 [8:1];
      
        reg unsigned [4:0] counter;
		
		    wire signed [24:0] data_out_temp1;
        wire signed [24:0] data_out_temp2;
        wire signed [24:0] data_out_temp3;
        wire signed [24:0] data_out_temp4;
        wire signed [24:0] data_out_temp5;
        wire signed [24:0] data_out_temp6;
        wire signed [24:0] data_out_temp7;
        wire signed [24:0] data_out_temp8;
	
        wire signed [24:0] data_in_temp1;
        wire signed [24:0] data_in_temp2;
        wire signed [24:0] data_in_temp3;
        wire signed [24:0] data_in_temp4;
        wire signed [24:0] data_in_temp5;
        wire signed [24:0] data_in_temp6;
        wire signed [24:0] data_in_temp7;
        wire signed [24:0] data_in_temp8;
		
		assign data_in_temp1 = (counter==1) ? data_out_temp1 :
							   (counter==2) ? data_out_temp2 :
							   (counter==3) ? data_out_temp3 : 
							   (counter==4) ? data_out_temp4 :
							   (counter==5) ? data_out_temp5 :
							   (counter==6) ? data_out_temp6 :
							   (counter==7) ? data_out_temp7 : data_out_temp8;
							   
		assign data_in_temp2 = (counter==2) ? data_out_temp1 :
							   (counter==3) ? data_out_temp2 :
							   (counter==4) ? data_out_temp3 :
							   (counter==5) ? data_out_temp4 :
							   (counter==6) ? data_out_temp5 :
							   (counter==7) ? data_out_temp6 :
							   (counter==8) ? data_out_temp7 : data_out_temp8;
							  
		assign data_in_temp3 = (counter==3) ? data_out_temp1 :
							   (counter==4) ? data_out_temp2 :
							   (counter==5) ? data_out_temp3 :
							   (counter==6) ? data_out_temp4 :
							   (counter==7) ? data_out_temp5 :
							   (counter==8) ? data_out_temp6 :
							   (counter==1) ? data_out_temp7 : data_out_temp8;
							   
		assign data_in_temp4 = (counter==4) ? data_out_temp1 :
							   (counter==5) ? data_out_temp2 :
							   (counter==6) ? data_out_temp3 :
							   (counter==7) ? data_out_temp4 :
							   (counter==8) ? data_out_temp5 :
							   (counter==1) ? data_out_temp6 :
							   (counter==2) ? data_out_temp7 : data_out_temp8;					   
		
		assign data_in_temp5 = (counter==5) ? data_out_temp1 :
							   (counter==6) ? data_out_temp2 :
							   (counter==7) ? data_out_temp3 :
							   (counter==8) ? data_out_temp4 :
							   (counter==1) ? data_out_temp5 :
							   (counter==2) ? data_out_temp6 :
							   (counter==3) ? data_out_temp7 : data_out_temp8;
		
		assign data_in_temp6 = (counter==6) ? data_out_temp1 :
							   (counter==7) ? data_out_temp2 :
							   (counter==8) ? data_out_temp3 :
							   (counter==1) ? data_out_temp4 :
							   (counter==2) ? data_out_temp5 :
							   (counter==3) ? data_out_temp6 :
							   (counter==4) ? data_out_temp7 : data_out_temp8;
		
		assign data_in_temp7 = (counter==7) ? data_out_temp1 :
							   (counter==8) ? data_out_temp2 :
							   (counter==1) ? data_out_temp3 :
							   (counter==2) ? data_out_temp4 :
							   (counter==3) ? data_out_temp5 :
							   (counter==4) ? data_out_temp6 :
							   (counter==5) ? data_out_temp7 : data_out_temp8;
							   
		assign data_in_temp8 = (counter==8) ? data_out_temp1 :
							   (counter==1) ? data_out_temp2 :
							   (counter==2) ? data_out_temp3 :
							   (counter==3) ? data_out_temp4 :
							   (counter==4) ? data_out_temp5 :
							   (counter==5) ? data_out_temp6 :
							   (counter==6) ? data_out_temp7 : data_out_temp8;
							   
		assign shift_col = 4'd7;
		assign add_col = 24'd64;
		assign shift_row = 4'd12;
		assign add_row = 24'd2048;
		
        always @ ( posedge clk or posedge reset) begin
            if(reset) counter <= 0;

            else if(counter == 8) counter <= 1;

            else begin
              counter <= counter + 1;
            end

        end
		

        IDCT_test8_1  module11( .d_in_1( data_in_1 ), .d_in_2( data_in_2 ), .d_in_3( data_in_3 ), .d_in_4( data_in_4 ),
							                 .d_in_5( data_in_5 ), .d_in_6( data_in_6 ), .d_in_7( data_in_7 ), .d_in_8( data_in_8 ),

							                 .reset(reset), .clk(clk),

							                 .d_out(data_out_temp1),

							                 .d_prop_1( prop_11_2[1] ), .d_prop_2( prop_11_2[2] ), .d_prop_3( prop_11_2[3] ), .d_prop_4( prop_11_2[4] ),
							                 .d_prop_5( prop_11_2[5] ), .d_prop_6( prop_11_2[6] ), .d_prop_7( prop_11_2[7] ), .d_prop_8( prop_11_2[8] ),

							                 .shift( shift_col ), .add( add_col )
							               );

        IDCT_test8_2  module12( .d_in_1( prop_11_2[1] ), .d_in_2( prop_11_2[2] ), .d_in_3( prop_11_2[3] ), .d_in_4( prop_11_2[4] ),
                     				   .d_in_5( prop_11_2[5] ), .d_in_6( prop_11_2[6] ), .d_in_7( prop_11_2[7] ), .d_in_8( prop_11_2[8] ),

                     					 .reset(reset), .clk(clk),

                     					 .d_out(data_out_temp2),

                     					 .d_prop_1( prop_12_3[1] ), .d_prop_2( prop_12_3[2] ), .d_prop_3( prop_12_3[3] ), .d_prop_4( prop_12_3[4] ),
                     					 .d_prop_5( prop_12_3[5] ), .d_prop_6( prop_12_3[6] ), .d_prop_7( prop_12_3[7] ), .d_prop_8( prop_12_3[8] ),

                     					 .shift( shift_col ), .add( add_col )
                     				 );

        IDCT_test8_3  module13( .d_in_1( prop_12_3[1] ), .d_in_2( prop_12_3[2] ), .d_in_3( prop_12_3[3] ), .d_in_4( prop_12_3[4] ),
                               .d_in_5( prop_12_3[5] ), .d_in_6( prop_12_3[6] ), .d_in_7( prop_12_3[7] ), .d_in_8( prop_12_3[8] ),

                               .reset(reset), .clk(clk),

                               .d_out(data_out_temp3),

                               .d_prop_1( prop_13_4[1] ), .d_prop_2( prop_13_4[2] ), .d_prop_3( prop_13_4[3] ), .d_prop_4( prop_13_4[4] ),
                               .d_prop_5( prop_13_4[5] ), .d_prop_6( prop_13_4[6] ), .d_prop_7( prop_13_4[7] ), .d_prop_8( prop_13_4[8] ),

                               .shift( shift_col ), .add( add_col )
                              );

        IDCT_test8_4  module14( .d_in_1( prop_13_4[1] ), .d_in_2( prop_13_4[2] ), .d_in_3( prop_13_4[3] ), .d_in_4( prop_13_4[4] ),
                               .d_in_5( prop_13_4[5] ), .d_in_6( prop_13_4[6] ), .d_in_7( prop_13_4[7] ), .d_in_8( prop_13_4[8] ),

                               .reset(reset), .clk(clk),

                               .d_out(data_out_temp4),

                               .d_prop_1( prop_14_5[1] ), .d_prop_2( prop_14_5[2] ), .d_prop_3( prop_14_5[3] ), .d_prop_4( prop_14_5[4] ),
                               .d_prop_5( prop_14_5[5] ), .d_prop_6( prop_14_5[6] ), .d_prop_7( prop_14_5[7] ), .d_prop_8( prop_14_5[8] ),

                               .shift( shift_col ), .add( add_col )
                            );

        IDCT_test8_5  module15( .d_in_1( prop_14_5[1] ), .d_in_2( prop_14_5[2] ), .d_in_3( prop_14_5[3] ), .d_in_4( prop_14_5[4] ),
  						                 .d_in_5( prop_14_5[5] ), .d_in_6( prop_14_5[6] ), .d_in_7( prop_14_5[7] ), .d_in_8( prop_14_5[8] ),

  						                 .reset(reset), .clk(clk),

  						                 .d_out(data_out_temp5),

  						                 .d_prop_1( prop_15_6[1] ), .d_prop_2( prop_15_6[2] ), .d_prop_3( prop_15_6[3] ), .d_prop_4( prop_15_6[4] ),
  						                 .d_prop_5( prop_15_6[5] ), .d_prop_6( prop_15_6[6] ), .d_prop_7( prop_15_6[7] ), .d_prop_8( prop_15_6[8] ),

  						                 .shift( shift_col ), .add( add_col )
  						               );

        IDCT_test8_6  module16( .d_in_1( prop_15_6[1] ), .d_in_2( prop_15_6[2] ), .d_in_3( prop_15_6[3] ), .d_in_4( prop_15_6[4] ),
                     				   .d_in_5( prop_15_6[5] ), .d_in_6( prop_15_6[6] ), .d_in_7( prop_15_6[7] ), .d_in_8( prop_15_6[8] ),

                     					 .reset(reset), .clk(clk),

                     					 .d_out(data_out_temp6),

                     					 .d_prop_1( prop_16_7[1] ), .d_prop_2( prop_16_7[2] ), .d_prop_3( prop_16_7[3] ), .d_prop_4( prop_16_7[4] ),
                     					 .d_prop_5( prop_16_7[5] ), .d_prop_6( prop_16_7[6] ), .d_prop_7( prop_16_7[7] ), .d_prop_8( prop_16_7[8] ),

                     					 .shift( shift_col ), .add( add_col )
                     				 );

        IDCT_test8_7  module17( .d_in_1( prop_16_7[1] ), .d_in_2( prop_16_7[2] ), .d_in_3( prop_16_7[3] ), .d_in_4( prop_16_7[4] ),
                               .d_in_5( prop_16_7[5] ), .d_in_6( prop_16_7[6] ), .d_in_7( prop_16_7[7] ), .d_in_8( prop_16_7[8] ),

                               .reset(reset), .clk(clk),

                               .d_out(data_out_temp7),

                               .d_prop_1( prop_17_8[1] ), .d_prop_2( prop_17_8[2] ), .d_prop_3( prop_17_8[3] ), .d_prop_4( prop_17_8[4] ),
                               .d_prop_5( prop_17_8[5] ), .d_prop_6( prop_17_8[6] ), .d_prop_7( prop_17_8[7] ), .d_prop_8( prop_17_8[8] ),

                               .shift( shift_col ), .add( add_col )
                              );

        IDCT_test8_8  module18( .d_in_1( prop_17_8[1] ), .d_in_2( prop_17_8[2] ), .d_in_3( prop_17_8[3] ), .d_in_4( prop_17_8[4] ),
                               .d_in_5( prop_17_8[5] ), .d_in_6( prop_17_8[6] ), .d_in_7( prop_17_8[7] ), .d_in_8( prop_17_8[8] ),

                               .reset(reset), .clk(clk),

                               .d_out(data_out_temp8),

                               //.d_prop_1( prop_13_4[1] ), .d_prop_2( prop_13_4[2] ), .d_prop_3( prop_13_4[3] ), .d_prop_4( prop_13_4[4] ),
                               //.d_prop_5( prop_13_4[5] ), .d_prop_6( prop_13_4[6] ), .d_prop_7( prop_13_4[7] ), .d_prop_8( prop_13_4[8] ),

                               .shift( shift_col ), .add( add_col )
                            );
							
        IDCT_test8_1  module21( .d_in_1( data_in_temp1 ), .d_in_2( data_in_temp2 ), .d_in_3( data_in_temp3 ), .d_in_4( data_in_temp4 ),
							                 .d_in_5( data_in_temp5 ), .d_in_6( data_in_temp6 ), .d_in_7( data_in_temp7 ), .d_in_8( data_in_temp8 ),

							                 .reset(reset), .clk(clk),

							                 .d_out(data_out_1),

							                 .d_prop_1( prop_21_2[1] ), .d_prop_2( prop_21_2[2] ), .d_prop_3( prop_21_2[3] ), .d_prop_4( prop_21_2[4] ),
							                 .d_prop_5( prop_21_2[5] ), .d_prop_6( prop_21_2[6] ), .d_prop_7( prop_21_2[7] ), .d_prop_8( prop_21_2[8] ),

							                 .shift( shift_row ), .add( add_row )
							               );

        IDCT_test8_2  module22( .d_in_1( prop_21_2[1] ), .d_in_2( prop_21_2[2] ), .d_in_3( prop_21_2[3] ), .d_in_4( prop_21_2[4] ),
                     				   .d_in_5( prop_21_2[5] ), .d_in_6( prop_21_2[6] ), .d_in_7( prop_21_2[7] ), .d_in_8( prop_21_2[8] ),

                     					 .reset(reset), .clk(clk),

                     					 .d_out(data_out_2),

                     					 .d_prop_1( prop_22_3[1] ), .d_prop_2( prop_22_3[2] ), .d_prop_3( prop_22_3[3] ), .d_prop_4( prop_22_3[4] ),
                     					 .d_prop_5( prop_22_3[5] ), .d_prop_6( prop_22_3[6] ), .d_prop_7( prop_22_3[7] ), .d_prop_8( prop_22_3[8] ),

                     					 .shift( shift_row ), .add( add_row )
                     				 );

        IDCT_test8_3  module23( .d_in_1( prop_22_3[1] ), .d_in_2( prop_22_3[2] ), .d_in_3( prop_22_3[3] ), .d_in_4( prop_22_3[4] ),
                               .d_in_5( prop_22_3[5] ), .d_in_6( prop_22_3[6] ), .d_in_7( prop_22_3[7] ), .d_in_8( prop_22_3[8] ),

                               .reset(reset), .clk(clk),

                               .d_out(data_out_3),

                               .d_prop_1( prop_23_4[1] ), .d_prop_2( prop_23_4[2] ), .d_prop_3( prop_23_4[3] ), .d_prop_4( prop_23_4[4] ),
                               .d_prop_5( prop_23_4[5] ), .d_prop_6( prop_23_4[6] ), .d_prop_7( prop_23_4[7] ), .d_prop_8( prop_23_4[8] ),

                               .shift( shift_row ), .add( add_row )
                              );

        IDCT_test8_4  module24( .d_in_1( prop_23_4[1] ), .d_in_2( prop_23_4[2] ), .d_in_3( prop_23_4[3] ), .d_in_4( prop_23_4[4] ),
                               .d_in_5( prop_23_4[5] ), .d_in_6( prop_23_4[6] ), .d_in_7( prop_23_4[7] ), .d_in_8( prop_23_4[8] ),

                               .reset(reset), .clk(clk),

                               .d_out(data_out_4),

                               .d_prop_1( prop_24_5[1] ), .d_prop_2( prop_24_5[2] ), .d_prop_3( prop_24_5[3] ), .d_prop_4( prop_24_5[4] ),
                               .d_prop_5( prop_24_5[5] ), .d_prop_6( prop_24_5[6] ), .d_prop_7( prop_24_5[7] ), .d_prop_8( prop_24_5[8] ),

                               .shift( shift_row ), .add( add_row )
                            );

        IDCT_test8_5  module25( .d_in_1( prop_24_5[1] ), .d_in_2( prop_24_5[2] ), .d_in_3( prop_24_5[3] ), .d_in_4( prop_24_5[4] ),
  						                 .d_in_5( prop_24_5[5] ), .d_in_6( prop_24_5[6] ), .d_in_7( prop_24_5[7] ), .d_in_8( prop_24_5[8] ),

  						                 .reset(reset), .clk(clk),

  						                 .d_out(data_out_5),

  						                 .d_prop_1( prop_25_6[1] ), .d_prop_2( prop_25_6[2] ), .d_prop_3( prop_25_6[3] ), .d_prop_4( prop_25_6[4] ),
  						                 .d_prop_5( prop_25_6[5] ), .d_prop_6( prop_25_6[6] ), .d_prop_7( prop_25_6[7] ), .d_prop_8( prop_25_6[8] ),

  						                 .shift( shift_row ), .add( add_row )
  						               );

        IDCT_test8_6  module26( .d_in_1( prop_25_6[1] ), .d_in_2( prop_25_6[2] ), .d_in_3( prop_25_6[3] ), .d_in_4( prop_25_6[4] ),
                     				   .d_in_5( prop_25_6[5] ), .d_in_6( prop_25_6[6] ), .d_in_7( prop_25_6[7] ), .d_in_8( prop_25_6[8] ),

                     					 .reset(reset), .clk(clk),

                     					 .d_out(data_out_6),

                     					 .d_prop_1( prop_26_7[1] ), .d_prop_2( prop_26_7[2] ), .d_prop_3( prop_26_7[3] ), .d_prop_4( prop_26_7[4] ),
                     					 .d_prop_5( prop_26_7[5] ), .d_prop_6( prop_26_7[6] ), .d_prop_7( prop_26_7[7] ), .d_prop_8( prop_26_7[8] ),

                     					 .shift( shift_row ), .add( add_row )
                     				 );

        IDCT_test8_7  module27( .d_in_1( prop_26_7[1] ), .d_in_2( prop_26_7[2] ), .d_in_3( prop_26_7[3] ), .d_in_4( prop_26_7[4] ),
                               .d_in_5( prop_26_7[5] ), .d_in_6( prop_26_7[6] ), .d_in_7( prop_26_7[7] ), .d_in_8( prop_26_7[8] ),

                               .reset(reset), .clk(clk),

                               .d_out(data_out_7),

                               .d_prop_1( prop_27_8[1] ), .d_prop_2( prop_27_8[2] ), .d_prop_3( prop_27_8[3] ), .d_prop_4( prop_27_8[4] ),
                               .d_prop_5( prop_27_8[5] ), .d_prop_6( prop_27_8[6] ), .d_prop_7( prop_27_8[7] ), .d_prop_8( prop_27_8[8] ),

                               .shift( shift_row ), .add( add_row )
                              );

        IDCT_test8_8  module28( .d_in_1( prop_27_8[1] ), .d_in_2( prop_27_8[2] ), .d_in_3( prop_27_8[3] ), .d_in_4( prop_27_8[4] ),
                               .d_in_5( prop_27_8[5] ), .d_in_6( prop_27_8[6] ), .d_in_7( prop_27_8[7] ), .d_in_8( prop_27_8[8] ),

                               .reset(reset), .clk(clk),

                               .d_out(data_out_8),

                               //.d_prop_1( prop_13_4[1] ), .d_prop_2( prop_13_4[2] ), .d_prop_3( prop_13_4[3] ), .d_prop_4( prop_13_4[4] ),
                               //.d_prop_5( prop_13_4[5] ), .d_prop_6( prop_13_4[6] ), .d_prop_7( prop_13_4[7] ), .d_prop_8( prop_13_4[8] ),

                               .shift( shift_row ), .add( add_row )
                            );
endmodule
