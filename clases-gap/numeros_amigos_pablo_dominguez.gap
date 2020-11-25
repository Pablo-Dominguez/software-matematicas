
# Números amigos

genera_amigos := function(n)
    
    # Declaramos las variables que vamos a definir
    local P, Q, R;
    
    # Comprobamos que no sea float
    
    if IsFloat(n) then
        Print("No es entero positivo\n");
        return fail;
    fi;
    
    # Comprobamos que el input es válido
    if n <= 1 or not (IsInt(n)) then
        Print("No es entero positivo\n");
        return fail;
    fi;
    
    # Calculamos las variables
    
    P := (3 * (2^(n-1)))-1;
    Q := (3 * (2^n))-1;
    R := (9 * (2^(2*n-1)))-1;
    
    # Comprobamos que sean primos
    
    if ForAll([P,Q,R],IsPrime) then
        Print("Los números amigos son:\n");
        return [2^n * P * Q, 2^n * R];
    else
        Print("Este entero no genera amigos.\n");
        return fail;
    fi;
end;

cuantos_amigos := function(n)
    local t,s;
    s := [];
    for i in [1..n] do 
        t := genera_amigos(i);
        if t <> fail then 
            Add(s,t);
        fi;
    od;
    return s;
end;
    
