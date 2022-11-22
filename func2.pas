program soal2;
uses crt;


procedure mean(n: integer);

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
        writeln('Rata - rata : ',avg:4:2);
    end;


var n : integer;
begin
    clrscr;
    write('Masukkan banyak data: ');readln(n);
    writeln;

    mean(n);
    
    writeln;
end.