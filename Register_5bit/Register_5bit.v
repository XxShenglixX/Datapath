module Register_5bit(Load,Clear,Clock,inData,outData);

input Load,Clear,Clock ;
input [4:0]	inData ;
output reg [4:0] outData;

always@(posedge Clock)
begin
	if (Clear)
		outData <= 5'd0;
	else if (Load)
		outData <= inData;
end		
endmodule