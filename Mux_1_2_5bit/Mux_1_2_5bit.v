module Mux_1_2_5bit(Sel,InA,InB,Output);

input Sel ;
input [4:0]InA,InB ;
output reg [4:0]Output ;

always @(Sel,InA,InB)
begin
	if (!Sel)
		Output = InA ;
	else
		Output = InB ;
end

endmodule