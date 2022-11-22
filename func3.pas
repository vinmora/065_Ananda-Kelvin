program soal3;
uses crt;

procedure faktorial(n : integer);
    var i : integer;
        m : longint;

    begin
        m := 1;
        for i := n downto 1 do
            begin
                m := m * i;  
            end;
        writeln('Hasil = ',m);
    end;
var a : integer;
begin
    clrscr;
    write('Nilai : ');readln(a);
    writeln;
    faktorial(a);
    writeln;

end.