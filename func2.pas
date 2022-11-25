program soal2;
uses crt;


function mean(n: integer): real;

    type
    arr1 = array [1..50] of integer;

    var 
    i,  index : integer;
    avg: real;
    m: arr1;

    begin
        for i := 1 to n do 
            begin
                write('Masukkan angka ke-',i,' : ');readln(m[i]);
            end;   
        writeln;

        index := 0; 
        for i := 1 to n do
            begin
                index := index + m[i];
            end;
        avg := index / n;
        mean := avg;
       
    end;


var n : integer;
hasil: real;
begin
    clrscr;
    write('Masukkan banyak data: ');readln(n);
    writeln;

    hasil := mean(n);
    writeln(hasil:4:2);
    
    writeln;
end.
