//date 2018-3-29
//author Mace
//-36 = 101,1100
module xn36 (data_in, data_out);

    input [24:0] data_in;
    output [24:0] data_out;

    assign data_out = data_in * -36;

endmodule //xn36 data_in, data_out
