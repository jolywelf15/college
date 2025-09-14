type
    PNode = ^TNode;
    TNode = record
        value: integer;
        next: PNode;
    end;

var
    head, current, newNode: PNode;
    i: integer;

begin
    head := nil;

    // Создание списка из 10 элементов
    for i := 1 to 10 do
    begin
        New(newNode);
        newNode^.value := i; // Заполнение значениями от 1 до 10
        newNode^.next := head; // Добавление в начало списка
        head := newNode; // Обновление головы списка
    end;

    // Вывод всего списка
    WriteLn('Список элементов:');
    current := head;
    while current <> nil do
    begin
        Write(current^.value, ' ');
        current := current^.next;
    end;
    WriteLn;

    // Вывод только четных элементов списка
    WriteLn('Четные элементы списка:');
    current := head;
    while current <> nil do
    begin
        if current^.value mod 2 = 0 then
        begin
            Write(current^.value, ' ');
        end;
        current := current^.next;
    end;
    WriteLn;

    // Освобождение памяти
    current := head;
    while current <> nil do
    begin
        newNode := current^.next;
        Dispose(current);
        current := newNode;
    end;
end.
