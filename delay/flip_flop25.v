//module flip_flop???
//author Mace
//date 2018-03-20

module ff25(data_in, data_out, clk, reset);

    input clk;
    input reset;

    input [24:0] data_in;
    output reg signed [24:0] data_out;

    always @ (posedge clk or posedge reset) begin
        if(reset) begin
        	data_out <= 0;
        end
        else begin
        	data_out <= data_in;
    	end
    end
endmodule
