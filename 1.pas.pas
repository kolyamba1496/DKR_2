program one;
var arr: array of integer;  
  n, k, i, j, t: integer;
begin
  writeln('Введите размер массива: ');  
  Readln(n);  
  SetLength(arr, n);  
  writeln('Введите элементы массива:');  
  for i := 0 to n - 1 do  
    readln(arr[i]); 
  writeln('Введите k (номер статистики): ');  
  readln(k); 

  for i := 0 to n - 2 do  
    for j := i + 1 to n - 1 do  
      if arr[i] > arr[j] then  
      begin
        t := arr[i];
        arr[i] := arr[j];  
        arr[j] := t;  
      end;

  if (k > 0) and (k <= n) then  
    writeln('k-я статистика: ', arr[k - 1]) 
  else
    writeln('Неверное значение k');
end.
