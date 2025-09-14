program NOD_Euclid;

function NOD(a, b: integer): integer; // параметризация
begin
  if b = 0 then
    NOD := a  // База рекурсии
  else
    NOD := NOD(b, a mod b);  // декомпозиция
end;

var
  num1, num2, result: integer;

begin
  num1 := 3430;  // первое число
  num2 := 1365;  // второе число

  result := NOD(num1, num2);  // вызов функции для нахождения НОД
  writeln('НОД(', num1, ', ', num2, ') = ', result);  // вывод результата
end.