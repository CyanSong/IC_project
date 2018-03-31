//date 2018-3-29
//author Mace
//-36 = 101,1100
module xn36 (data_in, data_out);

    input [15:0] data_in;
    output [23:0] data_out;

    wire [23:0] temp1;
    wire [23:0] temp2;
    wire [23:0] temp3;
    wire [23:0] temp4;
    wire [23:0] data_temp;

    assign temp1 = data_in << 6;
    assign temp2 = data_in << 4;
    assign temp3 = data_in << 3;
    assign temp4 = data_in << 2;

    assign data_temp = temp1 + temp2 + temp3 +temp4;
    assign data_out = ~data_temp + 1'b1;
    
endmodule //xn36 data_in, data_out
