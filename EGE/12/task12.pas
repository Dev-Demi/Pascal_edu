var
  st:string;
  i:integer;
  
  Function MyReplace(OldSt,NewSt,SourceSt:string):string;
  var
    oldP:integer;
  begin
    result:=SourceSt;
    oldP:=pos(OldSt,SourceSt);
    if oldP>0 then
    begin
      delete(result,oldP,Length(OldSt));
      insert(NewSt,result,oldP);
    end;
  end;
  
begin
  st:='';
  for i:=1 to 101 do
    st:=st+'1';
  while Pos('1111',st)>0 do
  begin
    st:=MyReplace('1111','22',st);
    st:=MyReplace('222','1',st);
  end;
  write(st);
end.  