module yArith(z, cout, a, b, ctrl); 
// add if ctrl=0, subtract if ctrl=1
output [31:0] z; 
output cout; 
input [31:0] a, b; 
input ctrl; 
wire[31:0] notB, tmp, tmp2; 
wire cin; 
// instantiate the components and connect them 
// Hint: about 4 lines of code 

not yNot[31:0](notB, b);
yAdder add(tmp, cout, a, b, ctrl);
yAdder sub(tmp2, cout, a, notB, ctrl);
yMux #(32) muxArith(z, tmp, tmp2, ctrl);
endmodule 