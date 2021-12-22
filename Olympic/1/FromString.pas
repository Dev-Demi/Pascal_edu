//function ReadIntegerFromString(s: string; var from: integer): integer;
//Считывает целое из строки начиная с позиции from и устанавливает from за считанным значением

var
  st: string;
  val, valmax, sum, from: integer;

begin
  sum := 0;
  read(st);
  
  while val <> 1000000000 do
  begin
    from := 1;
    val := ReadIntegerFromString(st, from);
    delete(st, 1, from);
    
    if val <> 1000000000 then
      if val > valmax then
        valmax := val
      else
        sum := sum + (valmax - val);
    
  end;
  writeln(sum);
end.
