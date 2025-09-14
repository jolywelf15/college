program InsertLineToFile;

uses System.IO;

var
  K: integer;
  filePath: string;
  tempFilePath: string;
  i: integer;
  line: string;
  fileIn, fileOut: Text;

begin
  // Запрос номера строки K
  Write('Введите номер строки (K), перед которой нужно вставить пустую строку: ');
  Readln(K);

  filePath := 'D:\text4.txt';
  tempFilePath := 'D:\temp_text4.txt'; // Временный файл

  try
    // Проверяем, существует ли файл
    if not System.IO.File.Exists(filePath) then
    begin
      Writeln('Ошибка: Файл ', filePath, ' не найден.');
      Halt(1);
    end;

    Assign(fileIn, filePath);
    Reset(fileIn);

    Assign(fileOut, tempFilePath);
    Rewrite(fileOut);

    i := 1;
    while not Eof(fileIn) do
    begin
      ReadLn(fileIn, line);
       if i = K then
          WriteLn(fileOut);
        WriteLn(fileOut,line);
      i := i + 1;
    end;

     Close(fileIn);
     Close(fileOut);

    Assign(fileIn, tempFilePath);
     Reset(fileIn);
     Assign(fileOut, filePath);
     Rewrite(fileOut);

      while not Eof(fileIn) do
      begin
        ReadLn(fileIn,line);
        WriteLn(fileOut,line);
      end;

       Close(fileIn);
       Close(fileOut);


    Writeln('Файл ', filePath, ' успешно обновлен.');

  except
     on D: Exception do
    begin
       Writeln('Ошибка при работе с файлом: ', D.Message);
        if System.IO.File.Exists(tempFilePath) then
          System.IO.File.Delete(tempFilePath);
        Halt(1);
    end;
  end;
end.