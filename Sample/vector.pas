var
  x1,x2,y1,y2,l:real;
  dx,dy:real;
begin
  write('x1=');
  readln(x1);
  write('x2=');
  readln(x2);
  write('y1=');
  readln(y1);
  write('y2=');
  readln(y2);
  dx:=x2-x1;
  dy:=y2-y1;
  l:=sqrt(dx*dx+dy*dy);
  writeln('l=',l);
end.  
  