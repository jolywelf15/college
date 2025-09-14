program CheckString;

type
  t_chs = set of Char;

const
  lett: t_chs = ['a'..'z', 'A'..'Z', '_']; // Допустимые символы для первого символа
  num: t_chs = ['0'..'9']; // Допустимые цифры для остальных символов

var
  str: string;
  i: byte;
  flag: boolean;

begin
  // Ввод строки
  write('Введите строку: ');
  readln(str);

  // Проверка первого символа
  if (str = '') or not (str[1] in lett) then
    flag := False
  else
  begin
    flag := True; // Предполагаем, что строка корректна
    for i := 2 to Length(str) do
    begin
      if not (str[i] in lett + num) then
      begin
        flag := False; // Найден недопустимый символ
        break;
      end;
    end;
  end;

  // Вывод результата
  if flag then
    writeln('Строка корректна.')
  else
    writeln('Строка содержит недопустимые символы.');
end.