//delay 2 cycles
module delay2(data_in, data_out, clk, reset);
	
	input clk;
	input reset;
	input signed [24:0] data_in;
	output reg signed [24:0] data_out;
	
	reg signed [24:0] data_temp1;
	
	always @ ( posedge clk or posedge reset) begin
		if(reset) data_temp1 <= 0;
		else data_temp1 <= data_in;
	end
	
	always @ ( posedge clk or posedge reset) begin
		if(reset) data_out <= 0;
		else data_out <= data_temp1;
	end
	
endmodule