//Ramos Scalabrin Victoria Hermila
//Esparza Soto Jesus Eduardo
//multiplicador de 5 bits

//Modulo///
module mul5b (x,y,z);
	//Puertos
	//sentido  tipo   tamaño   nombre 
	input 			    [4:0]    y,x;
	output             [9:0]    z;
	//Registros 
	reg                [9:0]    r0,r1,r2,r3,r4;
	
//	wire               [24:0]   sx;
//	wire					 [3:0]    cx;
		
	//Registros

//Asignaciones///
	//señales
//   assign z[8:4]=sx[24:20];
//	assign z[0]=sx[0];
//	assign z[1]=sx[5];
//	assign z[2]=sx[10];
//	assign z[3]=sx[15];
	
	//Componente
	//nombre          etiqueta (puertos)
//	bloque_mul5b      h0       (.X(x[4:0]),.Y(y[0]),.Sx(0)       ,.Si(0)    ,.So(sx[4:0])  ,.Co(cx[0]));
//	bloque_mul5b      h1       (.X(x[4:0]),.Y(y[1]),.Sx(sx[4:1]) ,.Si(cx[0]),.So(sx[9:5])  ,.Co(cx[1]));
//	bloque_mul5b      h2       (.X(x[4:0]),.Y(y[2]),.Sx(sx[9:6]) ,.Si(cx[1]),.So(sx[14:10]),.Co(cx[2]));
//	bloque_mul5b      h3       (.X(x[4:0]),.Y(y[3]),.Sx(sx[14:11]),.Si(cx[2]),.So(sx[19:15]),.Co(cx[3]));
//	bloque_mul5b      h4       (.X(x[4:0]),.Y(y[4]),.Sx(sx[19:16]),.Si(cx[3]),.So(sx[24:20]),.Co(z[9]) );
	//Secuenciales

	
		//Comportamental Concurrente Ternaria
		
//assign señal=condicion? cierto:falso
//	assign r0=y[0]? {5'b00000,x}:0;
//	assign r1=y[1]? {4'b0000,x,1'b0}:0;
//	assign r2=y[2]? {3'b000,x,2'b00}:0;
//	assign r3=y[3]? {2'b00,x,3'b000}:0;
//	assign r4=y[4]? {1'b0,x,4'b0000}:0;

		//Condicional "if"
	
	always@(y)
	begin
		if(y[0])
			r0={5'b00000,x};
		else
			r0=0;
			
		if(y[1])
			r1={4'b0000,x,1'b0};
		else
			r1=0;
			
		if(y[2])
			r2={3'b000,x,2'b00};
		else
			r2=0;
			
		if(y[3])
			r3={2'b00,x,3'b000};
		else
			r3=0;
		
		if(y[4])
			r4={1'b0,x,4'b0000};
		else
			r4=0;
	end
	
		//condicional Switch case
		
//	always@(y)
//	begin
//		case(y[0])
//			1: r0={5'b00000,x};
//			default: r0=0;
//		endcase
//		
//		case(y[1])
//			1: r1={4'b0000,x,1'b0};
//			default: r1=0;
//		endcase
//		
//		case(y[2])
//			1: r2={3'b000,x,2'b00};
//			default: r2=0;
//		endcase
//		
//		case(y[3])
//			1: r3={2'b00,x,3'b000};
//			default: r3=0;
//		endcase
//		
//		case(y[4])
//			1: r4={1'b0,x,4'b0000};
//			default: r4=0;
//		endcase
	
	
	assign z=r0+r1+r2+r3+r4;
endmodule 

