//tesetbench for IDCT_test
//data 2018-3-20



module testbench2;

reg clk;
reg reset;

reg signed [24:0] data_in ;
reg mode;
wire signed [24:0] data_out_4;
wire signed [24:0] data_out_8;
parameter signed  [24:0] d [0:128] = '{
-24'd8976,-24'd816,24'd0,24'd0,24'd0,24'd0,24'd0,24'd0,
24'd408,24'd0,24'd0,24'd0,24'd0,24'd0,24'd0,24'd0,
24'd408,24'd0,24'd0,24'd0,24'd0,24'd0,24'd0,24'd0,
24'd408,24'd0,24'd0,24'd0,24'd0,24'd0,24'd0,24'd0,
24'd0,24'd0,24'd0,24'd0,24'd0,24'd0,24'd0,24'd0,
24'd0,24'd0,24'd0,24'd0,24'd0,24'd0,24'd0,24'd0,
24'd0,24'd0,24'd0,24'd0,24'd0,24'd0,24'd0,24'd0,
24'd0,24'd0,24'd0,24'd0,24'd0,24'd0,24'd0,24'd0,
24'd0,

24'd1440,-24'd720,24'd0,24'd0,
24'd0,24'd0,24'd0,24'd0,
24'd0,24'd0,24'd0,24'd0,
24'd0,24'd0,24'd0,24'd0,
24'd0,24'd0,24'd0,24'd0,
24'd0,24'd0,24'd0,24'd0,
24'd0,24'd0,24'd0,24'd0,
24'd0,24'd0,24'd0,24'd0,
24'd0,24'd0,24'd0,24'd0,
24'd0,24'd0,24'd0,24'd0,
24'd0,24'd0,24'd0,24'd0,
24'd0,24'd0,24'd0,24'd0,
24'd0,24'd0,24'd0,24'd0,
24'd0,24'd0,24'd0,24'd0,
24'd0,24'd0,24'd0,24'd0,
24'd0,24'd0,24'd0,24'd0
};

// 24'd816,24'd0,24'd816,24'd0,24'd0,24'd0,24'd0,24'd0,
// 24'd0,24'd0,24'd0,24'd0,24'd0,24'd0,24'd0,24'd0,
// 24'd0,24'd408,-24'd408,24'd0,24'd0,24'd0,24'd0,24'd0,
// 24'd0,24'd0,24'd0,24'd0,24'd0,24'd0,24'd0,24'd0,
// 24'd0,24'd0,24'd0,24'd0,24'd0,24'd0,24'd0,24'd0,
// 24'd0,24'd0,24'd0,24'd0,24'd0,24'd0,24'd0,24'd0,
// 24'd0,24'd0,24'd0,24'd0,24'd0,24'd0,24'd0,24'd0,
// 24'd0,24'd0,24'd0,24'd0,24'd0,24'd0,24'd0,24'd0
// };

IDCT_all IDCT(.seq_in(data_in), .mode(mode), .clk(clk), .reset(reset),
                    .seq_out_4(data_out_4),.seq_out_8(data_out_8));
initial begin



 begin
     reset = 0;
     clk =  0;
 end

 #19 begin
  clk = 1;
  reset = 1;
    mode = 1;
 end

#20 begin
  clk = 0;
 end

 #20 begin
  clk = 1;

  reset = 0;
 end

 #1 begin
  data_in = d[0];
 end

