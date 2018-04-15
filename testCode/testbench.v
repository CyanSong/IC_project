//tesetbench for IDCT_test
//date 2018-3-20


//IDCT_test ( d_in_1, d_in_2, d_in_3, d_in_4, reset, clk, d_out);

module testbench;

reg clk;
reg reset;

reg signed [24:0] d_in_1;
reg signed [24:0] d_in_2;
reg signed [24:0] d_in_3;
reg signed [24:0] d_in_4;

wire signed [24:0] d_out_5;
wire signed [24:0] d_out_6;
wire signed [24:0] d_out_7;
wire signed [24:0] d_out_8;

IDCT_whole IDCT(.d_in_1(d_in_1),
               .d_in_2(d_in_2),
               .d_in_3(d_in_3),
               .d_in_4(d_in_4),
               .reset(reset),
               .clk(clk),
               .d_out_5(d_out_5),
               .d_out_6(d_out_6),
               .d_out_7(d_out_7),
               .d_out_8(d_out_8)
               );
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
     d_in_1 = 1440;
     d_in_2 = 0;
     d_in_3 = 0;
     d_in_4 = 0;
  end

 #19 begin
	 clk = ~clk;
	 end

 #20 begin
       clk = ~clk;
   end
 #1 begin
       d_in_1 = 0;
       d_in_2 = -720;
       d_in_3 = 0;
       d_in_4 = 0;
   end

 #19 begin
	 clk = ~clk;
	 end

 #20 begin
       clk = ~clk;
   end

 #1 begin
   d_in_1 = 0;
   d_in_2 = 0;
   d_in_3 = 0;
   d_in_4 = 0;
 end

 #19 begin
	 clk = ~clk;
	 end

 #20 begin
      clk = ~clk;
    end

 #1 begin
     d_in_1 = 0;
     d_in_2 = 0;
     d_in_3 = 0;
     d_in_4 = 0;
 end

 #19 begin
	 clk = ~clk;
	 end

 #20 begin
      clk = ~clk;
    end
  #1 begin
     d_in_1 = 0;
     d_in_2 = 0;
     d_in_3 = 0;
     d_in_4 = 0;
  end


 #19 begin
	 clk = ~clk;
	 end

 #20 begin
      clk = ~clk;

    end
    #1 begin
       d_in_1 = 0;
       d_in_2 = 0;
       d_in_3 = 0;
       d_in_4 = 0;
    end



 #19 begin
	 clk = ~clk;
 end

 #20 begin
      clk = ~clk;
 end

 #1 begin
     d_in_1 = 0;
     d_in_2 = 0;
     d_in_3 = 0;
     d_in_4 = 0;
  end

 #19 begin
   clk = ~clk;
   end

 #20 begin
       clk = ~clk;
   end
 #1 begin
       d_in_1 = 0;
       d_in_2 = 0;
       d_in_3 = 0;
       d_in_4 = 0;
   end

 #19 begin
   clk = ~clk;
   end

 #20 begin
       clk = ~clk;
   end

 #1 begin
   d_in_1 = 0;
   d_in_2 = 0;
   d_in_3 = 0;
   d_in_4 = 0;
 end

 #19 begin
   clk = ~clk;
   end

 #20 begin
      clk = ~clk;
    end

 #1 begin
     d_in_1 = 0;
     d_in_2 = 0;
     d_in_3 = 0;
     d_in_4 = 0;
 end

 #19 begin
   clk = ~clk;
   end

 #20 begin
      clk = ~clk;
    end
  #1 begin
     d_in_1 = 0;
     d_in_2 = 0;
     d_in_3 = 0;
     d_in_4 = 0;
  end


 #19 begin
   clk = ~clk;
   end

 #20 begin
      clk = ~clk;

    end
    #1 begin
       d_in_1 = 0;
       d_in_2 = 0;
       d_in_3 = 0;
       d_in_4 = 0;
    end



 #19 begin
   clk = ~clk;
 end

 #20 begin
      clk = ~clk;
 end

 #1 begin
       d_in_1 = 0;
       d_in_2 = 0;
       d_in_3 = 0;
       d_in_4 = 0;
   end


   
    #19 begin
   clk = ~clk;
 end

 #20 begin
      clk = ~clk;
 end

 #1 begin
       d_in_1 = 0;
       d_in_2 = 0;
       d_in_3 = 0;
       d_in_4 = 0;
   end




    #19 begin
   clk = ~clk;
 end

 #20 begin
      clk = ~clk;
 end

 #1 begin
       d_in_1 = 0;
       d_in_2 = 0;
       d_in_3 = 0;
       d_in_4 = 0;
   end



end

endmodule
