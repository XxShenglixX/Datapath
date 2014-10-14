module Increment5bit(Input,Output);

input [4:0] Input ;
output reg [4:0] Output;

always @ (Input)
	Output = Input + 5'd1 ;


endmodule