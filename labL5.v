module labL;
reg a, b, c;
wire z, cout;
reg [1:0] expect;
integer i, j, k;

yAdder1 adder(z, cout, a, b, c);

initial
begin
    for (i = 0; i < 2; i = i + 1 ) 
    begin
        for (j = 0; j < 2; j = j + 1) 
        begin
            for (k = 0; k < 2; k = k + 1) 
            begin
                a = i;
                b = j;
                c = k;

                expect = a + b + c;
                #2;
                $display("expect=%b cout=%b z=%b", expect, cout, z);
                $display("a=%b b=%b c=%b z=%b", a, b, c, z);
            end
        end

    end

end
endmodule