#19 begin
  clk = 0;
 end

 #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[1];
  end
 #19 begin
	 clk = ~clk;
	 end

   #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[2];

  end



 #19 begin
   clk = ~clk;
   end
   #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[3];



  end
 #19 begin
   clk = ~clk;
   end

   #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[4];
  end
 #19 begin
   clk = ~clk;
   end



   #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[5];
  end
 #19 begin
   clk = ~clk;
   end

   #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[6];
  end
 #19 begin
   clk = ~clk;
   end

   #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[7];
  end
 #19 begin
   clk = ~clk;
   end

   #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[8];
  end
 #19 begin
   clk = ~clk;
   end

   #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[9];
  end
 #19 begin
   clk = ~clk;
   end

   #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[10];
  end
 #19 begin
   clk = ~clk;
   end

   #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[11];
  end
 #19 begin
   clk = ~clk;
   end

  #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[12];
  end
 #19 begin
   clk = ~clk;
   end

     #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[13];
  end
 #19 begin
   clk = ~clk;
   end

     #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[14];
  end
 #19 begin
   clk = ~clk;
   end

     #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[15];
  end
 #19 begin
   clk = ~clk;
   end


     #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[16];
  end
 #19 begin
   clk = ~clk;
   end

        #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[17];
  end
 #19 begin
   clk = ~clk;
   end

        #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[18];
  end
 #19 begin
   clk = ~clk;
   end

        #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[19];
  end
 #19 begin
   clk = ~clk;
   end

        #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[20];
  end
 #19 begin
   clk = ~clk;
   end

        #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[21];
  end
 #19 begin
   clk = ~clk;
   end

        #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[22];
  end
 #19 begin
   clk = ~clk;
   end

        #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[23];
  end
 #19 begin
   clk = ~clk;
   end

        #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[24];
  end
 #19 begin
   clk = ~clk;
   end

        #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[25];
  end
 #19 begin
   clk = ~clk;
   end

        #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[26];
  end
 #19 begin
   clk = ~clk;
   end

        #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[27];
  end
 #19 begin
   clk = ~clk;
   end

        #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[28];
  end
 #19 begin
   clk = ~clk;
   end

        #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[29];
  end
 #19 begin
   clk = ~clk;
   end

        #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[30];
  end
 #19 begin
   clk = ~clk;
   end

        #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[31];
  end
 #19 begin
   clk = ~clk;
   end

        #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[32];
  end
 #19 begin
   clk = ~clk;
   end

        #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[33];
  end
 #19 begin
   clk = ~clk;
   end

        #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[34];
  end
 #19 begin
   clk = ~clk;
   end

        #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[35];
  end
 #19 begin
   clk = ~clk;
   end

        #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[36];
  end
 #19 begin
   clk = ~clk;
   end

        #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[37];
  end
 #19 begin
   clk = ~clk;
   end
   
#20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[38];
  end
 #19 begin
   clk = ~clk;
   end

