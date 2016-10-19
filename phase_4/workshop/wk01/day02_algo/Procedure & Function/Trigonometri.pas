program Trigonometri;

var
    { Kamus Global }
    sisi, luas, volume: integer;

    // variable: data_type => By Value
    // var variable: data_type => By Reference
    function HitungLuasPersegi(s: integer): integer;
    // var
    //     { Kamus Lokal }
    //     s, l: integer;
    
    begin
        // Function name
        HitungLuasPersegi := s * s;
    end;

    function HitungVolumeKubus(s: integer): integer;
    // var
    //     { Kamus Lokal }
    //     sisi, volume: integer;
    
    begin
        HitungVolumeKubus := s * s * s;
    end;
    
begin
    { Call the procedure }
    write('Masukkan sisi: '); readln(sisi);

    luas := HitungLuasPersegi(sisi);
    write('Luas persegi yaitu: ', luas);

    volume := HitungVolumeKubus(sisi);
    writeln('Volume kubus yaitu: ', volume);

    readln;
end.