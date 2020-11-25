# Para ejecutar un .gap

# Read("filename.gap");

# ej:

Print("hello world");
a:=4;

# Primos menores que 2000
l:=Filtered([1..2000],IsPrime);
t:=Filtered(l,n -> n mod 4 = 1);

# Calcular el tiempo

#<comando>;time;
