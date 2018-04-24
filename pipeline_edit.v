/*************************************************/
//date 2018-4-23
//changes include: only 1 ALWAYS BLOCK for each SIGNAL
//                 TIMING & Reset
//
//note that count_in switch to 2'b11 at the same cycle but
//with different expression
/*************************************************/

module IDCT_all( seq_in, mode, clk, reset,
                    seq_out_4,seq_out_8);
input signed [24:0] seq_in;
input mode;
input clk;
input reset;
output signed  [24:0] seq_out_4;
output signed  [24:0] seq_out_8;
wire rst4;
wire rst8;
wire r4;
wire r8;

reg signed [24:0] buffer_in_8 [63:0];
reg signed [24:0] buffer_out_8 [63:0];
reg signed [24:0] buffer_in_4 [15:0];
reg signed [24:0] buffer_out_4 [15:0];
reg signed [24:0] out_tmp_4;
reg signed [24:0] out_tmp_8;
reg signed [9:0]  count_in_4_sql;
reg signed [9:0]  count_in_8_sql;
reg signed [9:0]  count_in_4_pal;
reg signed [9:0]  count_in_8_pal;
reg signed [1:0] count_in;
reg signed [9:0] count_out_4_sql;
reg signed [9:0] count_out_8_sql;
reg signed [9:0] count_out_8_pal;
reg signed [9:0] count_out_4_pal;
wire signed [24:0] out8[7:0];
wire signed [24:0] out4[3:0];


//buffer reset?
always @ ( posedge clk or posedge reset ) begin
	if(!reset) begin
		if( count_in_8_sql >= 0 && count_in_8_sql < 64 ) begin
			buffer_in_8[ count_in_8_sql ] <= seq_in;
		end
	end
end

//buffer reset?
always @ ( posedge clk or posedge reset) begin
	if(!reset) begin
		if( count_in_4_sql >= 0 && count_in_4_sql < 16 ) begin
			buffer_in_4[ count_in_4_sql ] <= seq_in;
		end
	end
end

//buffer out 8
always @ ( posedge clk or posedge reset ) begin
	if(!reset) begin
		if(count_out_8_pal >= 0 && count_out_8_pal < 8) begin
			buffer_out_8[count_out_8_pal*8+0] <= out8[0];
			buffer_out_8[count_out_8_pal*8+1] <= out8[1];
			buffer_out_8[count_out_8_pal*8+2] <= out8[2];
			buffer_out_8[count_out_8_pal*8+3] <= out8[3];
			buffer_out_8[count_out_8_pal*8+4] <= out8[4];
			buffer_out_8[count_out_8_pal*8+5] <= out8[5];
			buffer_out_8[count_out_8_pal*8+6] <= out8[6];
			buffer_out_8[count_out_8_pal*8+7] <= out8[7];
		end
	end
end

//buffer out 4
always @ ( posedge clk or posedge reset ) begin
	if(!reset) begin
		if(count_out_4_pal >=0 && count_out_4_pal < 4) begin
			buffer_out_4[count_out_4_pal*4+0] <= out4[0];
			buffer_out_4[count_out_4_pal*4+1] <= out4[1];
			buffer_out_4[count_out_4_pal*4+2] <= out4[2];
			buffer_out_4[count_out_4_pal*4+3] <= out4[3];
		end
	end
end

//count_in_4_pal
always @ ( posedge clk or posedge reset ) begin
	if(reset) begin
        count_in_4_pal  <= -1;
	end
	
	else if(count_in_4_sql == 15) begin
		count_in_4_pal <= 0;
	end
		
	else if(count_in_4_pal == 3) begin
		count_in_4_pal <= -1;
	end
	
	else if(count_in_4_pal == -1) begin
		count_in_4_pal <= count_in_4_pal + 0;
	end
	
	else begin
		count_in_4_pal <= count_in_4_pal + 1;
	end
end

//count_in_8_pal
always @ ( posedge clk or posedge reset ) begin
	if(reset) begin
        count_in_8_pal  <= -1;
	end
	
	else if(count_in_8_sql == 63) begin
		count_in_8_pal <= 0;
	end
			
	else if(count_in_8_pal == 7) begin
		count_in_8_pal <= -1;
	end

	else if(count_in_8_pal == -1) begin 
		count_in_8_pal <= count_in_8_pal + 0;
	end
	
	else begin
		count_in_8_pal <= count_in_8_pal + 1;
	end
end

//count_in_8_sql loop control
always @ ( posedge clk or posedge reset ) begin
	if(reset) begin
        count_in_8_sql  <= -1;
	end
	
	else if(count_in == 0 && mode == 1) begin
		count_in_8_sql <= 0;
	end
	
	else if(count_in_8_sql == 63) begin
		count_in_8_sql <= -1;
	end

	else if(count_in_8_sql == -1) begin 
		count_in_8_sql <= count_in_8_sql + 0;
	end

	else begin
		count_in_8_sql <= count_in_8_sql + 1;
	end
end

