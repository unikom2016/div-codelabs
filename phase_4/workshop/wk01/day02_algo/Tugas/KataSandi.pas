program TestProgram;

uses crt;

const
    sandi = '1234';

var
    kata_sandi: string;

    kesempatan, pilihan: integer;

    jumlah, batas, baris: integer;

    { Procedure }
    procedure MenampilkanMenu(var p: integer);
    begin
        writeln('1. Kasus anak ayam');
        writeln('2. Jumlah bilangan genap');
        writeln('3. Tampilan angka segitiga');
        writeln('4. Keluar');
        write('Masukkan pilihan [1..4] : '); readln(p);
    end;

    procedure KasusAnakAyam(jml: integer);
    var
        i: integer;
    begin
        for i := jml downto 2 do
        begin
            writeln('Anak ayam turun ', i, ', mati satu tinggal ', i-1);
        end;
        writeln('Anak ayam turun ', 1, ', mati satu tinggal induknya');
    end;

    function KasusDeretGenap(n: integer): integer;
    var
        i: integer;
    begin    
        KasusDeretGenap := 0;

        if (n mod 2 = 0) then
        begin
            write('Jumlah bilangan genap   = ');
            
            for i := 1 to n do
            begin
                if (i mod 2 = 0) and (i <= n) then
                begin
                    write(i);
                    KasusDeretGenap := KasusDeretGenap + i;
                    if (i <> n) then
                        write(' + ');
                end;          
            end;

            writeln();
            writeln('                        = ', KasusDeretGenap);
        end
        else
            writeln('Batas harus bilangan genap!');
    end;

    procedure KasusSegitiga(b: integer);
    var
        angka, i, j: integer;
    begin
        angka := 1;

        for i := 1 to b do // i = 6
        begin
            for j := 1 to i do // j = 1, 2,- 6
            begin
                if (angka < 10) then
                    write(' ');
                write(angka, ' ');
                angka := angka + 1;
            end;
            writeln();
        end;

        for i := baris - 1 downto 1 do
        begin
            for j := i downto 1 do
            begin
                write(angka, ' ');
                angka := angka + 1;
            end;
            writeln();
        end;
    end;

begin
    kesempatan := 1;
    repeat
        clrscr;
        write('Masukkan password (kesempatan ke - ', kesempatan, ') : '); readln(kata_sandi);
        
        if (kata_sandi = sandi) then
        begin
            writeln('Password anda benar! Selamat Datang!');
            writeln('Tekan Enter!');
            
            repeat                
                // Menampilkan menu
                clrscr;
                MenampilkanMenu(pilihan);

                if (pilihan = 1) then
                begin
                    // Kasus anak ayam
                    clrscr;
                    write('Masukkan jumlah anak ayam: '); readln(jumlah);
                    KasusAnakAyam(jumlah);
                    write('Press any key to continue...'); readln();
                end;
                
                if (pilihan = 2) then
                begin
                    // jumlah bilangan genap
                    clrscr;
                    write('Masukkan batas bilangan: '); readln(batas);
                    writeln();
                    KasusDeretGenap(batas);
                    write('Press any key to continue...'); readln();
                end;

                if (pilihan = 3) then
                begin
                    // banyak baris
                    clrscr;
                    write('Masukkan banyak baris (baris < 10): '); readln(baris);
                    KasusSegitiga(baris);
                    writeln();
                    write('Press any key to continue...'); readln();
                end;

                if (pilihan = 4) then
                begin
                    // Keluar
                    clrscr;
                    writeln('Terima kasih sudah menggunakan program ini!');

                    write('Press any key to continue...'); readln();
                    break; // exit the menu

                end;

                if (pilihan > 4) then
                begin
                    clrscr;
                    write('Pilihan tidak diketahui!'); readln();
                end;
            
            until (pilihan = 4);
            
            break; // stop the program
        end
        else
        begin
            kesempatan := kesempatan + 1;
            if (kesempatan > 3) then
                writeln('Kamu telah salah 3x!');
        end;
    until (kesempatan > 3);
end.