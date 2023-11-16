var
  twoDimArray: array[1..8, 1..8] of integer;
  oneDimArray: array[1..8] of integer;
  i, j, sum, average: integer;
  containsAverage: Boolean;

begin
  randomize;
  
  // Заполняем двумерный массив случайными значениями
  for i := 1 to 8 do
  begin
    for j := 1 to 8 do
    begin
      twoDimArray[i, j] := random(100); // случайные значения от 0 до 99
    end;
  end;
  
  // Формируем одномерный массив, находим минимумы в каждой строке
  for i := 1 to 8 do
  begin
    oneDimArray[i] := twoDimArray[i, 1]; // присваиваем первый элемент строки как минимум
    for j := 2 to 8 do
    begin
      if twoDimArray[i, j] < oneDimArray[i] then
        oneDimArray[i] := twoDimArray[i, j]; // если элемент из строки меньше текущего минимума, обновляем минимум
    end;
  end;
  
  // Находим среднее арифметическое в одномерном массиве
  sum := 0;
  for i := 1 to 8 do
  begin
    sum := sum + oneDimArray[i]; // суммируем все элементы одномерного массива
  end;
  average := sum div 8; // делим сумму на количество элементов для получения среднего
  
  // Проверяем, содержит ли одномерный массив свое среднее арифметическое
  containsAverage := False;
  for i := 1 to 8 do
  begin
    if oneDimArray[i] = average then
    begin
      containsAverage := True;
      break; // если элемент равен среднему, прерываем цикл
    end;
  end;
  
  // Выводим результаты
  writeln('Двумерный массив:');
  for i := 1 to 8 do
  begin
    for j := 1 to 8 do
    begin
      write(twoDimArray[i, j]:4);
    end;
    writeln;
  end;
  
  writeln;
  
  writeln('Одномерный массив:');
  for i := 1 to 8 do
  begin
    write(oneDimArray[i]:4);
  end;
  
  writeln;
  
  if containsAverage then
    writeln('Одномерный массив содержит свое среднее арифметическое.')
  else
    writeln('Одномерный массив не содержит свое среднее арифметическое.');
  
end.