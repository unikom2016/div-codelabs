program ArrayOrder;

var
    larik_dinamis: array of integer;
    indeks, bilangan: integer;

begin
    indeks := 1;

    repeat
        setlength(larik_dinamis, indeks);
        write('Masukkan bilangan: '); 
        readln(bilangan);

        larik_dinamis[indeks - 1] := bilangan;

        indeks := indeks + 1;
    until (bilangan = -1);

    write('Panjang array: ');
    writeln(length(larik_dinamis) - 1);

    // Tampilkan larik
    for a := 0 to length(larik_dinamis) - 2 do
        write(larik_dinamis[a], ' ');
    
    writeln;
end.