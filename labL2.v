module labL1;
reg [1:0] a, b;
reg c;
wire [1:0] out;
integer i, j, k;

yMux2 mux(out, a, b, c);

initial
begin
	for (i = 0; i < 4; i = i + 1)
	begin
		for (j = 0; j < 4; j = j + 1)
		begin
			for (k = 0; k < 2; k = k + 1)
			begin
			a = i;
			b = j;
			c = k;
			// expect = a + b + c;
			#1; // wait for z and cOut
			// if ((expect[0] == z) && (expect[1] == cOut))
				$display("PASS: a=%b b=%b c=%b z=%b", a, b, c, out);
			// else
			// 	$display("FaIL: a=%b b=%b cIn=%b z=%b cOut=%b", a, b, cIn, z, cOut);
			// end
            end
		end
	end
	$finish;
end
endmodule