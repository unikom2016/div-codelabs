program HitungHarga;

var
    pesan_kembali: string;

    menu_makanan: integer;
    porsi_makanan: integer;
    banyak_pesanan: integer;
    jenis_pesanan: integer;

    harga_makanan: real;
    total_harga: real;
    diskon: real;
    besar_diskon: real;
    pajak: real;
    besar_pajak: real;
    bayar: real;

begin

    repeat
        writeln('Menu Makanan');
        writeln('------------');
        writeln('1. Cap Cay Goreng');
        writeln('2. Kakap Asam Manis');
        writeln('3. Puyunghai');
        writeln('------------');
        write('Masukkan menu makanan: '); readln(menu_makanan);
        writeln();

        writeln('Porsi Makanan');
        writeln('------------');
        writeln('1. Kecil');
        writeln('2. Sedang');
        writeln('3. Besar');
        writeln('------------');
        writeln('Masukkan porsi makanan: '); readln(porsi_makanan);
        writeln();

        // Cap Cay Goreng
        if (menu_makanan = 1) and (porsi_makanan = 1) then
                harga_makanan := 15000
        else if (menu_makanan = 1) and (porsi_makanan = 2) then
                harga_makanan := 20000
        else if (menu_makanan = 1) and (porsi_makanan = 3) then
            harga_makanan := 25000;

        // Kakap Asam Manis
        // Big(O), recommended - kompleksitas lebih kecil
        if (menu_makanan = 2) then
        begin
            if (porsi_makanan = 1) then
                harga_makanan := 30000
            else if (porsi_makanan = 2) then
                harga_makanan := 40000
            else
                harga_makanan := 50000;
        end;

        // Puyunghai
        if (menu_makanan = 3) and (porsi_makanan = 1) then
                harga_makanan := 10000
        else if (menu_makanan = 3) and (porsi_makanan = 2) then
                harga_makanan := 15000
        else if (menu_makanan = 3) and (porsi_makanan = 3) then
                harga_makanan := 20000;

        writeln('Jenis Pesanan');
        writeln('-------------------');
        write('Berapa banyak pesanan: '); readln(banyak_pesanan);
        writeln();

        // Diskon
        diskon := 0;
        if (menu_makanan = 2) and (porsi_makanan = 3) then
            diskon := 0.05;


        writeln('Jenis Pesanan');
        writeln('-------------------');
        writeln('1. Makan Di tempat');
        writeln('2. Dibungkus');
        writeln('-------------------');
        writeln('Masukkan jenis pesanan: '); readln(jenis_pesanan);

        // Pajak
        pajak := 0;
        if (jenis_pesanan = 1) then
            pajak := 0.1;

        // Total Harga
        total_harga := harga_makanan * banyak_pesanan;
        besar_diskon := diskon * total_harga;
        besar_pajak := pajak * total_harga;

        bayar := total_harga + besar_pajak - besar_diskon;

        writeln('Hasil Perhitungan');
        writeln('---------------------------------');
        writeln('Diskon         : ', besar_diskon);
        writeln('Total Harga    : ', total_harga);
        writeln('Besar Pajak    : ', besar_pajak);
        writeln('Bayar          : ', bayar);
        write('---------------------------------');
        writeln();

        writeln('Ingin memesan kembali? Y / T: '); readln(pesan_kembali)
    
    until (pesan_kembali = 'T');
end.