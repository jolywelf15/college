
program mv1;
 
var
  n, x, y: integer;
 
begin
  read(n);
  x := (n div 37) + 1;
  y := ((n mod 37) div 4) + 1;
  write(x, ' '); write(y);
end.