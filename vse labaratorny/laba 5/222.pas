program ArrayOperations;

var
  arr: array[1..20] of integer;
  i, firstPositiveIndex, minIndex, minValue, n: integer;
  foundPositive: boolean;

begin
  // 1. Формирование массива из 20 случайных чисел
  randomize;
  n := 20; // Изначальный размер массива
  writeln('Исходный массив:');
  for i := 1 to n do
  begin
    arr[i] := random(201) - 100; // Генерация случайных чисел от -100 до 100
    write(arr[i], ' ');
  end;
  writeln;

  // 2. Удаление первого положительного элемента
  foundPositive := false;
  firstPositiveIndex := -1;
  for i := 1 to n do
  begin
    if (arr[i] > 0) and not foundPositive then
    begin
      firstPositiveIndex := i;
      foundPositive := true;
    end;
  end;

  if foundPositive then
  begin
    // Сдвигаем элементы влево
    for i := firstPositiveIndex to n - 1 do
    begin
      arr[i] := arr[i + 1];
    end;
    n := n - 1; // Уменьшаем размер массива на 1

     writeln('Массив после удаления первого положительного элемента:');
      for i := 1 to n do
          write(arr[i],' ');
        writeln;
  end
  else
  begin
      writeln('В массиве нет положительных элементов.');
  end;



  // 3. Удаление наименьшего элемента
  if n > 0 then // Проверка, что массив не пуст
    begin
      minIndex := 1;
      minValue := arr[1];
      for i := 2 to n do
      begin
        if arr[i] < minValue then
        begin
          minValue := arr[i];
          minIndex := i;
        end;
      end;

       // Сдвигаем элементы влево
      for i := minIndex to n- 1 do
        arr[i] := arr[i + 1];

      n := n - 1; // Уменьшаем размер массива на 1

       writeln('Массив после удаления наименьшего элемента:');
      for i := 1 to n do
          write(arr[i],' ');
        writeln;
   end;


  readln;
end.