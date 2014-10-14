module Mux_2_4_8bit_tb();

// set input as register and output as wires
reg [1:0]Sel;
reg [7:0]InA,InB,InC,InD ;
wire[7:0]OutData;

//instantiate design code
Mux_2_4_8bit testing(Sel,InA,InB,InC,InD,OutData);

//Test vectors start here
initial
begin
//initialize all inputs
#0  Sel = 2'd0 ; InA = 8'd0 ; InB = 8'd1; InC = 8'd2 ; InD = 8'd3 ;//Expect output 0
#10 Sel = 2'd1 ; InB = 8'd4 ; // Expect output 4 
#10 Sel = 2'd2 ; InC = 8'd5 ; // Expect output 5
#10 Sel = 2'd3 ; InD = 8'd6 ; // Expect output 6
  
end

endmodule  