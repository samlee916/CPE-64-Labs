module Part6(clock,i,reset,q0,q1,q2,q3,q4,q5,q6,q7);
	wire d0,d1,d2,d3,d4,d5,d6,d7;
	input clock,i,reset;
	output reg q0,q1,q2,q3,q4,q5,q6,q7;
	
	assign d0=i;
	assign d1=q0;
	assign d2=q1;
	assign d3=q2;
	assign d4=q3;
	assign d5=q4;
	assign d6=q5;
	assign d7=q6;

	always@(posedge clock or negedge reset)
	begin
	if(reset == 0)
		begin
		q0 <= 0;
		q1 <= 0;
		q2 <= 0;	
		q3 <= 0;
		q4 <= 0;
		q5 <= 0;
		q6 <= 0;	
		q7 <= 0;
		end
	else
		begin
		q0 <= d0;
		q1 <= d1;
		q2 <= d2;	
		q3 <= d3;
		q4 <= d4;
		q5 <= d5;
		q6 <= d6;	
		q7 <= d7;
		end
	end
endmodule 
		