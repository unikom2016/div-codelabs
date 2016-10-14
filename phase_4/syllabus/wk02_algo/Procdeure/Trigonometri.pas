program Practice;

// var
    { Kamus Global }

    procedure HitungLuasPersegi;
    var
        { Kamus Lokal }
        sisi, luas: integer;
    
    begin
        write('Masukkan sisi: '); readln(sisi);
        luas := sisi * sisi;
        write('Luas persegi yaitu: ', luas);
    end;

    procedure HitungVolumeKubus;
    var
        { Kamus Lokal }
        sisi, volume: integer;
    
    begin
        write('Masukkan sisi: '); readln(sisi);
        volume := sisi * sisi * sisi;
        write('Volume kubus yaitu: ', volume);
    end;
    
begin
    { Call the procedure }
    HitungLuasPersegi;
    HitungVolumeKubus;
    readln;
end.