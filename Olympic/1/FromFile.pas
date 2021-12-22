var
  f: text;
  val, valmax, sum: integer;
begin
  assign(f, 'g:\test.txt');
  reset(f);
  sum := 0;
  while val <> 1000000000 do
  begin
    read(f, val);
    if val <> 1000000000 then
      if val > valmax then
        valmax := val
      else
        sum := sum + (valmax - val);
  end;
  close(f);
  writeln(sum);
end.