//count_in_4_sql loop control
always @ ( posedge clk or posedge reset ) begin
	if(reset) begin
		count_in_4_sql  <= -1;
	end
	
	else if(count_in == 2'b00 && mode==0 ) begin
		count_in_4_sql <= 10'd0;
	end
	
	else if(count_in_4_sql == 15) begin
		count_in_4_sql <= -1;
	end
	
	else if(count_in_4_sql == -1) begin
		count_in_4_sql <= count_in_4_sql + 0;
	end
	
	else begin
		count_in_4_sql <= count_in_4_sql + 1;
	end
end

//count_out_8_sql control
always @ ( posedge clk or posedge reset ) begin
	if(reset) begin
        count_out_8_sql <= -1;
	end

	else if(count_out_8_sql == 63) begin
		count_out_8_sql <= -1;
	end
	
	else if(count_out_8_pal == 0) begin
		count_out_8_sql <= 0;
	end
	
	else if(count_out_8_sql == -1) begin
		count_out_8_sql = count_out_8_sql + 0;
	end
	
	else begin
		count_out_8_sql <= count_out_8_sql + 1;
	end
end

//count_out_4_sql control
always @ ( posedge clk or posedge reset ) begin
	if(reset) begin
        count_out_4_sql <= -1;
	end
	
	else if(count_out_4_sql == 15) begin
		count_out_4_sql <= -1;
	end
	
	else if(count_out_4_pal == 0) begin
		count_out_4_sql <= 0;
	end
	
	else if(count_out_4_sql == -1) begin
		count_out_4_sql <= count_out_4_sql + 0;
	end	
	
	else begin
		count_out_4_sql <= count_out_4_sql + 1;
	end

end

//count_out_8_pal control
always @ ( posedge clk or posedge reset ) begin
	if(reset) begin
        count_out_8_pal <= -24;
	end
	
	else if(count_out_8_pal == 7) begin
		count_out_8_pal <= -24;
	end
	
	else if(count_in_8_sql == 63) begin
		count_out_8_pal <= -23;
	end

	else if(count_out_8_pal == -24) begin
		count_out_8_pal <= count_out_8_pal + 0;
	end
	
	else begin
		count_out_8_pal <= count_out_8_pal + 1;
	end
end

//count_out_4_pal control
always @ ( posedge clk or posedge reset ) begin
	if(reset) begin
        count_out_4_pal <= -12;
	end
	
	else if(count_out_4_pal == 3) begin
		count_out_4_pal <= -12;
	end
	
	else if(count_in_4_sql == 15) begin
		count_out_4_pal <= -11;
	end

	else if(count_out_4_pal == -12) begin
		count_out_4_pal <= count_out_4_pal + 0;
	end
	
	else begin
		count_out_4_pal <= count_out_4_pal + 1;
	end
end

//count_in control
always @ ( posedge clk or posedge reset ) begin
	if(reset) begin
        count_in <= 2'b00;
	end

	else if(count_in==2'b00) begin
		count_in <= 2'b01;
	end
	
	else if(count_in == 2'b11) begin
		count_in <= 2'b00;
	end
	
	else if(count_in_8_sql==62 || count_in_4_sql==14) begin
		count_in <= 2'b11;
	end

	else if(count_in == 2'b01) begin
		count_in <= count_in + 0;
	end
end

//out_tmp_8 cntrol
always @ ( posedge clk ) begin
	if(count_out_8_sql >= 0 && count_out_8_sql < 64) begin
		out_tmp_8 <= buffer_out_8[count_out_8_sql] ;
	end
end

//out_tmp_4 control
always @ ( posedge clk or posedge reset ) begin
	if(count_out_4_sql >= 0 && count_out_4_sql < 16) begin
		out_tmp_4 <= buffer_out_4[count_out_4_sql] ;
	end
end

assign  r8 = (reset || (count_in_8_sql==62))?1:0;
assign rst8 = r8 | reset;

assign r4 = (reset || (count_in_4_sql==14))?1:0;
assign rst4 = r4 | reset;
assign seq_out_8 = out_tmp_8;
assign seq_out_4 = out_tmp_4;


	IDCT8_whole module1(.data_in_1_ori(buffer_in_8[count_in_8_pal*8+0]),
       .data_in_2_ori(buffer_in_8[count_in_8_pal*8+1]),
       .data_in_3_ori(buffer_in_8[count_in_8_pal*8+2]),
       .data_in_4_ori(buffer_in_8[count_in_8_pal*8+3]),
       .data_in_5_ori(buffer_in_8[count_in_8_pal*8+4]),
       .data_in_6_ori(buffer_in_8[count_in_8_pal*8+5]),
       .data_in_7_ori(buffer_in_8[count_in_8_pal*8+6]),
       .data_in_8_ori(buffer_in_8[count_in_8_pal*8+7]),
       .reset(rst8),
       .clk(clk),
       .data_out_1_fin(out8[0]),
       .data_out_2_fin(out8[1]),
       .data_out_3_fin(out8[2]),
       .data_out_4_fin(out8[3]),
       .data_out_5_fin(out8[4]),
       .data_out_6_fin(out8[5]),
       .data_out_7_fin(out8[6]),
       .data_out_8_fin(out8[7]));

	IDCT_whole module2(.d_in_1_ori(buffer_in_4[count_in_4_pal*4]),
       .d_in_2_ori(buffer_in_4[count_in_4_pal*4+1]),
       .d_in_3_ori(buffer_in_4[count_in_4_pal*4+2]),
       .d_in_4_ori(buffer_in_4[count_in_4_pal*4+3]),
       .reset(rst4),
       .clk(clk),
       .d_out_5_fin(out4[0]),
       .d_out_6_fin(out4[1]),
       .d_out_7_fin(out4[2]),
       .d_out_8_fin(out4[3]));
endmodule
