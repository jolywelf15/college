program ToyFileRecords;

type
  toy = record
    name: string[50]; // Ограничим длину строки для удобства работы с файлами
    price: real;
    age: string[20];
  end;

const
  N = 3; // Количество игрушек

var
  toys, toys_1: array[1..N] of toy; // Массивы записей
  i: integer;
  f: file of toy; // Файл для хранения записей

begin
  // Заполнение данных об игрушках
  with toys[1] do
  begin
    name := 'Конструктор LEGO';
    price := 1999.99;
    age := '6-12 лет';
  end;

  with toys[2] do
  begin
    name := 'Мяч футбольный';
    price := 899.50;
    age := '3-10 лет';
  end;

  with toys[3] do
  begin
    name := 'Кукла Barbie';
    price := 1499.00;
    age := '4-8 лет';
  end;

  // Запись данных в файл
  assign(f, 'toys.dat'); // Связываем файловую переменную с файлом
  rewrite(f); // Открываем файл для записи
  for i := 1 to N do
  begin
    write(f, toys[i]); // Записываем каждую запись в файл
  end;
  close(f); // Закрываем файл

  // Считывание данных из файла
  assign(f, 'toys.dat');
  reset(f); // Открываем файл для чтения
  for i := 1 to N do
  begin
    read(f, toys_1[i]); // Считываем каждую запись из файла
  end;
  close(f);

  // Вывод данных на экран
  writeln('Информация об игрушках (считана из файла):');
  writeln('---------------------------------------------');
  writeln('| Название товара       | Цена     | Возраст |');
  writeln('---------------------------------------------');

  for i := 1 to N do
  begin
    with toys_1[i] do
    begin
      writeln('| ', name:20, ' | ', price:8:2, ' | ', age:8, ' |');
    end;
  end;

  writeln('---------------------------------------------');
end.