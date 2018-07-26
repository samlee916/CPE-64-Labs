`timescale 1ns	/ 1ps
module Lab5TB();

	reg x, reset, clk;
	wire moore, mealy;
	
	wire[7:0] Q;
	wire[2:0] CS,D;
	
	Lab5 uut(.x(x), .reset(reset), .clk(clk), .moore(moore), .mealy(mealy), .Q(Q), .CS(CS), .D(D));
	
	initial begin 
	clk = 1'b0;
	reset = 1'b1;
	x = 1'b0;
	
	#5;
	reset = 1'b0;
	
	#5;
	reset = 1'b1;
	
	#1000;
	$stop;
	end
	
	always
	begin
		#10;
		clk = ~clk;
		end
		endmodule
	