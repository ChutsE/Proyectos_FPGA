//Jesus Eduardo Esparza Soto
//Cronometro de hasta el 59

//Modulo

module crono9 (clk,rst,ctrl,u ,d);

	//puertos
	//sentido    tipo  tamaño   nombre
	input                       clk,rst,ctrl;
	output       reg   [3:0]         u,d;
	
	//alambre y registros
	reg                         maquina;
	parameter         pausa=0, cuenta=1;
	
//Asignaciones

	//señales
	//componentes
	//secuenciales
	


	//control de transiciones////////////////
	always@(posedge clk)
	begin
		if(rst)
			maquina=pausa;
		else
			case (maquina)
				pausa:
					begin
						if(ctrl)
							maquina=cuenta;
					end
				cuenta:
					begin
						if(ctrl)
							maquina=pausa;
					end
			endcase
	end
	
	//contador de unidades
	always@(posedge clk) //flancos de subida (posedge)
	begin
		if(rst) u=0;
		else 
		if(maquina)
		begin
			if(u==9)
				u=0;
			else
				u=u+1;
		end
		
	end
	
		//contador de decenas
	always@(posedge clk) //flancos de subida (posedge)
	begin
		if(rst) d=0;
		else 
		if(u==9&&maquina)
		begin
			if(d==5)
				d=0;
			else
				d=d+1;
		end
		
	end
	
endmodule