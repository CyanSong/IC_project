//module adder
//author Mace
//date 2018-03-20

module adder(data_in_1, data_in_2, data_out);

    input [7:0] data_in_1;
    input [7:0] data_in_2;

    output [7:0] data_out;


    assign data_out = data_in_1 + data_in_2;


endmodule