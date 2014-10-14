module Add_Sub_8bit(Sub,InA,InB,Output);

input Sub ;
input [7:0] InA,InB ;
output reg [7:0] Output ;

always @ (Sub,InA,InB)
begin
	if (Sub)
		Output = InA - InB ;
	else
		Output = InA + InB ;
end

endmodule