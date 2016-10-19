program ArrayTest;

const
    maks = 3;

// Bentukan
type
    array_nilai = array[1..maks] of real;

var
    // Cara 1
    // nama: array[1..10] of string;
    // // Cara 2
    // angka: array[1..maks] of integer;

    // Cara 3
    nilai_kehadiran: array_nilai;
    nilai_tugas: array_nilai;
    nilai_uts: array_nilai;
    nilai_uas: array_nilai;
    nilai_akhir: array_nilai;

    // Tipe data primitif

    procedure tambahdata(brp_mhs: integer; var n_k, n_t, n_uts, n_uas: array_nilai);
    var
        i: integer;
    begin
        for i := 1 to brp_mhs do
        begin
            write('Masukkan nilai kehadiran mahasiswa ke-', i, ' :'); // 10%
            readln(n_k[i]);

            write('Masukkan nilai tugas mahasiswa ke-', i, '     :'); // 20%
            readln(n_t[i]);

            write('Masukkan nilai uts mahasiswa ke-', i, '       :'); // 30%
            readln(n_uts[i]);

            write('Masukkan nilai uas mahasiswa ke-', i, '       :'); // 40%
            readln(n_uas[i]);

            writeln;
        end;
    end;

    function hitungnilai(brp_mhs: integer; n_k, n_t, n_uts, n_uas: array_nilai): real;
    var
        i: integer;
    begin
        for i := 1 to brp_mhs do
        begin
            hitungnilai := (n_k[i] * 0.10) + (n_t[i] * 0.20) + (n_uts[i] * 0.30) + (n_uas[i] * 0.40);
            nilai_akhir[i] := hitungnilai;
        end;
    end;


    procedure tampildata(brp_mhs: integer; hasil: array_nilai);
    var
        i: integer;
    begin
        for i := 1 to brp_mhs do
        begin
            writeln;
            writeln('Nilai akhir mahasiswa ke-', i, ' yaitu: ', hasil[i]:10:2);
        end;
    end;


begin
    // nama[1] := 'Siapa coba?';
    // writeln(nama[1]);
  
    tambahdata(maks, nilai_kehadiran, nilai_tugas, nilai_uts, nilai_uas); // procedure
    hitungnilai(maks, nilai_kehadiran, nilai_tugas, nilai_uts, nilai_uas); // function
    tampildata(maks, nilai_akhir); // procedure

end.