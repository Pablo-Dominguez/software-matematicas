
# Ejercicio 7

V1 := Rationals^3;
V2 := Rationals^2;
f := LeftModuleGeneralMappingByImages(V1,V2,Basis(V1),[[1,1],[1,0],[0,-1]]);

Elements(Basis(V1));
Elements(Basis(V2));

Elements(Basis(Image(f)));
Elements(Basis(Kernel(f)));
