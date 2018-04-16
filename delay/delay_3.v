//delay 3 cycles
module delay3(data_in, data_out, clk, reset);
	
	input clk;
	input reset;
	input signed [24:0] data_in;
	output reg signed [24:0] data_out;
	
	reg signed [24:0] data_temp1;
	reg signed [24:0] data_temp2;
	
	always @ ( posedge clk ) begin
		if(reset) data_temp1 <= 0;
		else data_temp1 <= data_in;
	end

	always @ ( posedge clk ) begin
		if(reset) data_temp2 <= 0;
		else data_temp2 <= data_temp1;
	end
	
	always @ ( posedge clk ) begin
		if(reset) data_out <= 0;
		else data_out <= data_temp2;
	end
	
endmodule