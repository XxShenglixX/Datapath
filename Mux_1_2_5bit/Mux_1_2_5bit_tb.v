module Mux_1_2_5bit_tb();

// set input as register and output as wires 
reg Sel ;
reg [4:0]InA,InB ;
wire [4:0]Output ;

//instantiate design code
Mux_1_2_5bit testing(Sel,InA,InB,Output);

//Test vectors start here
initial
begin
//initialize all inputs
#0  Sel = 0 ; InA = 4'd2 ; InB = 4'd3; //Expect output 2
#10 Sel = 1 ;  //Expect output 3;
#10 InA = 4'd3 ; InB = 4'd4 ; //Expect output 4 
#10 Sel = 0 ; InA = 4'd0; // Expect output 0
end

endmodule