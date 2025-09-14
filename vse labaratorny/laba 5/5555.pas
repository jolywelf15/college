program MaxNonIncreasingLength;

var
  arr: array[1..100] of integer; // Максимальный размер массива 100
  n, i, currentLength, maxLength: integer;

begin
  // Ввод размера массива
  writeln('Введите размер массива:');
  readln(n);

  // Проверка корректности размера массива
  if (n <= 0) or (n > 100) then
  begin
    writeln('Некорректный размер массива.');
    readln;
    halt;
  end;

  // Ввод элементов массива
  writeln('Введите элементы массива:');
  for i := 1 to n do
  begin
    readln(arr[i]);
  end;

  // Инициализация
  maxLength := 0;
  currentLength := 1;

  // Поиск максимальной длины невозрастающего участка
  for i := 2 to n do
  begin
    if arr[i] <= arr[i - 1] then
    begin
      currentLength := currentLength + 1;
    end
    else
    begin
        if currentLength > maxLength then
        begin
            maxLength := currentLength;
        end;
        currentLength := 1; // Начинаем новый участок
    end;
  end;

    //Проверка на конец массива
     if currentLength > maxLength then
        begin
            maxLength := currentLength;
        end;

  // Вывод результата
  writeln('Максимальная длина невозрастающего участка: ', maxLength);

  readln;
end.