//Jesus Eduardo Esparza Soto
//Contador de decenas

//MODULO///////////////////////////////////////////
module reloj2 (clk,rst,btn4,rac,dis_ctrl,mu,md,hu,hd,clk_d);

	//Entradas y Salidas
	input              [1:0]    rac;
	input								 btn4;
	input					 [3:0]  	 dis_ctrl;
	input                       clk,rst;
	
	output       reg   [3:0]    mu,hu;
	output       reg   [2:0]    md;
	output       reg   [1:0]    hd;
	
	output       reg            clk_d;
	
	//alambre y registros
	reg					 [5:0]    segundos;
	

//ASIGNACIONES/////////////////////////////////////

	//inciales
	initial
	begin 
		segundos=55;
		mu=9;
		md=5;
		hu=3;
		hd=2;	
	end
	//señales
	//componentes
	//secuenciales
	
		
	//contador de segundos
	always@(posedge clk)
	begin
//		if(rst)
//			segundos=0;
//		else
			if(segundos==59) segundos=0;
			else             segundos=segundos+1'b1;
	end
	
	//contador de unidades de minuto
	always@(posedge clk)
	begin
//		if(rst)
//			mu=0;
//		else 
		if(rac==0 && btn4 && dis_ctrl==4'b0001 || segundos==59) mu=mu+1'b1;
		if(mu>9) mu=0;	
	end
	
	//contador de decenas de minuto
	always@(posedge clk)
	begin
//		if(rst)
//			md=0;
//		else 
		if(rac==0 && btn4 && dis_ctrl==4'b0010 || mu==9 && segundos==59) md=md+1'b1;
	   if(md>5)md=0;
	
	end
	
	//contador de unidades de hora
	always@(posedge clk)
	begin
//		if(rst)
//			hu=0;
//		else 
		if(rac==0 && btn4 && dis_ctrl==4'b0100 || md==5 && mu==9 && segundos==59) hu=hu+1'b1;
		if(hu>9)hu=0;
			
		
		if(hd==2 && hu==4)hu=0;
	end
	
	//contador de decenas de hora
	always@(posedge clk)
	begin
		clk_d=0;
//		if(rst)
//			hd=0;
//		else 
		if(rac==0 && btn4 && dis_ctrl==4'b1000 || hu==3 && md==5 && mu==9 && segundos==59) hd=hd+1'b1;
		if(hd>2) begin hd=0; clk_d=1; end
		
	end
	
endmodule