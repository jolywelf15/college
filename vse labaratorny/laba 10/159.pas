program ProductOfEvenElements;

function ProductOfEven(arr: array of Integer): Integer;
var
  i, product: Integer;
begin
  product := 1; // Начальное значение произведения
  for i := 0 to High(arr) do
  begin
    if arr[i] mod 2 = 0 then // Проверка на четность
    begin
      product := product * arr[i]; // Умножаем на четный элемент
    end;
  end;

  // Если четных элементов не было, возвращаем 0
  if product = 1 then
    ProductOfEven := 0
  else
    ProductOfEven := product;
end;

var
  numbers: array of Integer;
  result: Integer;
  i: Integer;
begin
  // Пример массива
  SetLength(numbers, 5);
  numbers[0] := 1;
  numbers[1] := 2;
  numbers[2] := 3;
  numbers[3] := 4;
  numbers[4] := 5;

  result := ProductOfEven(numbers);
  WriteLn('Произведение четных элементов: ', result);
end.