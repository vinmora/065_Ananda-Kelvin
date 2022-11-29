program soal1;
uses crt;

type 
    biodata = Record
        nama : string [35];
        nim  : string [10];
        alamat : string [50];
        no_hp : string [15];
        lahir : string [25];
        tanggal : byte;
        bulan : string [10];
        tahun : integer;
    end;

var
    data : array [1..30] of biodata;
    i,n : integer;
    yn,x : char;
    
begin
    clrscr;
    write('Masukkan jumlah mahasiswa : ');readln(n);
    clrscr;

    for i := 1 to n do
        begin
            writeln('Masukkan data ke-',i);
            with data[i] do
                begin
                    write('Masukkan nama : ');readln(nama);
                    write('Masukkan NIM : ');readln(nim);
                    write('Masukkan alamat : ');readln(alamat);
                    write('Masukkan no. HP : ');readln(no_hp);
                    write('Masukkan tempat lahir: ');readln(lahir);
                    write('Masukkan tanggal lahir: ');readln(tanggal);
                    write('Masukkan bulan lahir: ');readln(bulan);
                    write('Masukkan tahun lahir: ');readln(tahun);
                    writeln;
                end;
    end;

    writeln('Akah anda ingin menampilkan data? Y/N');readln(x);
        yn := UpCase(x);
            if (yn = 'Y') then   
              begin          
                for i := 1 to n do
                    begin
                        writeln('Data mahasiswa ke-',i);
                        with data[i] do
                            begin
                                writeln('Nama : ',nama);
                                writeln('NIM : ',nim);
                                writeln('Alamat : ',alamat);
                                writeln('No.HP : ',no_hp);
                                writeln('Tempat lahir: ',lahir);
                                writeln('Tanggal lahir: ',tanggal);
                                writeln('Bulan lahir: ',bulan);
                                writeln('Tahun lahir: ',tahun);   
                                writeln;  
                            end;
                    end;
                writeln;
                end
            else 
                begin
                end;

    readln;
end.            