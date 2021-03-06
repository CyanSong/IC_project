//delay 7 cycles
module delay7(data_in, data_out, clk, reset);
	
	input clk;
	input reset;
	input signed [24:0] data_in;
	output reg signed [24:0] data_out;
	
	reg signed [24:0] data_temp1;
	reg signed [24:0] data_temp2;
	reg signed [24:0] data_temp3;
	reg signed [24:0] data_temp4;
	reg signed [24:0] data_temp5;
	reg signed [24:0] data_temp6;
	
	always @ ( posedge clk or posedge reset) begin
		if(reset) data_temp1 <= 0;
		else data_temp1 <= data_in;
	end

	always @ ( posedge clk or posedge reset) begin
		if(reset) data_temp2 <= 0;
		else data_temp2 <= data_temp1;
	end

	always @ ( posedge clk or posedge reset) begin
		if(reset) data_temp3 <= 0;
		else data_temp3 <= data_temp2;
	end
	
	always @ ( posedge clk or posedge reset) begin
		if(reset) data_temp4 <= 0;
		else data_temp4 <= data_temp3;
	end

	always @ ( posedge clk or posedge reset) begin
		if(reset) data_temp5 <= 0;
		else data_temp5 <= data_temp4;
	end
	
	always @ ( posedge clk or posedge reset) begin
		if(reset) data_temp6 <= 0;
		else data_temp6 <= data_temp5;
	end
	
	always @ ( posedge clk or posedge reset) begin
		if(reset) data_out <= 0;
		else data_out <= data_temp6;
	end
	
endmodule