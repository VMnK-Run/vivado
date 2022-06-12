`timescale 1ns/1ps

module bin2bcd (

	input 		[7 : 0]	bin,
	output	logic 	[7 : 0]	bcd

	);

	logic [18 : 0]		temp;
	integer			i;

	always @(*) begin
		
			for (i = 0; i < 18; i = i + 1)
				temp[i] = 0;
			temp[10 : 3] = bin;

			repeat (5) begin

				if(temp[11 : 8] > 4) temp[11 : 8] = temp[11 : 8] + 3;
				if(temp[15 : 12] > 4) temp[15 : 12] = temp[15 : 12] + 3;
				temp[17 : 1] = temp[16 : 0];

			end
			bcd = temp[15 : 8];

	end


endmodule