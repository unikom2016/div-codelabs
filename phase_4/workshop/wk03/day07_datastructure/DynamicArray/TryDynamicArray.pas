program TryDynamicArray;

var
    larik_dinamis: array of integer;
    bilangan, ukuran, indeks: integer;

begin
    write('Masukkan ukuran larik: '); readln(ukuran);
    // setlength(array_name, length)
    setlength(larik_dinamis, ukuran);

    for indeks := 0 to ukuran do
    begin
        write('Angka ke-', indeks+1, ': ');
        readln(larik_dinamis[indeks]);

        write('Angka ke-', indeks+1, ' adalah ', larik_dinamis[indeks]);

        writeln;
    end;
end.