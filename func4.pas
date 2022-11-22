program soal3;
uses crt;

procedure prima(n : integer);
    
    var
        i : integer;
        prime : boolean;
    begin 

        prime := true;
        if n < 2 then
            prime := false
        else
         for i := 2 to (n div 2) do 
            begin
                if (n mod i = 0) then
                    prime := false;
                    break;
            end;
        if (prime) then
            writeln('Prima')
        else
            writeln('Non-Prima');

    end;

var a : integer;
    rp : string;
    
begin 
repeat
    
    clrscr;
    write('Masukkan angka : ');readln(a);
    writeln;
    prima(a);
    writeln;
    writeln('press Enter to repeat, or type something else to exit');
    writeln;
    readln(rp);
    
    
until (rp <> '');
end.