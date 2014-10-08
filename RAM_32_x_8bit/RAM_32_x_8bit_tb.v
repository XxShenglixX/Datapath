module RAM_32_x_8bit_tb;

// set input as register and output as wires  
reg WE,Clock ;
reg [4:0] Address;
reg [7:0] inData ;

wire [7:0] outData ;

//instantiate design code
RAM_32_x_8bit RAM_32bit(Address,WE,Clock,inData,outData);

//clock pulse generator
always #5 Clock = ~Clock;

//Test vectors start here
initial
begin
//initialize all inputs
#0   WE = 1 ; Clock = 0 ; Address = 5'd0 ; inData = 8'd1 ; //Write 1 to location 5
#10  WE = 0 ; Address = 5'd0 ; inData = 8'd5 ;  //Read location 0 , expect 1 for output
#10  WE = 1 ; Address = 5'd10 ; inData = 8'd100 ; //Write 100 to location 10
#10  WE = 0 ; inData = 8'd55 ; //Read location 10,expect 100
#10  WE = 1 ; inData = 8'd10 ; //Overwrite location 10 with 10
#10  WE = 0 ; inData = 8'd0 ; //Read location 10,expect 10
end
endmodule