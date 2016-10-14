program Practice;

var
    { Kamus Global }
    sisi, luas, volume: integer;

    // variable: data_type => By Value
    // var variable: data_type => By Reference
    procedure HitungLuasPersegi(sisi: integer, var luas: integer);
    var
        { Kamus Lokal }
        sisi, luas: integer;
    
    begin
        luas := sisi * sisi;
    end;

    procedure HitungVolumeKubus(sisi: integer, var volume: integer);
    var
        { Kamus Lokal }
        sisi, volume: integer;
    
    begin
        volume := sisi * sisi * sisi;
    end;
    
begin
    { Call the procedure }
    write('Masukkan sisi: '); readln(sisi);
    
    HitungLuasPersegi(sisi, luas);
    write('Luas persegi yaitu: ', luas);

    HitungVolumeKubus(sisi, volume);
    write('Volume kubus yaitu: ', volume);

    readln;
end.