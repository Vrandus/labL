module labL;
reg signed [31:0] a, b;
reg signed c;
wire signed [31:0] z;
wire signed cout;
reg signed [31: 0] expect;


yArith arith(z, cout, a, b, c);

initial

begin
    a = $random;
    b = $random;
    c = $random % 2;
    expect = a + b + c;
    #1;
    $display("expect=%0d", expect);
    $display("a=%0d b=%0d c=%0d z=%0d", a, b, c, z);
end
endmodule