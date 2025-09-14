var n, k: integer;
T: boolean;
begin 
  n:= 10;
  k:= 15;
  T:= ( n mod 2 = k mod 2);
  if T then
    writeln('n и k имеют одинаковую четность')
  else
    writeln('n и k имеют разную четность');
 
   
end.