program funct1;
uses crt;

procedure MyProcedure(x,y : integer);
var luas : real;

begin
    luas := (x * y)/2;
    writeln('Luas segitiga = ', luas:4:1)    
end;

var 
    a,b : integer;

begin
    clrscr;

    write('Alas = ');readln(a);
    write('Tinggi = ');readln(b);

    writeln;
    MyProcedure(a,b);

    writeln;

    end.