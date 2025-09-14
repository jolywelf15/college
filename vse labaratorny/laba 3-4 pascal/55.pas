Var
  x: Array [1..100] of Integer;
  i,n,j: Integer;
  r: Real;
BEGIN
Write('Введите кол-во спортсменов: ');
Readln(n);
For i:=1 to n do
begin
  Write(i,' спортсмен. Введите результат: ');
  Readln(r);
  If r<=13.2 Then
  begin
    j:=j+1;
    x[j]:=i;
  end;
end;
Writeln('Номера участников, выполнивших норму:');
For i:=1 to j do
Write(x[i],' ');
Readln
END.
