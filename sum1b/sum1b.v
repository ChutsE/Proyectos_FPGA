//Ramos Scalabrin Victoria Hermila
//Esparza Soto Jesus Eduardo
//Sumador Completo de 1 bit

//Mmodulo///
module sum1b (a,b,ci,so,co);
	//Puertos
	//sentido  tipo   tamaño   nombre 
	input 			   a,b,ci;
	output			   so,co;
	//Alambres
	//tipo       tamaño  nombre
	wire			  			x0,x1,x2;
	
	//Registros

//Asignaciones////
//	assign So= Ci^(A^B);
//	assign Co= (A&B)|(Ci&(A^B));

	assign x0=a^b;
	assign x1=x0&ci;
	assign x2=a&b;
	assign so=x0^ci;
	assign co=x1|x2;

endmodule