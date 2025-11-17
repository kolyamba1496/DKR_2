program one;
var s1, s2, result: string;
  i, count: integer;
begin
  write('Введите строку: ');
  readln(s1);
  write('Введите подстроку для удаления: ');
  readln(s2);
  count := 0;
  i := 1; 
  while i <= Length(s1) do
  begin
    if (i + Length(s2) - 1 <= Length(s1)) and (s1[i] = s2[1]) then
    begin
      count := count + 1;
      if count mod 2 = 1 then
        result := result + s2;
      i := i + Length(s2);
    end
    else
    begin
      result := result + s1[i];
      i := i + 1;
    end;
  end;
  writeln('Результат: ', result);
end.