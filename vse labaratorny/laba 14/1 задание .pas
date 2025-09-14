procedure row(n:integer);
begin
     if n >=1 then begin
        write (n, ' ');
        row(n-1)
     end;
end;
begin
    row(25);
end.