module Register_5bit_tb;

// set input as register and output as wires  
reg Load,Clear,Clock ;
reg [4:0]	inData ;
wire [4:0] outData;

//instantiate design code
Register_5bit testing (Load,Clear,Clock,inData,outData);

//clock pulse generator
always #10 Clock = ~Clock;

//Test vectors start here
initial
begin
//initialize all inputs
#0  Load = 0; Clear = 0 ; Clock = 0 ; inData = 5'd1;
#10 Load = 0; Clear = 1 ; inData = 5'd5;  //Testing for clear , expect output 0 
#10 Load = 1; Clear = 0 ; inData = 5'd10; //Testing for load , expect output as input
#10 Load = 0; Clear = 0 ; inData = 5'd5; // Expect no change in data 
#10 Load = 1; Clear = 1 ; //Expect output 0
  
end

endmodule  