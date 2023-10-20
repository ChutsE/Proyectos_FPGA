//Ramos Scalabrin Victoria Hermila
//Esparza Soto Jesus Eduardo
//multiplicador de 4 bits

//Modulo///
module mul4b (x,y,z);
	//Puertos
	//sentido  tipo   tamaño   nombre 
	input 			    [3:0]    y,x;
	output             [7:0]    z;
	//Registros 
	reg                [7:0]    r0,r1,r2,r3;
//	wire               [15:0]   sx;
//	wire					 [2:0]    cx;
	
		
	//Registros

//Asignaciones///
//	//señales
//   assign z[6:3]=sx[15:12];
//	assign z[0]=sx[0];
//	assign z[1]=sx[4];
//	assign z[2]=sx[8];
//	
//	//Componente
//	//nombre          etiqueta (puertos)
//	bloque_mul4b      h0       (.X(x[3:0]),.Y(y[0]),.Sx(0)       ,.Si(0)    ,.So(sx[3:0])  ,.Co(cx[0]));
//	bloque_mul4b      h1       (.X(x[3:0]),.Y(y[1]),.Sx(sx[3:1]) ,.Si(cx[0]),.So(sx[7:4])  ,.Co(cx[1]));
//	bloque_mul4b      h2       (.X(x[3:0]),.Y(y[2]),.Sx(sx[7:5]) ,.Si(cx[1]),.So(sx[11:8]) ,.Co(cx[2]));
//	bloque_mul4b      h3       (.X(x[3:0]),.Y(y[3]),.Sx(sx[11:9]),.Si(cx[2]),.So(sx[15:12]),.Co(z[7]) );
//	//Secuenciales

		//Comportamental Concurrente Ternaria
		
	//assign señal=condicion? cierto:falso
//	assign r0=y[0]? {4'b0000,x}:0;
//	assign r1=y[1]? {3'b000,x,1'b0}:0;
//	assign r2=y[2]? {2'b00,x,2'b00}:0;
//	assign r3=y[3]? {1'b0,x,3'b000}:0;
//	
//	assign z=r0+r1+r2+r3;
	
		//Condicional "if"
	
	always@(y)
	begin
		if(y[0])
			r0={4'b0000,x};
		else
			r0=0;
		
		if(y[1])
			r1={3'b000,x,1'b0};
		else
			r1=0;
		
		if(y[2])
			r2={2'b00,x,2'b00};
		else
			r2=0;
			
		if(y[3])
			r3={1'b0,x,3'b000};
		else
			r3=0;	
	
	end
	
	assign z=r0+r1+r2+r3;
	
endmodule 

