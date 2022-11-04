program soal4;

uses crt;
var 
i : integer;


begin
    clrscr;

    for i := 1 to 20 do 
        begin 
            write(i); write(' : ');

            if (i mod 2 = 1) then 
                begin 
                    write('ganjil');
                    end
            else 
                begin 
                write('genap');
                end;

            writeln;
        end;
        readln;
end.
