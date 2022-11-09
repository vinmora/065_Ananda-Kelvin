program UTS1;
uses crt;

var i,n,x : integer;

begin
clrscr;
write('Masukkan nilai n: ');readln(n);
x := 1;
for i := n downto 1 do
begin
    x := x * i;
    end;
    write(n,'! = ',x);
end.