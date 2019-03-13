module labL1;
reg [31:0] a, b;
reg c;

wire [31:0] out;
integer i = 0;
integer expect;
yMux mux(out, a, b, c);

initial
repeat(10)
begin
    a = $random;
    b = $random;
    c = $random % 2;
    expect = (c == 0) ? a : b;
    #5;
    if(expect == out)
        $display("a=%b b=%b c=%b z=%b", a, b, c, out);    
    i = i + 1;

end
endmodule