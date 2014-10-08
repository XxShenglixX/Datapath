module Register_5bit_tb;

// set input as register and output as wires  
reg Load,Clear,Clock ;
reg [4:0]	inData ;
wire [4:0] outData;

//instantiate design code
Register_5bit testing (Load,Clear,Clock,inData,outData);

//clock pulse generator
always #5 Clock = ~Clock;

//Test vectors start here
initial
begin
//initialize all inputs
#0  Load = 0; Clear = 0 ; Clock = 0 ; inData = 5'd5;
#10 Load = 0; Clear = 1 ; inData = 5'd10;  //Testing for clear , expect output 0 
#10 Load = 1; Clear = 0 ; inData = 5'd7; //Testing for load , expect output 7
#10 Load = 0; Clear = 0 ; inData = 5'd5; // Expect no change in output 
#10 Load = 1; Clear = 1 ; //Expect output 0
  
end

endmodule  