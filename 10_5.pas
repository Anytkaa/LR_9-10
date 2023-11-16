program MaxArray;

type
  TwoDimArray = array[1..8, 1..8] of Integer;
  OneDimArray = array[1..8] of Integer;

var
  arr: TwoDimArray;
  resultArr: OneDimArray;
  i, j, max, maxCount: Integer;

begin
  // Заполняем двумерный массив случайными числами от 1 до 9
  Randomize;
  for i := 1 to 8 do
  begin
    for j := 1 to 8 do
    begin
      arr[i, j] := Random(9) + 1;
    end;
  end;
  
  // Находим максимальное число в каждой строке и подсчитываем его количество
  for i := 1 to 8 do
  begin
    max := arr[i, 1];
    maxCount := 0;
    for j := 2 to 8 do
    begin
      if arr[i, j] > max then
      begin
        max := arr[i, j];
        maxCount := 0;
      end
      else if arr[i, j] = max then
      begin
        maxCount := maxCount + 1;
      end;
    end;
    
    // Если количество максимальных чисел в строке равно 0, то resultArr[i] = 1, иначе -1
    if maxCount = 0 then
    begin
      resultArr[i] := 1;
    end
    else
    begin
      resultArr[i] := -1;
    end;
  end;
  
  // Выводим исходный двумерный массив и полученный одномерный массив
  writeln('Исходный двумерный массив:');
  for i := 1 to 8 do
  begin
    for j := 1 to 8 do
    begin
      write(arr[i, j]:2, ' ');
    end;
    writeln;
  end;
  
  writeln;
  writeln('Полученный одномерный массив:');
  for i := 1 to 8 do
  begin
    write(resultArr[i], ' ');
  end;
  
  readln;
end.