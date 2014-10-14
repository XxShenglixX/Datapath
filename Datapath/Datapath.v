module Datapath(Input,IRload,JMPmux,PCload,Meminst,MemWr,Asel,Aload,Reset,Clock,Sub,IR,Aeq0,Apos,Output);

input [7:0] Input;
input IRload,JMPmux,PCload,Meminst,MemWr,Aload,Reset,Clock,Sub ;
input [1:0]Asel;
output Aeq0 ,Apos ;
output IR[7:5] ;
output Output



endmodule