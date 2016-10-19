program RecordTest;

type
    mahasiswa = record
        nim: string;
        nama: string;
        umur: integer;
    end;

var
    mhs: mahasiswa;

begin
    write('Masukkan NIM Mahasiswa   : '); readln(mhs.nim);
    write('Masukkan Nama Mahasiswa  : '); readln(mhs.nama);
    write('Masukkan Umur Mahasiswa  : '); readln(mhs.umur);

    writeln;

    writeln('NIM Mahasiswa  : ', mhs.nim);
    writeln('Nama Mahasiswa : ', mhs.nama);
    writeln('Umur Mahasiswa : ', mhs.umur);
end.