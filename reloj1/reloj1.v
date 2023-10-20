//Jesus Eduardo Esparza Soto
//Contador de decenas

//Modulo

module reloj1 (clk,rst,mu,md);

	//puertos
	//sentido    tipo  tamaño   nombre
	input                       clk,rst;
	output       reg   [3:0]    mu,md;
	
	//alambre y registros
	reg					 [5:0]    segundos;
	
	
//Asignaciones

	//inciales
	//señales
	//componentes
	//secuenciales
	
	//contador de segundos///////////////////////////////////
	always@(posedge clk)
	begin
		if(rst||segundos==59)
			segundos=0;
		else
			segundos=segundos+1;
	end
	
	/////////////////////////////////////////////////////////
	
	
	//contador de unidades de minutos///////////////////////////////////
	always@(posedge clk)
	begin
		if(rst||mu==10)
			mu=0;
		else if(segundos==59)
			mu=mu+1;
	end
	
	/////////////////////////////////////////////////////////
	
		//contador de decenas de minutos///////////////////////////////////
	always@(posedge clk)
	begin
		if(rst||md==5)
			md=0;
		else if(mu==9 && segundos==59)
			md=md+1;
	end
	
	/////////////////////////////////////////////////////////
	
endmodule
