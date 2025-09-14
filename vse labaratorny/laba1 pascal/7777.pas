program AddZeroToMiddle;



var
  Number: Integer;
  StrNumber: string;
  MiddleIndex: Integer;

begin
  Write('Введите число: ');
  ReadLn(Number);

  StrNumber := IntToStr(Number); // Преобразование числа в строку
  MiddleIndex := Length(StrNumber) div 2; // Определение индекса середины

  // Вставка нуля в середину строки
  if Length(StrNumber) mod 2 = 0 then // Если длина четная
    StrNumber := Copy(StrNumber, 1, MiddleIndex) + '0' + Copy(StrNumber, MiddleIndex + 1, Length(StrNumber))
  else // Если длина нечетная
    StrNumber := Copy(StrNumber, 1, MiddleIndex) + '0' + Copy(StrNumber, MiddleIndex + 1, Length(StrNumber));

  Number := StrToInt(StrNumber); // Преобразование строки обратно в число

  WriteLn('Число с нулем в середине: ', Number);
  ReadLn;
end.