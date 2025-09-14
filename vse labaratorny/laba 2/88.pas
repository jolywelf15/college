var a, b: boolean;
result: boolean;
begin

  a:= false;
  b:= true;
  result := a or ( not b );
  writeln('Значения выражения;', result)
end.