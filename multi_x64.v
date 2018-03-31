//module multi-X64
//author Mace
//date 2018-03-20
//d64 = 1'00'0000
module x64(data_in, data_out);

    input [15:0] data_in;
    output [23:0] data_out;

    assign data_out = data_in << 6;

endmodule
