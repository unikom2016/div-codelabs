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

    array_mhs = array[1..maks] of mhs;

var
    mahasiswa: array_mhs;
    i: integer;

begin
    for i := 1 to maks do
    begin
        { Input }
        write('Masukkan NIM Mahasiswa   : '); readln(mahasiswa[i].nim);
        write('Masukkan Nama Mahasiswa  : '); readln(mahasiswa[i].nama);
        write('Masukkan Umur Mahasiswa  : '); readln(mahasiswa[i].umur);

        { Process }
        write('Masukkan nilai kehadiran mahasiswa ke-', i, ' :'); // 10%
        readln(mahasiswa[i].n_kehadiran);

        write('Masukkan nilai tugas mahasiswa ke-', i, '     :'); // 20%
        readln(mahasiswa[i].n_tugas);

        write('Masukkan nilai uts mahasiswa ke-', i, '       :'); // 30%
        readln(mahasiswa[i].n_uts);

        write('Masukkan nilai uas mahasiswa ke-', i, '       :'); // 40%
        readln(mahasiswa[i].n_uas);

        mahasiswa[i].n_akhir := (mahasiswa[i].n_kehadiran * 0.10) + (mahasiswa[i].n_tugas * 0.20) + (mahasiswa[i].n_uts * 0.30) + (mahasiswa[i].n_uas * 0.40);

        writeln;

        writeln('NIM Mahasiswa  : ', mahasiswa[i].nim);
        writeln('Nama Mahasiswa : ', mahasiswa[i].nama);
        writeln('Umur Mahasiswa : ', mahasiswa[i].umur);

        write('Nilai akhir mahasiswa dengan NIM ', mahasiswa[i].nim);
        writeln(' yaitu: ', mahasiswa[i].n_akhir:10:2);

        // case (mahasiswa[i].n_akhir) of
        //     80..100: mahasiswa[i].indeks := 'A';
        //     60..79: mahasiswa[i].indeks := 'B';
        //     50..69: mahasiswa[i].indeks := 'C';
        //     30..49: mahasiswa[i].indeks := 'D';
        // else
        //     mahasiswa[i].indeks := 'E';
        // end;

        if (round(mahasiswa[i].n_akhir) >= 80) then
            mahasiswa[i].indeks := 'A'
        else if (round(mahasiswa[i].n_akhir) >= 60) and (round(mahasiswa[i].n_akhir) < 80) then
            mahasiswa[i].indeks := 'B'
        else if (round(mahasiswa[i].n_akhir) >= 50) and (round(mahasiswa[i].n_akhir) < 60) then
            mahasiswa[i].indeks := 'C'
        else if (round(mahasiswa[i].n_akhir) >= 30) and (round(mahasiswa[i].n_akhir) < 50) then
            mahasiswa[i].indeks := 'D'
        else
            mahasiswa[i].indeks := 'E';

        writeln;

        write('Indeks nilai mahasiswa dengan NIM ', mahasiswa[i].nim);
        writeln(' yaitu: ', mahasiswa[i].indeks);

        writeln;

    end;
end.