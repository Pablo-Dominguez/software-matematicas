# Problemas 1-3 Hackmd.io

# Link: https://hackmd.io/@kAls213bSReoBtV6qntszg/ryJ4lJWYr

# Primer problema:

l:=Filtered([10000..11000],IsPrime);
t:=Filtered(l,n -> n mod 4 = 1);

# Segundo problema:

media := function(l)
    
    local sum, len;
    
    len := Length(l);
    sum := Sum(l);
    
    # Comprobamos que el input es válido
    if len = 0 then
        Print("La lista es vacia\n");
        return fail;
    fi;
    
    return sum / len;
end;

# Tercer problema

libre := function(n)
    local factores,dup_removed;
    
    factores := Factors(n);
    dup_removed := DuplicateFreeList(factores);
    return Length(factores) = Length(dup_removed);
end;
    
# Cuarto problema: Poner un time y comparar los tiempos de: triple bucle, doble bucle, producto cartesiano, y producto cartesiano pero con iterador. (primer notebook)


## Primer modo

ternas := [];

for i in [1..100] do
    for j in [i..100] do
        for k in [j..100] do
            if i^2 + j^2 = k^2 then 
                Add(ternas,[i,j,k]);
                break;
            fi;
            od;
        od;
    od;time; 
# time = 52

## Segundo modo

ternas := [];

for i in [1..100] do
    for j in [i..100] do
        if RootInt(i^2 + j^2)^2 = (i^2 + j^2) then 
            Add(ternas,[i,j,i^2 + j^2]);
            break;
        fi;
        od;
    od;time; 
# time = 4

## Tercer modo

ternas := [];

for i in Cartesian([1..100],[1..100]) do
    sq := i[1]^2 + i[2]^2;
    if RootInt(sq)^2 = (sq) and sq <= 100^2 then 
            Add(ternas,[i[1],i[2],sq]);
    fi;
    od;
# time = 16

## Cuarto modo


ternas := [];
l:=IteratorOfCartesianProduct([1..100],[1..100]);

for i in l do
    sq := i[1]^2 + i[2]^2;
    if RootInt(sq)^2 = (sq) and sq <= 100^2 then 
            Add(ternas,[i[1],i[2],sq]);
    fi;
    od;
# time = 15

