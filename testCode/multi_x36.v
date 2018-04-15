//module multi-X83
//author Mace
//date 2018-03-20
//d36 = 10'0100
module x36(data_in, data_out);

    input signed [24:0] data_in;
    output signed [24:0] data_out;

    assign data_out = data_in * 36;

endmodule
