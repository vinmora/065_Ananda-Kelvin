program array3;
uses crt;

type
Array_1 = array[1..10] of integer;

var
i,j,m,n : integer;
z : integer;
L : Array_1;

begin
clrscr;

write('Masukkan jumlah siswa (1-10) : ');readln(n);

if  (n <= 10) and (n > 0) then
    begin

    for i := 1 to n do
        begin
            write('Masukkan nilai siswa ke-',i);
            write(' : ');readln(L[i]);
        end;

    for i:= 1 to n do
        begin
            for j:= 1 to i do
                begin
                    if (L[j]<L[j+1]) then
                     begin
                      z := L[j];
                      L[j] :=  L[j+1];
                      L[j+1] := z;
                     end;
                end;
        end;

    writeln;

    for i := 1 to n do
        begin;
         write(L[i],' ');
        end;

end

else
    begin
     write('masukkan jumlah siswa yang valid !');
    end;

readln;
end.