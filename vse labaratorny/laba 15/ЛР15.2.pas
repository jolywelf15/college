program StudentTable;

type
  anketa = record
    fio: string;
    birth: string;
    kurs: 1..5;
  end;

const
  N = 3; // Количество студентов

var
  students: array[1..N] of anketa; // Массив записей
  i: integer;

begin
  // Заполнение данных о студентах
  students[1].fio := 'Иванов Иван Иванович';
  students[1].birth := '01.01.2000';
  students[1].kurs := 3;

  students[2].fio := 'Петров Петр Петрович';
  students[2].birth := '15.05.2001';
  students[2].kurs := 2;

  students[3].fio := 'Сидорова Анна Владимировна';
  students[3].birth := '20.10.1999';
  students[3].kurs := 4;

  // Вывод данных в удобочитаемом виде
  writeln('Данные о студентах:');
  writeln('---------------------------------------------');
  writeln('|      Ф.И.О.       | Дата рождения | Курс |');
  writeln('---------------------------------------------');

  for i := 1 to N do
  begin
    writeln('| ', students[i].fio:18, ' | ', students[i].birth:13, ' | ', students[i].kurs:4, ' |');
  end;

  writeln('---------------------------------------------');
end.