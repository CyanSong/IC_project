//date 2018-3-29
//author
//n83 = 101,0011

module xn83 (data_in, data_out);

    input [15:0] data_in;
    input [23:0] data_out;

    wire [23:0] temp1;
    wire [23:0] temp2;
    wire [23:0] temp3;
    wire [23:0] data_temp;

    assign temp1 = data_in << 6;
    assign temp2 = data_in << 4;
    assign temp3 = data_in << 1;

    assign data_temp = data_in + temp1 + temp2 + temp3;
    assign data_out = ~data_temp + 1'b1;

endmodule //xn83 data_in, data_out
