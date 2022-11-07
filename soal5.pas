program soal5;

var
j,k,l : integer;


begin
writeln;
writeln;
writeln;

    j:=0;
    while j < 10 do
begin
    j:=j+1;
    k:=0;
    while k < 10 do
begin
    k:=k+1;
    l:=j * k;
    write(j,' x ',k,'  = ');
    if (l mod 4 = 0) and (l mod 6 = 0) then
        begin 
        end
    else 
    begin
    write(l:3);
    end;
    writeln;
end;
    writeln;
end;
    readln;
    end.
