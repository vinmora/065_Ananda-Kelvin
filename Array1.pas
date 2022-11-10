program array1;

uses crt;
type 
    larik = array[1..10] of string;
    
var  
NIM : larik;
n,j,i: integer;

begin
clrscr;

write('Masukkan jumlah Siswa : ');readln(n);

for i := 1 to n do 
    begin
    write('NIM-',i,' : ');readln(NIM[i]);
    end;

for i := n downto 1 do
    begin
    write(NIM[i],' ');
    end;


readln;

end.