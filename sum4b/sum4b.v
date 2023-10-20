// Victoria Ramos Scalabrin

module sum4b (a,b,ci,co,so);
//tipo   tamaño      nombre
input     [3:0]       a,b;
input                  ci;
output    [3:0]        so;
output                 co;
//alambres

wire        u0,u1,u2;
//registros

//ASIGNACIONES

//señales 
//componentes  
//nombre etiqueta (a         ,b       ,ci       ,co       ,so)
sum1b     x0     (.a(a[0]),.b(b[0]),.ci(ci),.co(u0),.so(so[0]));
sum1b     x1     (.a(a[1]),.b(b[1]),.ci(u0),.co(u1),.so(so[1]));
sum1b     x2     (.a(a[2]),.b(b[2]),.ci(u1),.co(u2),.so(so[2]));
sum1b     x3     (.a(a[3]),.b(b[3]),.ci(u2),.co(co),.so(so[3]));

endmodule