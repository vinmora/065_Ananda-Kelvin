program makanan;
uses crt;

var nasi: byte;

begin
clrscr;

writeln('=======================================================================');
writeln('                         Menu yang tersedia');
writeln('1. Nasi Padang ');
writeln('2. Nasi Campur ');
writeln('3. Nasi Gurih ');
writeln('4. Nasi Kuning ');
writeln('5. Nasi Soto ');
writeln('=======================================================================');
writeln;
write('Pilih nomor menu makanan anda: ');readln(nasi);
case (nasi) of
    1: writeln('Nasi Padang Rp. 15000 ');
    2: writeln('Nasi Campur Rp. 12000 ');
    3: writeln('Nasi Gurih Rp. 10000 ');
    4: writeln('Nasi Kuning Rp. 13000 ');
    5: writeln('Nasi Soto Rp. 17000 ');

else 
    begin 
        writeln(' Maaf, hanya tersedia 5 menu makanan');
     end;   
end;

writeln;
readln;
end.
