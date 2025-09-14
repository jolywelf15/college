program MinMaxInLinkedList;

uses crt;

type
  PNode = ^TNode; // Указатель на узел
  TNode = record
    Data: integer; // Данные узла
    Next: PNode;   // Указатель на следующий узел
  end;

var
  Head: PNode; // Указатель на голову списка
  Current: PNode; // Указатель для перебора списка
  Value: integer; // Вводимое значение
  MinValue, MaxValue: integer; // Минимальное и максимальное значения
  IsFirst: boolean; // Флаг для первого элемента

// Процедура для добавления элемента в конец списка
procedure AddToEnd(var Head: PNode; Value: integer);
var
  NewNode: PNode;
begin
  New(NewNode); // Создаем новый узел
  NewNode^.Data := Value; // Записываем значение
  NewNode^.Next := nil; // Устанавливаем указатель на следующий узел в nil

  if Head = nil then
  begin
    Head := NewNode; // Если список пуст, новый узел становится головой
  end
  else
  begin
    Current := Head;
    while Current^.Next <> nil do
    begin
      Current := Current^.Next; // Перемещаемся к последнему узлу
    end;
    Current^.Next := NewNode; // Добавляем новый узел в конец списка
  end;
end;

// Процедура для поиска минимального и максимального значений
procedure FindMinMax(Head: PNode; var MinValue, MaxValue: integer);
begin
  if Head = nil then
  begin
    writeln('Список пуст.');
    exit;
  end;

  IsFirst := true; // Инициализируем флаг для первого элемента
  Current := Head;

  while Current <> nil do
  begin
    if IsFirst then
    begin
      MinValue := Current^.Data; // Устанавливаем первое значение как минимальное и максимальное
      MaxValue := Current^.Data;
      IsFirst := false; // Устанавливаем флаг в false
    end
    else
    begin
      if Current^.Data < MinValue then
        MinValue := Current^.Data; // Обновляем минимальное значение
      if Current^.Data > MaxValue then
        MaxValue := Current^.Data; // Обновляем максимальное значение
    end;
    Current := Current^.Next; // Переходим к следующему узлу
  end;
end;

begin
  clrscr;
  Head := nil; // Инициализируем голову списка

  // Ввод элементов списка
  writeln('Введите целые числа для списка (введите -1 для завершения):');
  repeat
    readln(Value);
    if Value <> -1 then
      AddToEnd(Head, Value); // Добавляем элемент в список
  until Value = -1;

  // Поиск минимального и максимального значений
  FindMinMax(Head, MinValue, MaxValue);

  // Вывод результатов
  writeln('Минимальное значение: ', MinValue);
  writeln('Максимальное значение: ', MaxValue);

  readln; // Ожидание нажатия клавиши
end.