`timescale 1ns	/ 1ps
module Part3TB();
	reg CLK, D;
	wire R, S, Q, QN;
	
	Part3 uut(.CLK(CLK), .D(D), .R(R), .S(S), .Q(Q), .QN(QN));
	
	initial begin 
	CLK = 1'b1;
	D = 1'b0;

	#5;
	CLK = 1'b0;
	//D = 1'b1;
	
	#5;
	CLK = 1'b0;
	D = 1'b1;
	
	#5;
	CLK = 1'b1;
	D = 1'b1;
	
	#5;
	$stop;
	
	end
	endmodule
