program pascalforboomer;

uses crt;

var
a, b, c: integer;

begin
    clrscr;

    write('masukkan angka 1: ');readln(a);
    write('masukkan angka 2: ');readln(b);
    write('masukkan angka 3: ');readln(c);

 if (a <= b) then 
    if (b <= c) then
            begin writeln('urutan:  ',a,' ',b,' ',c); //Kondisi a<=b<=c
            end
    else if (c <= a) then
            begin writeln('urutan:  ',c,' ',a,' ',b); //Kondisi c<=a<=b
            end
    else 
    begin 
   writeln('error!');
   end       
 else if (b <= a) then
      if (a <= c) then
            begin writeln('urutan:  ',b,' ',a,' ',c); //Kondisi b<=a<=c
            end
      else if (c <= b) then
            begin writeln('urutan:  ',c,' ',b,' ',a); //Kondisi c<=b<=a
            end
      else
      begin 
      writeln('error!');
      end
 else if (c <= a) then
         if (a <= b)
          then 
            begin writeln('urutan:  ',c,' ',a,' ',b); //Kondisi c<=a<=b
            end

         else if (b <= c) then
            begin writeln('urutan:  ',b,' ',c,' ',a); //Kondisi b<=c<=a
            end
         else 
          begin 
            writeln('error!');
          end
 else 
   begin 
   writeln('error!');
   end;

 readln;
end.
