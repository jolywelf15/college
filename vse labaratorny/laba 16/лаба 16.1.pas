type
    PWordNode = ^TWordNode;
    TWordNode = record
        word: string;
        count: integer;
        next: PWordNode;
    end;

var
    head: PWordNode;

function AddWord(head: PWordNode; newWord: string): PWordNode;
var
    current, prev, newNode: PWordNode;
begin
    current := head;
    prev := nil;

    // Поиск слова в списке
    while current <> nil do
    begin
        if current^.word = newWord then
        begin
            current^.count := current^.count + 1;
            AddWord := head; // Слово уже существует, увеличиваем счетчик
            Exit;
        end;
        prev := current;
        current := current^.next;
    end;

    
    New(newNode);
    newNode^.word := newWord;
    newNode^.count := 1;
    newNode^.next := nil;

    
    if prev = nil then
    begin
        AddWord := newNode; 
    end
    else
    begin
        prev^.next := newNode;
        AddWord := head;
    end;
end;

procedure PrintWords(head: PWordNode);
var
    current: PWordNode;
    count: integer;
begin
    current := head;
    count := 0;

    while current <> nil do
    begin
        WriteLn(current^.word, ': ', current^.count);
        count := count + 1;
        current := current^.next;
    end;

    WriteLn('Количество различных слов: ', count);
end;

procedure FreeWords(head: PWordNode);
var
    current, next: PWordNode;
begin
    current := head;

    while current <> nil do
    begin
        next := current^.next;
        Dispose(current);
        current := next;
    end;
end;

var
    input: string;

begin
    head := nil;

    WriteLn('Введите слова (введите "exit" для завершения):');
    repeat
        ReadLn(input);
        if input <> 'exit' then
        begin
            head := AddWord(head, input);
        end;
    until input = 'exit';

    PrintWords(head);
    FreeWords(head);
end.
