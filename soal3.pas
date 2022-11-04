program soal3;

uses crt;

var 
i,j,k,l : integer;


begin
clrscr;

   for i := 1 to 4 do
   begin
            for j := 4-1 downto i do
                begin
                write('  ');
                end;

            for j := 1 to i-1 do
                begin
                write('* ');
                end;
            for j := 1 to i do
                begin
                write('* ');
                end;


             writeln;          
    end;
 for k := 4 downto 1 do
    begin 
         for l:= 4-1 downto k-1 do
            begin
            write('  ');
            end;
        for l:= 1 to k-1 do
            begin
            write('* ');
            end;

        for l:= 1 to k-2 do
            begin 
            write('* ');
            end;



            writeln;
    end;
    readln;
end.
