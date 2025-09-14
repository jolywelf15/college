var 
  x, y: integer;

function stepen(a, b: integer): integer;
begin
  if b = 0 then
    stepen := 1  // любое число в нулевой степени равно 1
  else if b < 0 then
    stepen := 1 div stepen(a, -b)  // для отрицательной степени
  else
    stepen := a * stepen(a, b - 1);  // рекурсивный вызов
end;

begin
  writeln('число?');
  readln(x);
  writeln('степень?');
  readln(y);
  writeln(stepen(x, y));
end.