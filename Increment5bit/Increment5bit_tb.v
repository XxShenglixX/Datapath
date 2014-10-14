module Increment5bit_tb();

// set input as register and output as wires  
reg [4:0] Input ;
wire [4:0] Output;

//instantiate design code
Increment5bit testing(Input,Output);

//Test vectors start here
initial
begin
//initialize all inputs
#0  Input = 5'd0 ; //Expect output 1 
#10 Input = 5'd1 ; // Expect output 2
#10 Input = 5'd23 ; // Expect output 24
#10 Input = 5'd31 ; // Expect output 0

end
endmodule