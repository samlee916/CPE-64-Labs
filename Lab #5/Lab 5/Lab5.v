module Lab5(x,reset,clk,moore,mealy,Q,CS,D);
	input x,reset,clk;
	output reg moore,mealy;
	
	output[7:0] Q;
	output reg[2:0] CS,D;
	
	parameter s7 = 3'b111, s6=3'b110, s5=3'b101, s4=3'b100, s3=3'b011, s2=3'b010, s1=3'b001, s0=3'b000;
	
	always@ (x or CS)
	begin
		case(CS)
		s0 : begin
			moore <= 0;
			if(x==1)
			begin	
				D <= s2;
				mealy <= 0;
			end
			else
			begin	
				D <= s1;
				mealy <= 1;
				end
				end
		s1 : begin
			moore <= 0;
			if(x==1)
			begin	
				mealy <= 0;
				D <= s2;
			end
			else
			begin	
				mealy <= 1;
				D <= s3;
				end
				end
		s2 : begin
			moore <= 1;
			if(x==1)
			begin	
				mealy <= 1;
				D <= s7;
			end
			else
			begin	
				mealy <= 0;
				D <= s0;
				end
				end
		s3 : begin
			moore <= 1;
			if(x==1)
			begin	
				mealy <= 1;
				D <= s7;
			end
			else
			begin	
				mealy <= 1;
				D <= s0;
				end
				end
		s4 : begin
			moore <= 1;
			if(x==1)
			begin	
				mealy <= 1;
				D <= s7;
			end
			else
			begin	
				mealy <= 0;
				D <= s0;
				end
				end
		s5 : begin
			moore <= 1;
			if(x==1)
			begin	
				mealy <= 1;
				D <= s7;
			end
			else
			begin	
				mealy <= 0;
				D <= s0;
				end
				end
		s6 : begin
			moore <= 1;
			if(x==1)
			begin	
				mealy <= 1;
				D <= s7;
			end
			else
			begin	
				mealy <= 0;
				D <= s0;
				end
				end
		s7 : begin
			moore <= 0;
			if(x==1)
			begin	
				mealy <= 0;
				D <= s1;
			end
			else
			begin	
				mealy <= 0;
				D <= s2;
				end
				end
			endcase
		end
		
	always@(posedge clk or negedge reset)
	begin
		if(reset == 0)
			CS <= s4;
		else
			CS <= D;
		end
		
	assign Q[7:5] = CS;
	assign Q[4:2] = D;
	assign Q[1] = mealy;
	assign Q[0] = moore;
	
	endmodule 

	
	
		
				