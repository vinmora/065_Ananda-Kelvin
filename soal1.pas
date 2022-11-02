program looptae;
uses crt;
var
i,b,j,n : integer;
    a : real; 
begin  
clrscr;
    
    Write('Masukkan nilai n: ');readln(n);
clrscr;

writeln('n= ',n);
writeln;

    for i := n downto 1 do  
    begin
        a := i*(i+1)/2;
        for j := 1 to i do
               write(j,' '); write('= ',a:2:0);
               writeln;
        end;

writeln;
Writeln;
ReadLn;
end.
