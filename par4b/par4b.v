

module par4b (a,x);

	input      [3:0] a;
	output     reg x;
	
	always@(a)
	begin
		if(a[0]==0 && a!=0)
			x=1;
		else
			x=0;
		
	end
	
endmodule