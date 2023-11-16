program MultiplyArray;

var
  array1, array2: array[1..10] of integer;
  sum1, sum2, i: integer;

begin
  sum1 := 0;
  sum2 := 0;
  
  // Заполняем оба массива случайными числами
  writeln('Первый массив:');
  for i := 1 to 10 do
  begin
    array1[i] := Random(21) - 10; // Генерируем числа от -10 до 10
    writeln(array1[i]);
    
    if array1[i] > 0 then
      sum1 := sum1 + array1[i];
  end;
  writeln;
  writeln('Второй массив:');
  for i := 1 to 10 do
  begin
    array2[i] := Random(21) - 10; // Генерируем числа от -10 до 10
    writeln(array2[i]);
    
    if array2[i] > 0 then
      sum2 := sum2 + array2[i];
  end;
  
  // Проверяем суммы и умножаем массив, если sum1 < sum2
  if sum1 < sum2 then
  begin
    writeln('Сумма положительных элементов в первом массиве меньше');
    writeln('Результат умножения первого массива на 10:');
    for i := 1 to 10 do
    begin
      array1[i] := array1[i] * 10;
      writeln(array1[i]);
    end;
  end
  else
  begin
    writeln('Сумма положительных элементов во втором массиве меньше');
    writeln('Результат умножения второго массива на 10:');
    for i := 1 to 10 do
    begin
      array2[i] := array2[i] * 10;
      writeln(array2[i]);
    end;
  end;
end.
