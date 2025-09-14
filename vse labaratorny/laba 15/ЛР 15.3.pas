program ToyRecords;

type
  toy = record
    name: string;
    price: real;
    age: string;
  end;

const
  N = 3; // Количество игрушек

var
  toys: array[1..N] of toy; // Массив записей
  i: integer;

begin
  // Заполнение данных об игрушках с использованием with
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

  // Вывод данных на экран
  writeln('Информация об игрушках:');
  writeln('---------------------------------------------');
  writeln('| Название товара       | Цена     | Возраст |');
  writeln('---------------------------------------------');

  for i := 1 to N do
  begin
    with toys[i] do
    begin
      writeln('| ', name:20, ' | ', price:8:2, ' | ', age:8, ' |');
    end;
  end;

  writeln('---------------------------------------------');
end.