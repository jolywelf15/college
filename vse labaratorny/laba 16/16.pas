program PointerExample;

var
    i: integer;      // Целочисленная переменная
    i_ptr: ^integer; // Указатель на целочисленную переменную

begin
    i := 2;          
    i_ptr := @i;     


    WriteLn('Значение переменной i: ', i_ptr^); 
end.