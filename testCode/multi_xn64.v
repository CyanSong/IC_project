//date 2018-3-29
//author Mace
//n64 = 1100.0000

module xn64 (data_in, data_out);
    input [24:0] data_in;
    output [24:0] data_out;

    assign data_out = data_in * -64;

endmodule //xn64
