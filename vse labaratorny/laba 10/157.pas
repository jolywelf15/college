program UniqueMaxIn2DArray;

const
  N = 8; // Размерность массива

var
  arr: array[1..N, 1..N] of Integer; // Двумерный массив
  result: array[1..N] of Integer; // Одномерный массив
  i, j: Integer;
  maxCount: Integer;
  maxValue: Integer;

begin
  // Инициализация двумерного массива случайными числами
  Randomize;
  for i := 1 to N do
    for j := 1 to N do
      arr[i, j] := Random(100); // Заполнение случайными числами от 0 до 99

  // Вывод двумерного массива
  WriteLn('Двумерный массив:');
  for i := 1 to N do
  begin
    for j := 1 to N do
      Write(arr[i, j]:4);
    WriteLn;
  end;

  // Обработка каждой строки для нахождения единственного максимума
  for i := 1 to N do
  begin
    maxValue := arr[i, 1];
    maxCount := 1;

    // Поиск максимума и подсчет его количества
    for j := 2 to N do
    begin
      if arr[i, j] > maxValue then
      begin
        maxValue := arr[i, j];
        maxCount := 1; // Сбрасываем счетчик
      end
      else if arr[i, j] = maxValue then
        Inc(maxCount); // Увеличиваем счетчик, если нашли еще один максимум
    end;

    // Заполнение одномерного массива в зависимости от количества максимумов
    if maxCount = 1 then
      result[i] := 1
    else
      result[i] := -1;
  end;

  // Вывод одномерного массива
  WriteLn('Одномерный массив:');
  for i := 1 to N do
    Write(result[i]:4);
  WriteLn;
end.