
# Núcleo de una aplicación en un anillo


## Definimos el anillo y su cociente
x:=Indeterminate(ZmodnZ(2),"x");
modulo:=x^5+x^4+1;
 
P:=PolynomialRing(ZmodnZ(2),"x");
R:=P/Ideal(P,[modulo]);

## Calculamos la función y el núcleo
f:=MappingByFunction(R,R, p->p^2-p);
Im := Image(f);
Ker := Kernel(f);
Elements(Ker);
