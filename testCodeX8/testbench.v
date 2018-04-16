//tesetbench for IDCT_test
//data 2018-3-20


//IDCT_test ( d_in_1, d_in_2, d_in_3, d_in_4, reset, clk, d_out);

module testbench;

reg clk;
reg reset;

reg signed [24:0] data_in_1;
reg signed [24:0] data_in_2;
reg signed [24:0] data_in_3;
reg signed [24:0] data_in_4;
reg signed [24:0] data_in_5;
reg signed [24:0] data_in_6;
reg signed [24:0] data_in_7;
reg signed [24:0] data_in_8;


wire signed [24:0] data_out_1;
wire signed [24:0] data_out_2;
wire signed [24:0] data_out_3;
wire signed [24:0] data_out_4;
wire signed [24:0] data_out_5;
wire signed [24:0] data_out_6;
wire signed [24:0] data_out_7;
wire signed [24:0] data_out_8;

IDCT8_whole IDCT(.data_in_1_ori(data_in_1),
               .data_in_2_ori(data_in_2),
               .data_in_3_ori(data_in_3),
               .data_in_4_ori(data_in_4),
               .data_in_5_ori(data_in_5), 
               .data_in_6_ori(data_in_6), 
               .data_in_7_ori(data_in_7), 
               .data_in_8_ori(data_in_8),
               .reset(reset),
               .clk(clk),
               .data_out_1_fin(data_out_1),
               .data_out_2_fin(data_out_2),
               .data_out_3_fin(data_out_3),
               .data_out_4_fin(data_out_4),
               .data_out_5_fin(data_out_5),
                .data_out_6_fin(data_out_6), 
                .data_out_7_fin(data_out_7), 
                .data_out_8_fin(data_out_8));
