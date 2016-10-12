program TestProgram;

uses crt;

const
    sandi = '1234';

var
    kata_sandi: string;

    kesempatan, pilihan, jumlah, i, sisa: integer;

    batas, nilai_genap: integer;

    angka, baris, n: integer;

begin
    kesempatan := 1;
    repeat
        write('Masukkan password (kesempatan ke - ', kesempatan, ') : '); readln(kata_sandi);
        
        if (kata_sandi = sandi) then
        begin
            writeln('Password anda benar! Selamat Datang!');
            writeln('Tekan Enter!');
        
            writeln('1. Kasus anak ayam');
            writeln('2. Jumlah bilangan genap');
            writeln('3. Tampilan angka segitiga');
            writeln('4. Keluar');
            write('Masukkan pilihan [1..4] : '); readln(pilihan);

            if (pilihan = 1) then
            begin
                // Kasus anak ayam
                // jumlah := 0;
                write('Masukkan jumlah anak ayam: '); readln(jumlah);

                sisa := jumlah;
                for i := jumlah downto 1 do
                begin
                    write('Anak ayam turun ', sisa);

                    sisa := sisa - 1;

                    if (sisa = 0) then
                        writeln(', mati satu tinggal induknya')
                    else
                        writeln(', mati satu tinggal ', sisa);
                end;                
                
                write('Press any key to continue...'); readln();
            end;
            
            if (pilihan = 2) then
            begin
                // jumlah bilangan genap
                nilai_genap := 2;
                write('Masukkan batas bilangan: '); readln(batas);
                writeln();

                write('Jumlah bilangan genap   = ');
                repeat
                begin
                    write(nilai_genap);
                    if (nilai_genap < batas) then
                        write(' + ');
                    nilai_genap := nilai_genap + 2;
                end;
                until (nilai_genap > batas);
                writeln();
                writeln('                        = ', nilai_genap);
                
                write('Press any key to continue...'); readln();
            end;

            if (pilihan = 3) then
            begin
                // banyak baris
                angka := 1;
                write('Masukkan banyak baris: '); readln(baris);
                for i := 1 to baris do
                begin
                    // for i := 1 to baris d
                    write(angka);
                    angka := angka + 1;
                    writeln();
                end;
                write('Press any key to continue...'); readln();
            end;

            if (pilihan = 4) then
                // Keluar
                writeln('Terima kasih sudah menggunakan program ini!');

                write('Press any key to continue...'); readln();
                break;
        end;

    kesempatan := kesempatan + 1;
        if (kesempatan > 3) then
            writeln('Kamu telah salah 3x!');
    until (kesempatan > 3);
end.