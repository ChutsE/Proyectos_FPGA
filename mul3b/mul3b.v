//Ramos Scalabrin Victoria Hermila
//Esparza Soto Jesus Eduardo
//multiplicador de 3 bit

//Modulo///////////////////////////////////
module mul3b (x,y,z);
	//Puertos
	//sentido  tipo   tamaño   nombre 
	input 			   [2:0]     x,y;
	output			   [5:0]			z;
	//Alambres
	//tipo       tamaño  nombre
//	wire			 [3:0] 			sx;
//	wire			 [7:0] 			cx;
	
	//Registros
	reg          [5:0]        r0,r1,r2;

//Asignaciones//////////////////////////////////////
	//señales
	//assign señal=valor/operacion
	assign z=r0+r1+r2;
	
	//Componente
	//nombre   etiqueta (puertos)
//	mul1b     u0       (.si(0)    ,.x(x[0]),.y(y[0]),.ci(0)    ,.so(z[0]) ,.co(cx[0]));
//	mul1b     u1       (.si(0)    ,.x(x[1]),.y(y[0]),.ci(cx[0]),.so(sx[0]),.co(cx[1]));
//	mul1b     u2       (.si(0)    ,.x(x[2]),.y(y[0]),.ci(cx[1]),.so(sx[1]),.co(cx[2]));
//	mul1b     u3       (.si(sx[0]),.x(x[0]),.y(y[1]),.ci(0)    ,.so(z[1]) ,.co(cx[3]));
//	mul1b     u4       (.si(sx[1]),.x(x[1]),.y(y[1]),.ci(cx[3]),.so(sx[2]),.co(cx[4]));
//	mul1b     u5       (.si(cx[2]),.x(x[2]),.y(y[1]),.ci(cx[4]),.so(sx[3]),.co(cx[5]));
//	mul1b     u6       (.si(sx[2]),.x(x[0]),.y(y[2]),.ci(0)    ,.so(z[2]) ,.co(cx[6]));
//	mul1b     u7       (.si(sx[3]),.x(x[1]),.y(y[2]),.ci(cx[6]),.so(z[3]) ,.co(cx[7]));
//	mul1b     u8       (.si(cx[5]),.x(x[2]),.y(y[2]),.ci(cx[7]),.so(z[4]) ,.co(z[5])) ;
	
	//Secuenciales
	always@(x or y)
	begin
		if(y[0]==1)
			r0={3'b000,x};
		else 
			r0=0;
			
		if(y[1]==1)
			r1={2'b00,x,1'b0};
		
		else
			r1=0;
		
		if(y[2]==1)
			r2={1'b0,x,2'b00};
		else
			r2=0;
			
	end
	
endmodule 