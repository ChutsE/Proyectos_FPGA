//Jesus Eduardo Esparza Soto
//Contador de 4 bits

//Modulo

module cont4b (clk,rst,ctrl,sal);

	//puertos
	//sentido    tipo  tamaño   nombre
	input                       clk,rst,ctrl;
	output       reg   [3:0]         sal;
	
	//alambre y registros
	
//Asignaciones

	//señales
	//componentes
	//secuenciales
	
	always@(posedge clk) //flancos de subida (posedge)
	begin
		if(rst)
			sal=0;
		else
			if(!ctrl)
				sal=sal+1;
			else
				sal=sal-1;
	end
	
endmodule