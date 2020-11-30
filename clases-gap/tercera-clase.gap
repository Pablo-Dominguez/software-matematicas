

es_suma_cuadrados := function(n)
    local factores, fac_filtered, end_fac ;
    factores := Factors(n);
    fac_filtered := Filtered(factores, \x -> x mod 4 = 3);
    for i in fac_filtered do
        end_fac := Length(Positions(fac_filtered,i));
        if IsOddInt(end_fac) then
            return false;
        fi;
    od;
    return true;
end;

# Anillo

 x:=Indeterminate(ZmodnZ(2),"x");
 
 modulo:=x^5+x^4+1;
 
 P:=PolynomialRing(ZmodnZ(2),"x");
 
 R:=P/Ideal(P,[modulo]);
 
 Units(R);
 
 Elements(Units(R));
        
