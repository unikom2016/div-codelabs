{ JUDUL }
program factorial;

{ KAMUS }
function factorial(x: integer): integer;
    begin
        if (x = 1) then
            factorial := 1
        else
            factorial := factorial(x - 1) * x;
    end;

var total, n: integer;

{ ALGORITMA }
begin
    // write('Enter a number for x : '); readln(x);
    for n := 0 to 5 do 
        begin
            total := factorial(n);
            writeln('x factored at: ', total);
        end;
end.