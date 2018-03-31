//module flip_flop???
//author Mace
//date 2018-03-20

module ff(data_in, data_out, clk, reset);

    input clk;
    input reset;

    input [23:0] data_in;
    output data_out;

	  reg [23:0] data_out;

    always @ (posedge clk or posedge reset) begin
        if(reset) data_out <= 0;
        else data_out <= data_in;
    end

endmodule
