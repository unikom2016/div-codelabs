program ArrayOfRecord;

const
    maks = 3;

type
    mhs = record
        nim: string;
        nama: string;
        umur: integer;
        n_kehadiran, n_tugas, n_uts, n_uas, n_akhir: real;
        indeks: char; // 80 - A, 65 - B, 50 - C, 30 - D, E
    end;

    array_mhs = array of mhs;

var
    mahasiswa: array_mhs;
    i: integer;
    lanjut: char;

procedure tambahdata(var m: array_mhs);
var
    i: integer;
begin
    for i := 0 to length(m) do
    begin
        setlength(m, i + 1);
        write('Masukkan NIM Mahasiswa   : '); readln(m[i].nim);
        write('Masukkan Nama Mahasiswa  : '); readln(m[i].nama);
        write('Masukkan Umur Mahasiswa  : '); readln(m[i].umur);

        write('Masukkan nilai kehadiran mahasiswa ke-', i + 1, ' :'); // 10%
        readln(m[i].n_kehadiran);

        write('Masukkan nilai tugas mahasiswa ke-', i + 1, '     :'); // 20%
        readln(m[i].n_tugas);

        write('Masukkan nilai uts mahasiswa ke-', i + 1, '       :'); // 30%
        readln(m[i].n_uts);

        write('Masukkan nilai uas mahasiswa ke-', i + 1, '       :'); // 40%
        readln(m[i].n_uas);
    end;
end;

function hitungnilaiakhir(i: integer; m: array_mhs): real;
begin
    hitungnilaiakhir := (m[i].n_kehadiran * 0.10) + (m[i].n_tugas * 0.20) + (m[i].n_uts * 0.30) + (m[i].n_uas * 0.40);
end;

function hitungindeks(i: integer; m: array_mhs): char;
begin
    if (m[i].n_akhir >= 80) then
        hitungindeks := 'A'
    else if (m[i].n_akhir >= 60) and (m[i].n_akhir < 80) then
        hitungindeks := 'B'
    else if (m[i].n_akhir >= 50) and (m[i].n_akhir < 60) then
        hitungindeks := 'C'
    else if (m[i].n_akhir >= 30) and (mahasiswa[i].n_akhir < 50) then
        hitungindeks := 'D'
    else
        hitungindeks := 'E';
end;

procedure tampildata(m: array_mhs);
var
    i: integer;
begin         
    for i := 0 to length(m) - 1 do
    begin
        writeln('NIM Mahasiswa  : ', m[i].nim);
        writeln('Nama Mahasiswa : ', m[i].nama);
        writeln('Umur Mahasiswa : ', m[i].umur);

        m[i].n_akhir := hitungnilaiakhir(i, m);
        write('Nilai akhir mahasiswa dengan NIM ', m[i].nim);
        writeln(' yaitu: ', m[i].n_akhir:10:1);

        m[i].indeks := hitungindeks(i, m);
        write('Indeks nilai mahasiswa dengan NIM ', m[i].nim);
        writeln(' yaitu: ', m[i].indeks);
    end;
end;

begin
    repeat
        { Input }
        tambahdata(mahasiswa);

        writeln;

        { Process }
        // mahasiswa[i].n_akhir := hitungnilaiakhir(i, mahasiswa);
        // mahasiswa[i].indeks := hitungindeks(i, mahasiswa);

        writeln;
        
        { Output }
        tampildata(mahasiswa);

        writeln;

        write('Mau menambahkan mahasiswa? (Y / N): ');
        readln(lanjut);
    until (lanjut = 'N') or (lanjut = 'n');
end.