
# Definimos la función

lamasbarata := function(N,T,P)
    local particiones,pos, price,prices;
    particiones := RestrictedPartitions(N,T);
    prices := [];
    for l in particiones do
        price := 0;
        for k in l do
            pos := Position(T,k);
            price := price + P[pos];
        od;
        Add(prices,price);
    od;
    if particiones = [] then
        return fail;
    else
        return Minimum(prices);
    fi;
end;
            
        
