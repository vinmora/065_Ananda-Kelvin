program soal5;
uses crt;

procedure aritmetika(n : integer);
    var
        i,j,k,l,x,y,z : integer;
    begin
    
        y := 1;
        x := 1;
        write(x ,',', y,',');
        for i := 1 to (n-2) do 
            begin   
                z := y + x;
                x := y;
                y := z;
                if (i <> (n-2)) then
                    write(z,',')
                else 
                    write(z);
            end;

        writeln;
        x := 1;
        write(x,',');
        for j := 1 to (n-1) do
            begin
                x := (x)*2;
                if (j = n-1) then
                    write(x)
                else 
                    write(x,',');
            end;

        writeln;
        z := 0;
        for k := 1 to n*2 do
            begin
                if k mod 2 = 1 then
                    begin
                        z := z + k;
                        if (k <> ((n*2)-1)) then
                            write(z,',')
                        else
                            write(z);
                    end
            end;

        writeln;
        z := 0;
        for l := 1 to n*2 do
            begin
                if l mod 2 = 0 then
                    begin
                        z := z + l;
                        if (l <> (n*2) ) then
                            write(z,',')
                        else 
                            write(z);
                    end
            end;
    end;

var a : integer;
begin
    clrscr;

    write('input angka: ');readln(a);
    writeln;

    aritmetika(a);
end.