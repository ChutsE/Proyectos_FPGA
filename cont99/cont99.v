//Jesus Eduardo Esparza Soto
//Contador de decenas 0-99

//Modulo

module cont99 (clk,rst,ctrl,u,d,c);

	//puertos
	//sentido    tipo  tamaño   nombre
	input                       clk,rst,ctrl;
	output       	    [3:0]    u,d,c;
	reg                         clk2,clk3;               
	
	//alambre y registros

	
//Asignaciones

	//señales
	//componentes
		//nombre	etiqueta		(puetos)
		cont9    x0          (.clk(clk),.rst(rst),.ctrl(ctrl),.sal(u)); 	
		cont9    x1          (.clk(clk2),.rst(rst),.ctrl(ctrl),.sal(d)); 	
		cont9    x2          (.clk(clk3),.rst(rst),.ctrl(ctrl),.sal(c)); 
	//secuenciales
	
	always@(posedge clk) //flancos de subida (posedge)
	begin
		case(u)
			9 : clk2=1;
			default clk2=0;
		endcase
		
	end
	
	always@(posedge clk2)
	begin
		case(d)
			9 : clk3=1;
			default clk3=0;
		endcase
	end
endmodule