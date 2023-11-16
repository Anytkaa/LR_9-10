
const
  n = 10; // количество элементов в массивах

var
  array1, array2: array[1..n] of integer; // объявление двух массивов
  i, index1, index2, max1, min2: integer; // переменные для циклов и индексов
  maxElement: integer; // максимальный элемент

begin
  // генерируем случайные значения для массивов
  randomize;
  for i := 1 to n do
  begin
    array1[i] := random(50) + 1; // случайное число от 1 до 50
    array2[i] := random(50) + 1; // случайное число от 1 до 50
  end;
  
  // находим индекс первого кратного пяти элемента в каждом массиве
  index1 := -1;
  index2 := -1;
  for i := 1 to n do
  begin
    if (array1[i] mod 5 = 0) and (index1 = -1) then
      index1 := i;
    
    if (array2[i] mod 5 = 0) and (index2 = -1) then
      index2 := i;
  end;
  
  // находим максимальный элемент в первом массиве
  max1 := array1[1];
  for i := 2 to n do
  begin
    if array1[i] > max1 then
      max1 := array1[i];
  end;
  
  // заменяем нулем максимальный элемент в первом массиве, если есть кратный пяти элемент
  if index1 <> -1 then
    array1[index1] := 0;
  
  // умножаем на 2 все элементы во втором массиве, которые идут после минимального
  min2 := array2[1];
  for i := 2 to n do
  begin
    if array2[i] < min2 then
      min2 := array2[i];
    
    if min2 <> array2[i] then
      array2[i] := array2[i] * 2;
  end;
  
  // печатаем исходные массивы
  writeln('Исходный первый массив:');
  for i := 1 to n do
    write(array1[i], ' ');
  
  writeln;
  
  writeln('Исходный второй массив:');
  for i := 1 to n do
    write(array2[i], ' ');
  
  writeln;
  
  // печатаем измененные массивы
  writeln('Измененный первый массив:');
  for i := 1 to n do
    write(array1[i], ' ');
  
  writeln;
  
  writeln('Измененный второй массив:');
  for i := 1 to n do
    write(array2[i], ' ');
  
  writeln;
end.