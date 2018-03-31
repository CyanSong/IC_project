//module multi-X83
//author Mace
//date 2018-03-20
//d36 = 10'0100
module x36(data_in, data_out);

    input [15:0] data_in;
    output [23:0] data_out;

    wire [23:0] temp1;
    wire [23:0] temp2;

    assign temp1 = data_in << 2;
    assign temp2 = data_in << 5;

    assign data_out = temp1 + temp2;

endmodule
