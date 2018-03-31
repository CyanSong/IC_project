//date 2018-3-29
//author Mace
//n64 = 1100.0000

module xn64 (data_in, data_out);
    input [15:0] data_in;
    output [23:0] data_out;

    wire [23:0] temp1;
    wire [23:0] temp2;
    wire [23:0] data_temp;

    assign temp1 = data_in << 6;
    assign temp2 = data_in << 7;

    assign data_temp = temp1 + temp2;
    assign data_out = ~data_temp + 1'b1;

endmodule //xn64
