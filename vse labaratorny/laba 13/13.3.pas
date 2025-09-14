program SumOfEvenIndexedReals;

var
  filePath: string;
  f: file of real;
  num: real;
  i, numElements: integer;
  sum: real;
begin
  filePath := 'E:\real_numbers.dat';
  sum := 0;

  try
    // Попытка открыть файл для чтения
    Assign(f, filePath);
     try
      Reset(f);
      except
         on E: Exception do
          begin
              Writeln('Файл ', filePath, ' не найден. Создаю новый файл.');
              Rewrite(f);
              Write('Сколько вещественных чисел записать в файл? ');
              Readln(numElements);
              Writeln('Введите ', numElements, ' вещественных чисел:');
               for i := 1 to numElements do
                begin
                  Readln(num);
                  Write(f, num);
                 end;
              Close(f);
              Assign(f,filePath);
              Reset(f);
           end;
    end;


    i := 1;
    while not Eof(f) do
    begin
      Read(f, num);
      if i mod 2 = 0 then
        sum := sum + num;
      i := i + 1;
    end;
   Close(f);
    Writeln('Сумма элементов с четными номерами: ', sum:0:2);
  except
    on E: Exception do
    begin
      Writeln('Ошибка при работе с файлом: ', E.Message);
      Halt(1);
    end;
  end;
end.