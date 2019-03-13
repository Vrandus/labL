module LabL;

reg [1:0] a, b, c, d, e;
wire [1:0] out;
integer expect;
integer i = 0;


yMux4to1 mux(out, a, b, c, d, e);

initial
repeat(10)
begin 
    a = $random;
    b = $random;
    c = $random;
    d = $random; 
    e = $random % 4;
    
    if(e == 0) 
        expect = a;
    if(e == 1)
        expect = b;
    if(e == 2)
        expect = c;
    if(e == 3)
        expect = d;
    #1
    if ( expect == out) 
        $display("a=%b b=%b c=%b d=%b e=%b out=%b", a, b, c, d, e, out); 
    i = i + 1;    
end
endmodule