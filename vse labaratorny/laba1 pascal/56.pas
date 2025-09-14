uses crt;
var
  x, y, first, second, third, difference: integer;
begin
  clrscr;
  writeln('342:');
  readln(x);
  
  first := x div 100;          
  second := (x div 10) mod 10;
  third := x mod 10;           
  
  y := third * 100 + second * 10 + first; 
  difference := abs(x - y);               
  
  writeln('Разность между ', x, ' и ', y, ' равна ', difference);
  readln;
end.