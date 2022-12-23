program soal1;
uses crt;

function ganjil(jenis :longint):string;
    begin
        if jenis mod 2 = 1 then 
        ganjil := 'ganjil'
        else if jenis mod 2 = 0 then
        ganjil := 'genap';

        write(ganjil);
    end; 

procedure prima(jenis : longint);
var 
    i : integer;
    prime : boolean;

    begin 
        prime := true;
        if jenis < 2 then
            prime := false
        else
         for i := 2 to (jenis div 2) do 
            begin
                if (jenis mod i = 0) then
                    prime := false;
                    break;
            end;
        if (prime) then
            write('Prima')
        else
            write('Non-Prima');    
    end;




type 
    data = Record
        nama : string [35];
        nim  : string [10];
        prodi : string [25];
   
    end;        

    M = array[1..5,1..5] of integer;
    Array_1 = array[1..10] of real;
var
    m1,m2,m3: M;
    i,j,x1,x2,y1,y2 : integer;
    prgm : byte;
    jenis: longint;
    nilai1,nilai2,hsltambah,hslkali,hslkurang : integer;
   hslbagi : real;
   mx,n : integer;
   j1,ad : char;
z : real;
L : Array_1;
data1: data;

begin
clrscr;
    writeln('Sebelum memulai program, masukkan data diri anda terlebih dulu');
    writeln;
                begin
                    write('Masukkan nama : ');readln(data1.nama);
                    write('Masukkan NIM : ');readln(data1.nim);
                    write('Masukkan nama jurusan: ');readln(data1.prodi);
                    writeln;
                end;
   
        clrscr;

                writeln('===========================================');
                    writeln('         Selamat datang ',data1.nama,' !');
                writeln('===========================================');

                writeln('Halo ',data1.nama,' dengan NIM ',data1.nim,' dari prodi ',data1.prodi);
                 writeln('Ini adalah sebuah program yang terdiri dari beberapa program matematika sederhana');
                 writeln('Silahkan lihat program yang tersedia dan pilih yang anda inginkan :D');
    writeln;
    writeln('<Tekan ENTER untuk melanjutkan>');
    readln;
    clrscr;

repeat

    clrscr;
    writeln('Masukkan no program matematika yang anda butuhkan');
    writeln;
    writeln('1. Penentu jenis bilangan.');
    writeln('2. Kalkulator');
    writeln('3. Pengurutan data acak');
    writeln('4. Penjumlahan matriks');
    writeln;
    write('>> ');readln(prgm);

clrscr;



    

if prgm = 1 then
   begin
    writeln('Anda memilih program jenis bilangan');
    writeln('Di sini program menentukan apakah bilangan tersebut ganjil/genap dan prima atau bukan');
    writeln('Silahkan masukkan sebuah bilangan bulat');
    writeln;
    write('>>');readln(jenis);

    write(jenis,' adalah bilangan ');ganjil(jenis);write(' dan termasuk bilangan ');prima(jenis);
    writeln;
    writeln('<Tekan ENTER untuk melanjutkan>');
    readln;

    clrscr;
    end




{===============================================================================================================}


else if prgm = 2 then

begin
   clrscr;
   writeln('     Kalkulator');
   writeln('Silahkan masukkan 2 angka bulat ');
   writeln('===============================');
   write('Masukkan Nilai 1 : ');readln(nilai1);
   write('Masukkan Nilai 2 : ');readln(nilai2);
   hsltambah:=(nilai1+nilai2); 
   hslkali:=(nilai1*nilai2);
   hslbagi:=(nilai1/nilai2);   
   hslkurang:=(nilai1-nilai2);
   writeln('===============================');


     writeln('HASIL');
   writeln('Perkalian : ',hslkali);
   writeln('Pembagian : ',hslbagi:0:2);
   writeln('Penjumlahan : ',hsltambah);
   writeln('Pengurangan : ',hslkurang);
   writeln;
   writeln;
   writeln('<Tekan ENTER untuk keluar');
   readln;
end

{===============================================================================================================}

else if prgm = 3 then

begin
clrscr;
writeln('Anda memilih program pengurutan angka');
writeln('Apakah anda ingin mengurutkan secara Ascending atau Descending? (a/d)');
writeln;
writeln;
writeln('>>');readln(ad);




if ad = 'd' then
begin

write('Masukkan banyak data (maks 10) : ');readln(n);
writeln;

if  (n <= 10) and (n > 0) then
    begin

    for i := 1 to n do
        begin
            write('Masukkan data ke-',i);
            write(' : ');readln(L[i]);
        end;

    for i:= n downto 1 do
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
                write(L[i]:3:0,'  ');
            end;

    end

    else
        begin
            write('masukkan banyak data yang valid !');
        end;
end

else if ad = 'a' then
begin
write('Masukkan banyak data (maks 10) : ');readln(n);
writeln;

if  (n <= 10) and (n > 0) then
    begin

    for i := 1 to n do
        begin
            write('Masukkan data ke-',i);
            write(' : ');readln(L[i]);
        end;

    for i:= 1 to n do
        begin
            for j:= 1 to i-1 do
                begin
                    if (L[j]>L[j+1]) then
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
         write(L[i]:3:0,'  ');
        end;

end

else
    begin
     write('masukkan banyak data yang valid !');
    end;
end;
readln;
end


{===============================================================================================================}

else if prgm = 4 then
begin
writeln('Silahkan masukkan jumlah kolom dan baris matriks anda! (maksimal 5)');
writeln;
write('Masukkan jumlah baris matriks ke-1: ');readln(x1);
write('Masukkan jumlah kolom matriks ke-1: ');readln(y1);
write('Masukkan jumlah baris matriks ke-2: ');readln(x2);
write('Masukkan jumlah kolom matriks ke-2: ');readln(y2);

clrscr;

    if (x1=x2) and (y1=y2) and (x1<=5) and (y1<=5) then
     begin

        for i := 1 to x1 do
            begin
                for j := 1 to y1 do
                 begin
                    write('Masukkan elemen Matriks 1 [',i,',',j,']: ');readln(m1[i,j]);
                 end;
            end;

        writeln;

        for i := 1 to x1 do
            begin
                for j := 1 to y1 do
                 begin 
                    write('Masukkan elemen Matriks 2 [',i,',',j,']: ');readln(m2[i,j]);
                 end;
            end;


        for i:= 1 to x1 do
            begin  
                for j:= 1 to y1 do
                 begin 
                    m3[i,j] := m1[i,j] + m2[i,j];
                 end;
            end;

        writeln;

        writeln('Hasil penjumlahan matriks: ');
        writeln;
        for i:= 1 to x1 do
            begin   
                for j:= 1 to y2 do 
                 begin
                    write(m3[i,j]:4,' ');
                 end;
                 writeln;
            end;

        writeln;
        end

    else if (x1>5) or (y1>5) then
        begin
         writeln('Maksimum kolom dan baris adalah 5!')
        end

    else
        begin
         writeln('Matriks tidak dapat di jumlahkan karena berbeda ordo!');
        end;


    writeln('<Tekan ENTER untuk melanjutkan>');
    readln;
    
end

else 
    begin
        writeln('Nomor program yang anda masukkan tidak ada');
    end;



writeln('Apakah anda ingin kembali menggunakan program? (Y/n)');
write('>>');readln(j1);
until (j1 <> 'y');
clrscr;

writeln('Terima kasih telah menggunakan program ini ',data1.nama,' !');
writeln('Sampai jumpa kembali ~!');

writeln;
writeln;

writeln('<Tekan ENTER untuk keluar>');
readln;

clrscr;
end.