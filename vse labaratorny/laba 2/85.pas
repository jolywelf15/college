var x, y, z: integer;
result: boolean;
begin
  x:= 5;
  y:= 10;
  z:= 7;
  
  result:= (x = x) and ( x >= y) and (x >=z) or
           (x = y) and ( y >= x) and (y >= z) or
           (x = z) and ( z >= x) and (z >= y); 
           writeln('Значение выражения:', result);
end.