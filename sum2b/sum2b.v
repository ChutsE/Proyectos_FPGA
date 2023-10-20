//Ramos Scalabrin Victoria Hermila
//Esparza Soto Jesus Eduardo
//Sumador Completo de 2 bit

//Mmodulo///
module sum2b (a,b,ci,so,co);
	//Puertos
	//sentido  tipo   tamaño   nombre 
	input 	         [1:0]	   a,b;
	input                      ci;
	output			    [1:0]   so;
	output                     co;
	//Alambres
	//tipo       tamaño  nombre
	wire			  			n0;
	
	//Registros

//Asignaciones///
	//señales
	//	assign So= Ci^(A^B);
	//	assign Co= (A&B)|(Ci&(A^B));

	//Componente
	//nombre   etiqueta (puertos)
	sum1b      x0       (.a(a[0]),.b(b[0]),.ci(ci),.so(so[0]),.co(n0));
	sum1b      x1       (.a(a[1]),.b(b[1]),.ci(n0),.so(so[1]),.co(c0));
	
	//Secuenciales
endmodule 