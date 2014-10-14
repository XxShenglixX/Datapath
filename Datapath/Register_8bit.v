module Register_8bit(Load,Clear,Clock,inData,outData);

input Load,Clear,Clock ;
input [7:0]	inData ;
output reg [7:0] outData;

always@(posedge Clock)
begin
	if (Clear)
		outData <= 8'd0;
	else if (Load)
		outData <= inData;
end		
endmodule