//Ramos Scalabrin Victoria Hermila
//Esparza Soto Jesus Eduardo
//multiplicador de 2 bit

//Modulo///////////////////////////////////
module mul2b (x,y,z);
	//Puertos
	//sentido  tipo   tamaño   nombre 
	input 			   [1:0]     x,y;
	output			   [3:0]			z;
	//Alambres
	//tipo       tamaño  nombre
	//wire			 [3:0] 			sx,cx;
	wire            [3:0]         r0,r1;
	
	//Registros

//Asignaciones//////////////////////////////////////
	//señales
	//assign señal=valor/operacion
//	assign z[0]=sx[0];
//	assign z[2:1]=sx[3:2];
//	assign z[3]=cx[3];
//	
	//Componente
	//nombre   etiqueta (puertos)
//	mul1b     u0       (.si(0)    ,.x(x[0]),.y(y[0]),.ci(0)    ,.so(sx[0]),.co(cx[0]));
//	mul1b     u1       (.si(0)    ,.x(x[1]),.y(y[0]),.ci(cx[0]),.so(sx[1]),.co(cx[1]));
//	mul1b     u2       (.si(sx[1]),.x(x[0]),.y(y[1]),.ci(0)    ,.so(sx[2]),.co(cx[2]));
//	mul1b     u3       (.si(cx[1]),.x(x[1]),.y(y[1]),.ci(cx[2]),.so(sx[3]),.co(cx[3]));
//	

	//Comportamental concurrente ternaria
	
	//assign señal=condicion? cierto:falso
	assign r0=y[0]? {2'b00,x}:0;
	assign r1=y[1]? {1'b0,x,1'b0}:0;
	assign z=r0+r1;
	
	//Secuenciales
	
	
endmodule 

