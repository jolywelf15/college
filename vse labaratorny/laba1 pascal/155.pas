program AddZero;
var
  num, result: string;
begin
  writeln('10:');
  readln(num);
  
  if Length(num) > 0 then
    result := '0' + num[Length(num)]
  else
    result := '0';
  
  writeln('Результат: ', result);
end.