#20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[39];
  end
 #19 begin
   clk = ~clk;
   end

   #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[40];
  end
 #19 begin
   clk = ~clk;
   end

   #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[41];
  end
 #19 begin
   clk = ~clk;
   end

   #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[42];
  end
 #19 begin
   clk = ~clk;
   end

   #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[43];
  end
 #19 begin
   clk = ~clk;
   end

   #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[44];
  end
 #19 begin
   clk = ~clk;
   end

   #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[45];
  end
 #19 begin
   clk = ~clk;
   end

   #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[46];
  end
 #19 begin
   clk = ~clk;
   end

   #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[47];
  end
 #19 begin
   clk = ~clk;
   end

   #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[48];
  end
 #19 begin
   clk = ~clk;
   end

   #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[49];
  end
 #19 begin
   clk = ~clk;
   end

   #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[50];
  end
 #19 begin
   clk = ~clk;
   end

   #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[51];
  end
 #19 begin
   clk = ~clk;
   end

   #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[52];
  end
 #19 begin
   clk = ~clk;
   end

   #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[53];
  end
 #19 begin
   clk = ~clk;
   end

   #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[54];
  end
 #19 begin
   clk = ~clk;
   end

   #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[55];
  end
 #19 begin
   clk = ~clk;
   end

   #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[56];
  end
 #19 begin
   clk = ~clk;
   end

   #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[57];
  end
 #19 begin
   clk = ~clk;
   end

   #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[58];
  end
 #19 begin
   clk = ~clk;
   end

   #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[59];
  end
 #19 begin
   clk = ~clk;
   end

   #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[60];
  end
 #19 begin
   clk = ~clk;
   end

   #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[61];
  end
 #19 begin
   clk = ~clk;
   end

   #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[62];
  end
 #19 begin
   clk = ~clk;
   end

      #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[63];
  end
 #19 begin
   clk = ~clk;
   end

      #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[64];
    mode = 0;
  end
 #19 begin
   clk = ~clk;
   end

      #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[65];
  end
 #19 begin
   clk = ~clk;
   end

      #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[66];
  end
 #19 begin
   clk = ~clk;
   end

      #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[67];
  end
 #19 begin
   clk = ~clk;
   end

      #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[68];
  end
 #19 begin
   clk = ~clk;
   end

      #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[69];
  end
 #19 begin
   clk = ~clk;
   end

      #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[70];
  end
 #19 begin
   clk = ~clk;
   end

      #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[71];
  end
 #19 begin
   clk = ~clk;
   end

      #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[72];
  end
 #19 begin
   clk = ~clk;
   end

      #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[73];
  end
 #19 begin
   clk = ~clk;
   end

      #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[74];
  end
 #19 begin
   clk = ~clk;
   end

      #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[75];
  end
 #19 begin
   clk = ~clk;
   end

         #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[76];
  end
 #19 begin
   clk = ~clk;
   end

         #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[77];
  end
 #19 begin
   clk = ~clk;
   end

         #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[78];
  end
 #19 begin
   clk = ~clk;
   end

         #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[79];
  end
 #19 begin
   clk = ~clk;
   end

         #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[80];
  end
 #19 begin
   clk = ~clk;
   end

         #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[81];
  end
 #19 begin
   clk = ~clk;
   end

         #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[82];
  end
 #19 begin
   clk = ~clk;
   end

         #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[83];
  end
 #19 begin
   clk = ~clk;
   end

         #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[84];
  end
 #19 begin
   clk = ~clk;
   end

         #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[85];
  end
 #19 begin
   clk = ~clk;
   end

         #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[86];
  end
 #19 begin
   clk = ~clk;
   end

         #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[87];
  end
 #19 begin
   clk = ~clk;
   end

            #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[88];
  end
 #19 begin
   clk = ~clk;
   end

            #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[89];
  end
 #19 begin
   clk = ~clk;
   end

            #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[90];
  end
 #19 begin
   clk = ~clk;
   end

            #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[91];
  end
 #19 begin
   clk = ~clk;
   end

            #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[92];
  end
 #19 begin
   clk = ~clk;
   end

            #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[93];
  end
 #19 begin
   clk = ~clk;
   end

            #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[94];
  end
 #19 begin
   clk = ~clk;
   end

               #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[95];
  end
 #19 begin
   clk = ~clk;
   end

               #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[96];
  end
 #19 begin
   clk = ~clk;
   end

               #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[97];
  end
 #19 begin
   clk = ~clk;
   end

               #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[98];
  end
 #19 begin
   clk = ~clk;
   end

               #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[99];
  end
 #19 begin
   clk = ~clk;
   end

               #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[100];
  end
 #19 begin
   clk = ~clk;
   end

               #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[101];
  end
 #19 begin
   clk = ~clk;
   end

               #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[102];
  end
 #19 begin
   clk = ~clk;
   end

               #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[103];
  end
 #19 begin
   clk = ~clk;
   end

               #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[104];
  end
 #19 begin
   clk = ~clk;
   end

               #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[105];
  end
 #19 begin
   clk = ~clk;
   end

               #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[106];
  end
 #19 begin
   clk = ~clk;
   end

               #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[107];
  end
 #19 begin
   clk = ~clk;
   end

               #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[108];
  end
 #19 begin
   clk = ~clk;
   end

               #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[109];
  end
 #19 begin
   clk = ~clk;
   end

               #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[110];
  end
 #19 begin
   clk = ~clk;
   end

               #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[111];
  end
 #19 begin
   clk = ~clk;
   end

               #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[112];
  end
 #19 begin
   clk = ~clk;
   end

               #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[113];
  end
 #19 begin
   clk = ~clk;
   end

               #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[114];
  end
 #19 begin
   clk = ~clk;
   end

               #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[115];
  end
 #19 begin
   clk = ~clk;
   end

               #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[116];
  end
 #19 begin
   clk = ~clk;
   end

               #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[117];
  end
 #19 begin
   clk = ~clk;
   end

               #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[118];
  end
 #19 begin
   clk = ~clk;
   end

               #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[119];
  end
 #19 begin
   clk = ~clk;
   end

               #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[120];
  end
 #19 begin
   clk = ~clk;
   end

               #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[121];
  end
 #19 begin
   clk = ~clk;
   end

               #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[122];
  end
 #19 begin
   clk = ~clk;
   end

               #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[123];
  end
 #19 begin
   clk = ~clk;
   end

               #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[124];
  end
 #19 begin
   clk = ~clk;
   end

               #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[125];
  end
 #19 begin
   clk = ~clk;
   end

               #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[126];
  end
 #19 begin
   clk = ~clk;
   end

               #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[127];
  end
 #19 begin
   clk = ~clk;
   end

               #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[128];
  end
 #19 begin
   clk = ~clk;
   end

               #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[94];
  end
 #19 begin
   clk = ~clk;
   end

               #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[94];
  end
 #19 begin
   clk = ~clk;
   end
 #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[94];
  end
 #19 begin
   clk = ~clk;
   end

 #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[94];
  end
 #19 begin
   clk = ~clk;
   end

 #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[94];
  end
 #19 begin
   clk = ~clk;
   end

 #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[94];
  end
 #19 begin
   clk = ~clk;
   end

 #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[94];
  end
 #19 begin
   clk = ~clk;
   end

 #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[94];
  end
 #19 begin
   clk = ~clk;
   end

 #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[94];
  end
 #19 begin
   clk = ~clk;
   end

 #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[94];
  end
 #19 begin
   clk = ~clk;
   end

 #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[94];
  end
 #19 begin
   clk = ~clk;
   end

 #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[94];
  end
 #19 begin
   clk = ~clk;
   end

 #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[94];
  end
 #19 begin
   clk = ~clk;
   end

 #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[94];
  end
 #19 begin
   clk = ~clk;
   end

 #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[94];
  end
 #19 begin
   clk = ~clk;
   end

 #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[94];
  end
 #19 begin
   clk = ~clk;
   end

 #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[94];
  end
 #19 begin
   clk = ~clk;
   end


    #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[94];
  end
 #19 begin
   clk = ~clk;
   end

 #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[94];
  end
 #19 begin
   clk = ~clk;
   end

 #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[94];
  end
 #19 begin
   clk = ~clk;
   end

 #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[94];
  end
 #19 begin
   clk = ~clk;
   end

 #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[94];
  end
 #19 begin
   clk = ~clk;
   end

 #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[94];
  end
 #19 begin
   clk = ~clk;
   end

 #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[94];
  end
 #19 begin
   clk = ~clk;
   end

 #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[94];
  end
 #19 begin
   clk = ~clk;
   end

 #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[94];
  end
 #19 begin
   clk = ~clk;
   end

 #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[94];
  end
 #19 begin
   clk = ~clk;
   end

 #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[94];
  end
 #19 begin
   clk = ~clk;
   end

 #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[94];
  end
 #19 begin
   clk = ~clk;
   end

 #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[94];
  end
 #19 begin
   clk = ~clk;
   end

    #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[94];
  end
 #19 begin
   clk = ~clk;
   end

 #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[94];
  end
 #19 begin
   clk = ~clk;
   end

 #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[94];
  end
 #19 begin
   clk = ~clk;
   end

 #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[94];
  end
 #19 begin
   clk = ~clk;
   end

 #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[94];
  end
 #19 begin
   clk = ~clk;
   end

 #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[94];
  end
 #19 begin
   clk = ~clk;
   end

 #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[94];
  end
 #19 begin
   clk = ~clk;
   end

 #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[94];
  end
 #19 begin
   clk = ~clk;
   end

 #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[94];
  end
 #19 begin
   clk = ~clk;
   end

 #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[94];
  end
 #19 begin
   clk = ~clk;
   end

 #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[94];
  end
 #19 begin
   clk = ~clk;
   end

 #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[94];
  end
 #19 begin
   clk = ~clk;
   end

 #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[94];
  end
 #19 begin
   clk = ~clk;
   end

 #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[94];
  end
 #19 begin
   clk = ~clk;
   end

 #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[94];
  end
 #19 begin
   clk = ~clk;
   end

 #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[94];
  end
 #19 begin
   clk = ~clk;
   end

 #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[94];
  end
 #19 begin
   clk = ~clk;
   end

 #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[94];
  end
 #19 begin
   clk = ~clk;
   end

 #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[94];
  end
 #19 begin
   clk = ~clk;
   end

 #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[94];
  end
 #19 begin
   clk = ~clk;
   end

 #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[94];
  end
 #19 begin
   clk = ~clk;
   end

 #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[94];
  end
 #19 begin
   clk = ~clk;
   end

 #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[94];
  end
 #19 begin
   clk = ~clk;
   end

 #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in = d[94];
  end
 #19 begin
   clk = ~clk;
   end



end

endmodule
