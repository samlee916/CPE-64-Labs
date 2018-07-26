`timescale 1ns	/ 1ps
module Part4TB();
	reg PR,CR,CLK,D;
	wire Q,QN;
	
	Part4 uut(.PR(PR), .CR(CR), .CLK(CLK), .D(D), .Q(Q), .QN(QN));
	
	initial begin 
	PR = 1'b0;
	CR= 1'b0;
	CLK = 1'b0;
	D = 1'b0;

	#10;
	PR = 1'b0;
	CR= 1'b0;
	CLK = 1'b0;
	D = 1'b1;
	
	#10;
	PR = 1'b0;
	CR= 1'b0;
	CLK = 1'b0;
	D = 1'b1;
	
	#10;
	PR = 1'b1;
	CR= 1'b0;
	CLK = 1'b0;
	D = 1'b1;
	
	#10;
	PR = 1'b0;
	CR= 1'b1;
	CLK = 1'b0;
	D = 1'b1;	
	
	#10;
	PR = 1'b1;
	CR= 1'b1;
	CLK = 1'b1;
	D = 1'b1;	
	
	#10;
	$stop;
	
	end
	endmodule
