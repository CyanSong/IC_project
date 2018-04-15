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

wire signed [24:0] d_out_1;
wire signed [24:0] d_out_2;
wire signed [24:0] d_out_3;
wire signed [24:0] d_out_4;

IDCT_whole IDCT(.d_in_1(d_in_1),
               .d_in_2(d_in_2),
               .d_in_3(d_in_3),
               .d_in_4(d_in_4),
               .reset(reset),
               .clk(clk),
               .d_out_1(d_out_1),
               .d_out_2(d_out_2),
               .d_out_3(d_out_3),
               .d_out_4(d_out_4)
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
     d_in_1 = -720;
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
       d_in_2 = 1440;
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
   d_in_3 = -720;
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
     d_in_4 = -720;
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
