//module multi-X83
//author Mace
//date 2018-03-20
//d83 = 1'010'011
module x83(data_in, data_out);

    input [7:0] data_in;
    output [7:0] data_out;

    //reg temp1;
    wire [7:0] temp2;
    wire [7:0] temp3;
    wire [7:0] temp4;

    assign temp2 = data_in << 1;
    assign temp3 = data_in << 4;
    assign temp4 = data_in << 6;

    assign data_out = data_in + temp2 + temp3 + temp4;

endmodule
