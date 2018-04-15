//date 2018-3-29
//author
//n83 = 101,0011

module xn83 (data_in, data_out);

    input [24:0] data_in;
    input [24:0] data_out;

    assign data_out = data_in * -83;

endmodule //xn83 data_in, data_out
