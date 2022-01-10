// https://rextester.com/PSIJWX89218

var
  i:integer;
  
  procedure PrintChar(c:char;Count:integer);
  var
    i:integer; 
  begin
    for i:=1 to Count do
      if random>0.95 then
        begin
         if c='*' then
          write('o')
         else
          write(c);   
        end
        else
          write(c); 
  end;
  
  procedure PrintPartChristmasTree(LevelCount,MaxLevelCount:integer);
  var
    i:integer;
    StarCount,SpaceCount:integer;
  begin
   StarCount:=1;
   SpaceCount:=LevelCount-1;
   for i:=1 to LevelCount do
   begin
    PrintChar(' ',SpaceCount+MaxLevelCount-LevelCount);
    PrintChar('*',StarCount);
    writeln;
    StarCount:=StarCount+2;
    SpaceCount:=SpaceCount-1;
   end;
  end;
  
begin
  randomize;
  for i:=3 to 8 do
   PrintPartChristmasTree(i,8);  
end.  