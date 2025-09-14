var
  cargoCapacity, averageWeight, numPassengers: integer;

begin
  //вес самолета
  cargoCapacity := 8000;  // kg
  // вес одного пассажира
  averageWeight := 50;

  
 

  numPassengers := cargoCapacity div averageWeight;

  writeln('Количество человек может литеть на самолете: ', numPassengers);
  readln;
end.
