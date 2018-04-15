//IDCT module 8
module IDCT_test8_5( d_in_1, d_in_2, d_in_3, d_in_4,
                     d_in_5, d_in_6, d_in_7, d_in_8,

                     reset, clk,

                     d_out,

                     d_prop_1, d_prop_2, d_prop_3, d_prop_4,
                     d_prop_5, d_prop_6, d_prop_7, d_prop_8,

                     shift, add);


    input reset;
    input clk;
    input signed [24:0] d_in_1;
    input signed [24:0] d_in_2;
    input signed [24:0] d_in_3;
    input signed [24:0] d_in_4;
    input signed [24:0] d_in_5;
    input signed [24:0] d_in_6;
    input signed [24:0] d_in_7;
    input signed [24:0] d_in_8;

    input unsigned [5:0] add;
    input unsigned [5:0] shift;

    output signed [24:0] d_out;

    output signed [24:0] d_prop_1;
    output signed [24:0] d_prop_2;
    output signed [24:0] d_prop_3;
    output signed [24:0] d_prop_4;
    output signed [24:0] d_prop_5;
    output signed [24:0] d_prop_6;
    output signed [24:0] d_prop_7;
    output signed [24:0] d_prop_8;

	wire signed [24:0] adder1_in;
	wire signed [24:0] adder2_in;
	wire signed [24:0] adder3_in;
	wire signed [24:0] adder4_in;
	wire signed [24:0] adder5_in;
	wire signed [24:0] adder6_in;

    always @ ( posedge clk ) begin
        if(reset) adder1_in <= 0;
		else adder1_in <= d_in_1 * 64;
    end

	always @ ( posedge clk ) begin
		if(reset) adder2_in <= 0;
		else adder2_in <= adder1_in + d_in_2 * -18;
	end

	always @ ( posedge clk ) begin
		if(reset) adder3_in <= 0;
		else adder3_in <= adder2_in + d_in_3 * -83;
	end

	always @ ( posedge clk ) begin
		if(reset) adder4_in <= 0;
		else adder4_in <= adder3_in + d_in_4 * 50;
	end

	always @ ( posedge clk ) begin
		if(reset) adder5_in <= 0;
		else adder5_in <= adder4_in + d_in_5 * 64;
	end

	always @ ( posedge clk ) begin
		if(reset) adder6_in <= 0;
		else adder6_in <= adder5_in + d_in6 * -75;
	end

	always @ ( posedge clk ) begin
		if(reset) adder7_in <= 0;
		else adder7_in <= adder6_in + d_in_7 * -36;
	end

	always @ ( posedge clk ) begin
		if(reset) d_out <= 0;
		else d_out <= (adder7_in + d_in_8 * 89 + add) >>> shift;
	end

	always @ ( posedge clk ) begin
		if(reset) d_prop_1 <= 0;
		else d_prop_1 <= d_in_1;
	end

	always @ ( posedge clk ) begin
		if(reset) d_prop_2 <= 0;
		else d_prop_2 <= d_in_2;
	end

	always @ ( posedge clk ) begin
		if(reset) d_prop_3 <= 0;
		else d_prop_3 <= d_in_3;
	end

	always @ ( posedge clk ) begin
		if(reset) d_prop_4 <= 0;
		else d_prop_4 <= d_in_4;
	end

	always @ ( posedge clk ) begin
		if(reset) d_prop_5 <= 0;
		else d_prop_5 <= d_in_5;
	end

	always @ ( posedge clk ) begin
		if(reset) d_prop_6 <= 0;
		else d_prop_6 <= d_in_6;
	end

	always @ ( posedge clk ) begin
		if(reset) d_prop_7 <= 0;
		else d_prop_7 <= d_in_7;
	end

	always @ ( posedge clk ) begin
		if(reset) d_prop_8 <= 0;
		else d_prop_8 <= d_in_8;
	end

endmodule
