//Cronometro de hasta el 59 min

//Modulo

module crono59m (clk,rst,ctrl,um ,dm, us, ds);

	//puertos
	//sentido    tipo  tamaño   nombre
	input                       clk,rst,ctrl;
	output       reg   [3:0]     um,dm,us,ds;
	
	//alambre y registros
	reg                         maquina;
	parameter         pausa=0, cuenta=1;
	
//Asignaciones
//	initial
//	begin
//		dm=5;
//		um=9;
//	end
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
	
	//contador de unidades de segundo
	always@(posedge clk) //flancos de subida (posedge)
	begin
		if(rst) us=0;
		else 
		if(maquina)
		begin
			if(us==9)
				us=0;
			else
				us=us+1;
		end
		
	end
	
		//contador de decenas de segundo
	always@(posedge clk) //flancos de subida (posedge)
	begin
		if(rst) ds=0;
		else 
		if(us==9&&maquina)
		begin
			if(ds==5)
				ds=0;
			else
				ds=ds+1;
		end
	end
	
			//contador de unidades de minuto
	always@(posedge clk) //flancos de subida (posedge)
	begin
		if(rst) um=0;
		else 
		if(ds==5&&us==9&&maquina)
		begin
			if(um==9)
				um=0;
			else
				um=um+1;
		end
	end
	
				//contador de decenas de minuto
	always@(posedge clk) //flancos de subida (posedge)
	begin
		if(rst) dm=0;
		else 
		if(um==9&&ds==5&&us==9&&maquina)
		begin
			if(dm==5)
				dm=0;
			else
				dm=dm+1;
		end
		
		if(dm==5&&um==9&&ds==5&&us==9&&maquina) dm=0;
	end
	
endmodule