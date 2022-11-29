program soal1;
uses crt;

type 
    biodata = Record
        nama : string [35];
        nim  : string [10];
        nomat : byte;

        matkul : string [25];
        sks : byte;
        nilai : string;
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
                    write('Masukkan jumlah mata kuliah : ');readln(nomat);
                    write('Masukkan nama mata kuliah : ');readln(matkul);
                    write('Masukkan jumlah sks: ');readln(sks);
                    writeln;
                end;
    end;
        

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
    readln;
end.            