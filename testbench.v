//tesetbench for IDCT_test
//date 2018-3-20


//IDCT_test ( d_in_1, d_in_2, d_in_3, d_in_4, reset, clk, d_out);

module testbench;

reg clk;
reg reset;

reg [7:0] d_in_1;
reg [7:0] d_in_2;
reg [7:0] d_in_3;
reg [7:0] d_in_4;

wire [7:0] d_out;

IDCT_test IDCT(.d_in_1(d_in_1),
               .d_in_2(d_in_2),
               .d_in_3(d_in_3),
               .d_in_4(d_in_4),
               .reset(reset),
               .clk(clk),
               .d_out(d_out));
initial begin
  begin
      reset <= 1;
      clk <= 1;
  end
  #5 begin
        clk <= ~clk;
        reset <= 0;
        d_in_1 <= 1;
     end
	 
  #5 begin
	 clk <= ~clk;
	 end
	 
  #5 begin
        clk <= ~clk;
        d_in_1 <= 21;
        d_in_2 <= 1;
        //d_in_3 <= ;
        //d_in_4 <= ;
     end
	 
  #5 begin
	 clk <= ~clk;
	 end
	 
  #5 begin
        clk <= ~clk;
        d_in_1 <= 67;
        d_in_2 <= 39;
        d_in_3 <= 1;
        //d_in_4 <= 290;
     end

  #5 begin
	 clk <= ~clk;
	 end
	 
  #5 begin
       clk <= ~clk;
       d_in_1 <= 67;
       d_in_2 <= 98;
       d_in_3 <= 245;
       d_in_4 <= 1;
     end
	 
  #5 begin
	 clk <= ~clk;
	 end
	 
  #5 begin
       clk <= ~clk;
       d_in_1 <= 78;
       d_in_2 <= 85;
       d_in_3 <= 45;
       d_in_4 <= 23;
     end

  #5 begin
	 clk <= ~clk;
	 end
	 
  #5 begin
       clk <= ~clk;
       d_in_1 <= 86;
       d_in_2 <= 53;
       d_in_3 <= 51;
       d_in_4 <= 39;
     end

  #5 begin
	 clk <= ~clk;
	 end
	 
  #5 begin
       clk <= ~clk;
       d_in_1 <= 98;
       d_in_2 <= 56;
       d_in_3 <= 53;
       d_in_4 <= 36;
     end
end

endmodule
