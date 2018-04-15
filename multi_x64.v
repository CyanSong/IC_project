//module multi-X64
//author Mace
//date 2018-03-20
//d64 = 1'00'0000
module x64(data_in, data_out);

    input signed [24:0] data_in;
    output signed [24:0] data_out;

    assign data_out = data_in * 64;

endmodule
