module labL1;
reg a, b, c;
wire out;
integer i, j, k;
yMux1 mux(out, a, b, c);

initial
begin
	for (i = 0; i < 2; i = i + 1)
	begin
		for (j = 0; j < 2; j = j + 1)
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
			// 	$display("FAIL: a=%b b=%b cIn=%b z=%b cOut=%b", a, b, cIn, z, cOut);
			// end
            end
		end
	end
	$finish;
end
endmodule