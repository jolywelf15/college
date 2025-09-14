var a, b, c, p, S: real;
begin
writeln('10:');
readln(a);
writeln('10:');
readln(b);
writeln('10:');
readln(c);
p := (a + b + c) / 2;
S := sqrt(p * (p - a) * (p - b) * (p - c));
writeln('Площадь треугольника:', S);
end.