initial begin


 begin
  reset = 1;
 end


 #20 begin
  clk = 0;
  reset = 0;
  end


 #19 begin
     clk = ~clk;
  end
 #1 begin
     data_in_1 = -8976;
     data_in_2 = -816;
     data_in_3 = 0;
     data_in_4 = 0;
     data_in_5 = 0;
     data_in_6 = 0;
     data_in_7 = 0;
     data_in_8 = 0;
  end
 #19 begin
	 clk = ~clk;
	 end

   #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in_1 = 408;
     data_in_2 = 0;
     data_in_3 = 0;
     data_in_4 = 0;
     data_in_5 = 0;
     data_in_6 = 0;
     data_in_7 = 0;
     data_in_8 = 0;
  end

 #19 begin
   clk = ~clk;
   end
   #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in_1 = 408;
     data_in_2 = 0;
     data_in_3 = 0;
     data_in_4 = 0;
     data_in_5 = 0;
     data_in_6 = 0;
     data_in_7 = 0;
     data_in_8 = 0;
  end
 #19 begin
   clk = ~clk;
   end

   #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in_1 = 408;
     data_in_2 = 0;
     data_in_3 = 0;
     data_in_4 = 0;
     data_in_5 = 0;
     data_in_6 = 0;
     data_in_7 = 0;
     data_in_8 = 0;
  end
 #19 begin
   clk = ~clk;
   end

   #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in_1 = 0;
     data_in_2 = 0;
     data_in_3 = 0;
     data_in_4 = 0;
     data_in_5 = 0;
     data_in_6 = 0;
     data_in_7 = 0;
     data_in_8 = 0;
  end
 #19 begin
   clk = ~clk;
   end

   #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in_1 = 0;
     data_in_2 = 0;
     data_in_3 = 0;
     data_in_4 = 0;
     data_in_5 = 0;
     data_in_6 = 0;
     data_in_7 = 0;
     data_in_8 = 0;
  end
 #19 begin
   clk = ~clk;
   end

   #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in_1 = 0;
     data_in_2 = 0;
     data_in_3 = 0;
     data_in_4 = 0;
     data_in_5 = 0;
     data_in_6 = 0;
     data_in_7 = 0;
     data_in_8 = 0;
  end
 #19 begin
   clk = ~clk;
   end

   #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in_1 = 0;
     data_in_2 = 0;
     data_in_3 = 0;
     data_in_4 = 0;
     data_in_5 = 0;
     data_in_6 = 0;
     data_in_7 = 0;
     data_in_8 = 0;
  end
 #19 begin
   clk = ~clk;
   end

   #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in_1 = 816;
     data_in_2 = 0;
     data_in_3 = 816;
     data_in_4 = 0;
     data_in_5 = 0;
     data_in_6 = 0;
     data_in_7 = 0;
     data_in_8 = 0;
  end
 #19 begin
   clk = ~clk;
   end

   #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in_1 = 0;
     data_in_2 = 0;
     data_in_3 = 0;
     data_in_4 = 0;
     data_in_5 = 0;
     data_in_6 = 0;
     data_in_7 = 0;
     data_in_8 = 0;
  end
 #19 begin
   clk = ~clk;
   end

   #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in_1 = 0;
     data_in_2 = 408;
     data_in_3 = -408;
     data_in_4 = 0;
     data_in_5 = 0;
     data_in_6 = 0;
     data_in_7 = 0;
     data_in_8 = 0;
  end
 #19 begin
   clk = ~clk;
   end

   #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in_1 = 0;
     data_in_2 = 0;
     data_in_3 = 0;
     data_in_4 = 0;
     data_in_5 = 0;
     data_in_6 = 0;
     data_in_7 = 0;
     data_in_8 = 0;
  end
 #19 begin
   clk = ~clk;
   end

  #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in_1 = 0;
     data_in_2 = 0;
     data_in_3 = 0;
     data_in_4 = 0;
     data_in_5 = 0;
     data_in_6 = 0;
     data_in_7 = 0;
     data_in_8 = 0;
  end
 #19 begin
   clk = ~clk;
   end

     #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in_1 = 0;
     data_in_2 = 0;
     data_in_3 = 0;
     data_in_4 = 0;
     data_in_5 = 0;
     data_in_6 = 0;
     data_in_7 = 0;
     data_in_8 = 0;
  end
 #19 begin
   clk = ~clk;
   end

     #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in_1 = 0;
     data_in_2 = 0;
     data_in_3 = 0;
     data_in_4 = 0;
     data_in_5 = 0;
     data_in_6 = 0;
     data_in_7 = 0;
     data_in_8 = 0;
  end
 #19 begin
   clk = ~clk;
   end

     #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in_1 = 0;
     data_in_2 = 0;
     data_in_3 = 0;
     data_in_4 = 0;
     data_in_5 = 0;
     data_in_6 = 0;
     data_in_7 = 0;
     data_in_8 = 0;
  end
 #19 begin
   clk = ~clk;
   end


     #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in_1 = 0;
     data_in_2 = 0;
     data_in_3 = 0;
     data_in_4 = 0;
     data_in_5 = 0;
     data_in_6 = 0;
     data_in_7 = 0;
     data_in_8 = 0;
  end
 #19 begin
   clk = ~clk;
   end

        #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in_1 = 0;
     data_in_2 = 0;
     data_in_3 = 0;
     data_in_4 = 0;
     data_in_5 = 0;
     data_in_6 = 0;
     data_in_7 = 0;
     data_in_8 = 0;
  end
 #19 begin
   clk = ~clk;
   end

        #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in_1 = 0;
     data_in_2 = 0;
     data_in_3 = 0;
     data_in_4 = 0;
     data_in_5 = 0;
     data_in_6 = 0;
     data_in_7 = 0;
     data_in_8 = 0;
  end
 #19 begin
   clk = ~clk;
   end

        #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in_1 = 0;
     data_in_2 = 0;
     data_in_3 = 0;
     data_in_4 = 0;
     data_in_5 = 0;
     data_in_6 = 0;
     data_in_7 = 0;
     data_in_8 = 0;
  end
 #19 begin
   clk = ~clk;
   end

        #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in_1 = 0;
     data_in_2 = 0;
     data_in_3 = 0;
     data_in_4 = 0;
     data_in_5 = 0;
     data_in_6 = 0;
     data_in_7 = 0;
     data_in_8 = 0;
  end
 #19 begin
   clk = ~clk;
   end

        #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in_1 = 0;
     data_in_2 = 0;
     data_in_3 = 0;
     data_in_4 = 0;
     data_in_5 = 0;
     data_in_6 = 0;
     data_in_7 = 0;
     data_in_8 = 0;
  end
 #19 begin
   clk = ~clk;
   end

        #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in_1 = 0;
     data_in_2 = 0;
     data_in_3 = 0;
     data_in_4 = 0;
     data_in_5 = 0;
     data_in_6 = 0;
     data_in_7 = 0;
     data_in_8 = 0;
  end
 #19 begin
   clk = ~clk;
   end

        #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in_1 = 0;
     data_in_2 = 0;
     data_in_3 = 0;
     data_in_4 = 0;
     data_in_5 = 0;
     data_in_6 = 0;
     data_in_7 = 0;
     data_in_8 = 0;
  end
 #19 begin
   clk = ~clk;
   end

        #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in_1 = 0;
     data_in_2 = 0;
     data_in_3 = 0;
     data_in_4 = 0;
     data_in_5 = 0;
     data_in_6 = 0;
     data_in_7 = 0;
     data_in_8 = 0;
  end
 #19 begin
   clk = ~clk;
   end

        #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in_1 = 0;
     data_in_2 = 0;
     data_in_3 = 0;
     data_in_4 = 0;
     data_in_5 = 0;
     data_in_6 = 0;
     data_in_7 = 0;
     data_in_8 = 0;
  end
 #19 begin
   clk = ~clk;
   end

        #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in_1 = 0;
     data_in_2 = 0;
     data_in_3 = 0;
     data_in_4 = 0;
     data_in_5 = 0;
     data_in_6 = 0;
     data_in_7 = 0;
     data_in_8 = 0;
  end
 #19 begin
   clk = ~clk;
   end

        #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in_1 = 0;
     data_in_2 = 0;
     data_in_3 = 0;
     data_in_4 = 0;
     data_in_5 = 0;
     data_in_6 = 0;
     data_in_7 = 0;
     data_in_8 = 0;
  end
 #19 begin
   clk = ~clk;
   end

        #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in_1 = 0;
     data_in_2 = 0;
     data_in_3 = 0;
     data_in_4 = 0;
     data_in_5 = 0;
     data_in_6 = 0;
     data_in_7 = 0;
     data_in_8 = 0;
  end
 #19 begin
   clk = ~clk;
   end

        #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in_1 = 0;
     data_in_2 = 0;
     data_in_3 = 0;
     data_in_4 = 0;
     data_in_5 = 0;
     data_in_6 = 0;
     data_in_7 = 0;
     data_in_8 = 0;
  end
 #19 begin
   clk = ~clk;
   end

        #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in_1 = 0;
     data_in_2 = 0;
     data_in_3 = 0;
     data_in_4 = 0;
     data_in_5 = 0;
     data_in_6 = 0;
     data_in_7 = 0;
     data_in_8 = 0;
  end
 #19 begin
   clk = ~clk;
   end

        #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in_1 = 0;
     data_in_2 = 0;
     data_in_3 = 0;
     data_in_4 = 0;
     data_in_5 = 0;
     data_in_6 = 0;
     data_in_7 = 0;
     data_in_8 = 0;
  end
 #19 begin
   clk = ~clk;
   end

        #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in_1 = 0;
     data_in_2 = 0;
     data_in_3 = 0;
     data_in_4 = 0;
     data_in_5 = 0;
     data_in_6 = 0;
     data_in_7 = 0;
     data_in_8 = 0;
  end
 #19 begin
   clk = ~clk;
   end

        #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in_1 = 0;
     data_in_2 = 0;
     data_in_3 = 0;
     data_in_4 = 0;
     data_in_5 = 0;
     data_in_6 = 0;
     data_in_7 = 0;
     data_in_8 = 0;
  end
 #19 begin
   clk = ~clk;
   end

        #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in_1 = 0;
     data_in_2 = 0;
     data_in_3 = 0;
     data_in_4 = 0;
     data_in_5 = 0;
     data_in_6 = 0;
     data_in_7 = 0;
     data_in_8 = 0;
  end
 #19 begin
   clk = ~clk;
   end

        #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in_1 = 0;
     data_in_2 = 0;
     data_in_3 = 0;
     data_in_4 = 0;
     data_in_5 = 0;
     data_in_6 = 0;
     data_in_7 = 0;
     data_in_8 = 0;
  end
 #19 begin
   clk = ~clk;
   end

        #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in_1 = 0;
     data_in_2 = 0;
     data_in_3 = 0;
     data_in_4 = 0;
     data_in_5 = 0;
     data_in_6 = 0;
     data_in_7 = 0;
     data_in_8 = 0;
  end
 #19 begin
   clk = ~clk;
   end

        #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in_1 = 0;
     data_in_2 = 0;
     data_in_3 = 0;
     data_in_4 = 0;
     data_in_5 = 0;
     data_in_6 = 0;
     data_in_7 = 0;
     data_in_8 = 0;
  end
 #19 begin
   clk = ~clk;
   end
   
        #20 begin
     clk = ~clk;
  end
 #1 begin
     data_in_1 = 0;
     data_in_2 = 0;
     data_in_3 = 0;
     data_in_4 = 0;
     data_in_5 = 0;
     data_in_6 = 0;
     data_in_7 = 0;
     data_in_8 = 0;
  end
 #19 begin
   clk = ~clk;
   end

end

endmodule
