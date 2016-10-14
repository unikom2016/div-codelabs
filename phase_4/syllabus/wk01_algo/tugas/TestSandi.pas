program TestProgram;

uses crt;

const
    sandi = '1234';

var
    kata_sandi: string;

    kesempatan, pilihan, jumlah, i, j, sisa: integer;

    batas, total: integer;

    angka, baris: integer;

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
                clrscr;
            
                writeln('1. Kasus anak ayam');
                writeln('2. Jumlah bilangan genap');
                writeln('3. Tampilan angka segitiga');
                writeln('4. Keluar');
                write('Masukkan pilihan [1..4] : '); readln(pilihan);

                if (pilihan = 1) then
                begin
                    // Kasus anak ayam
                    clrscr;
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
                    total := 0;
                    write('Masukkan batas bilangan: '); readln(batas);
                    writeln();
                
                    if (batas mod 2 = 0) then
                    begin
                        write('Jumlah bilangan genap   = ');
                        
                        for i := 1 to batas do
                        begin
                            
                            if (i mod 2 = 0) and (i <= batas) then
                            begin
                                write(i);
                                total := total + i;
                                if (i <> batas) then
                                    write(' + ');
                            end;          
                        end;

                        writeln();
                        writeln('                        = ', total);
                    end
                    else
                        writeln('Batas harus bilangan genap!');
                    
                    write('Press any key to continue...'); readln();
                end;

                if (pilihan = 3) then
                begin
                    // banyak baris
                    angka := 1;

                    clrscr;
                    write('Masukkan banyak baris: '); readln(baris);
                    for i := 1 to baris do
                    begin
                        for j := 1 to i do
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