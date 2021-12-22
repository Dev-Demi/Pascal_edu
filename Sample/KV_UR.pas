// блок описания переменных
var
  a,b,c:real;
  d,x1,x2:real;
begin
 write('a=');
 readln(a);
 write('b=');
 readln(b);
 write('c=');
 readln(c);
 d:=-b+4*a*c; 
 if (d<0) then
  writeln('Korney net');
 if (d=0) then
  begin
    x1:=-b/(2*a);
    writeln('olin koren');
    writeln('x=',x1:7:2);
  end;
 if (d>0) then
  begin
    x1:=(-b+sqrt(d))/(2*a);
    x2:=(-b-sqrt(d))/(2*a);
    writeln('dva kornya');
    writeln('x1=',x1:7:2);
    writeln('x2=',x2:7:2);
  end;
 readln;
end.

