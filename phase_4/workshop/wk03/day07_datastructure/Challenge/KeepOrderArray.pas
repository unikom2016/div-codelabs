program ArrayOrder;

var
    larik_dinamis: array of integer;
    indeks, bilangan: integer;

begin
    indeks := 1;

    repeat
        setlength(larik_dinamis, indeks + 1);
        write('Masukkan bilangan: '); 
        readln(bilangan);

        larik_dinamis[indeks - 1] := bilangan;

        write('Larik ke-', indeks, ' adalah ', larik_dinamis[indeks - 1]);
        writeln;
        writeln;

        indeks := indeks + 1;
    until (bilangan = -1);
end.