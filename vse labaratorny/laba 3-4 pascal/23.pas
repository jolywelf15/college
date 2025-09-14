program PointsOnSegments;

var
  A1, A2, A3, A4, N, i: integer;
  X: array[1..100] of integer; // Массив для хранения координат точек
  Count: array[1..4] of integer; // Массив для хранения количества точек на каждом отрезке

begin
  // Ввод координат точек A1, A2, A3, A4
  write('Введите координату точки A1: ');
  readln(A1);
  write('Введите координату точки A2: ');
  readln(A2);
  write('Введите координату точки A3: ');
  readln(A3);
  write('Введите координату точки A4: ');
  readln(A4);

  // Ввод количества дополнительных точек
  write('Введите количество дополнительных точек: ');
  readln(N);

  // Ввод координат дополнительных точек
  for i := 1 to N do
  begin
    write('Введите координату точки ', i, ': ');
    readln(X[i]);
  end;

  // Инициализация счетчиков точек на отрезках
  for i := 1 to 4 do
    Count[i] := 0;

  // Подсчет количества точек на каждом отрезке
  for i := 1 to N do
  begin
    if (X[i] > A1) and (X[i] <= A2) then
      Count[1] := Count[1] + 1;
    if (X[i] > A2) and (X[i] <= A3) then
      Count[2] := Count[2] + 1;
    if (X[i] > A3) and (X[i] <= A4) then
      Count[3] := Count[3] + 1;
    if (X[i] > A4) then
      Count[4] := Count[4] + 1;
  end;

  // Вывод результатов
  writeln('Количество точек на отрезке [A1, A2]: ', Count[1]);
  writeln('Количество точек на отрезке [A2, A3]: ', Count[2]);
  writeln('Количество точек на отрезке [A3, A4]: ', Count[3]);
  writeln('Количество точек на отрезке [A4, +oo): ', Count[4]);

  readln;
end.