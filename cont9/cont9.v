//Jesus Eduardo Esparza Soto
//Contador de decenas

//Modulo

module cont9 (clk,rst,ctrl,sal);

	//puertos
	//sentido    tipo  tamaño   nombre
	input                       clk,rst,ctrl;
	output       reg   [3:0]         sal;
	
	//alambre y registros
	reg					 [25:0]   contador;
	reg                         clk2;
	
//Asignaciones

	//señales
	//componentes
	//secuenciales
	
	//escalador de frecuecia///////////////////////////// de 50MHz a 1Hz
	always@(posedge clk)
	begin
		if(rst)
			begin
			contador=0;
			clk2=0;
			end
		else
			if(contador==49999999)
				begin
				contador=0;
				clk2=0;
				end
			else
				begin
				contador=contador+1;
				clk2=1;
				end
	end
	
	
	//contador de decenas
	always@(posedge clk2) //flancos de subida (posedge)
	begin
	if(rst) sal=0;
	else
	begin
		if(!ctrl)
			begin
				sal=sal+1;
				if(sal==10) sal=0;
				
			end
		else 
			begin
				sal=sal-1;
				if(sal==15) sal=9;
			end
		end
	end
endmodule