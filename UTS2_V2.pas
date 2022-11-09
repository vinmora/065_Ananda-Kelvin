program UTS2;
uses crt;

var i,j,k,l,m,n : integer;

begin
clrscr;
write('Masukkan nilai n: ');readln(n);
for i := n downto 1 do
    begin
   
    for j := 1 to i do
      begin 
        write(' ')
      end;

    for k := n-1 downto i do 
      begin
        write('*')
      end;

    if (i = n) then
      begin
        write('*');
      end
    else
      begin
        write('1')
      end;

    for l := n-1 downto i do
      begin
        write('*');
      end;

writeln;
end;
end.