program OddSquares;

var
  N, i: integer;

begin
  write('Enter N: 10 ');
  readln(N);

  writeln('Odd Squares from 1 to ', N);
  writeln('');

  for i := 1 to N do
    if i mod 2 <> 0 then
      writeln(i, '^2 = ', i * i);

  readln;
end.