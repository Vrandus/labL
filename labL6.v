module labL;
reg[31:0] a, b;
reg c;
wire [31:0] z;
wire cout;
reg [31: 0] expect;


yAdder my_Adder(z, cout, a, b, c);

initial

begin
    a = 24;
    b = 3;
    c = 0;
    expect = a + b + c;
    #1;
    $display("expect=%d", expect);
    $display("a=%d b=%d c=%d z=%d", a, b, c, z);
end
endmodule