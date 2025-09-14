program Fibonacci;

procedure fib(i, n: integer);
begin
  if i + n <= 89 then  // проверяем, чтобы не превышать 89
  begin
    writeln(i + n, ' ');  // выводим текущее число Фибоначчи
    fib(n, i + n);        // рекурсивный вызов с новыми параметрами
  end;
end;

begin
  fib(0, 1);  // начинаем с первых двух чисел Фибоначчи
end.
