//module positive to negative
//author Mace
//date 2018-03-20

module pos_to_neg(data_in, data_out);
    input [24:0] data_in;
    output [24:0] data_out;

    assign data_out = ~data_in + 1'b1;

endmodule
