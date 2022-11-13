program array4;
uses crt;

type
Array_1 = array[1..5,1..4] of real;

var
i,j,k,n : integer;
Table : Array_1;
Mean,Avg: real;

begin
clrscr;

write('Masukkan jumlah siswa (Maks 5) : ');readln(n);
writeln;

if (n > 5) then
    begin
        clrscr;
        writeln('Jumlah maksimum siswa adalah 5!');
    end

else
begin

for i := 1 to n do
    begin 
        for j := 1 to 4 do
            begin
                if (j = 1) then
                    begin
                     write('Masukkan nilai Tugas mahasiswa ke-',i,': ');readln(Table[i,j]);
                    end
                else if (j = 2) then 
                    begin
                     write('Masukkan nilai Kuis mahasiswa ke-',i,' : ');readln(Table[i,j]);
                    end
                else if (j = 3) then 
                    begin
                     write('Masukkan nilai UTS mahasiswa ke-',i,'  : ');readln(Table[i,j]);
                    end
                else 
                    begin
                     write('Masukkan nilai UAS mahasiswa ke-',i,'  : ');readln(Table[i,j]);
                     writeln;
                    end;
                    
            end;
    end;
clrscr;

Avg := 0;
for i :=  1 to n do
    begin 
        for j := 1 to 4 do
            begin
                Avg := Avg + Table[i,j];
            end;
        
        Mean := Avg/4 ;
        if (Mean >= 70) then
          begin
            writeln('Rata-rata nilai mahasiswa ke-',i,' adalah: ',Mean:3:2,' (Lulus)');
          end
        else
          begin
            writeln('Rata-rata nilai mahasiswa ke-',i,' adalah: ',Mean:3:2,' (Tidak Lulus)');
          end;


        Avg := 0;
    end;
end;
writeln;
readln;

end.
