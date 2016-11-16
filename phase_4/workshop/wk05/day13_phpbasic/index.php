<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>PHP Basic</title>
</head>
<body>
    <?php
        // String
        $a = "Selamat Datang!";
        $nama = "Mochamad Iqbal Dwi Cahyo";

        // Integer
        $angka = "s1000";
        $angka2 = 1000;

        // Float
        $angka_pecahan = 50.0;

        // Operator atau Ekspresi
        /*
            +, -, /, *
        */
        $penjumlahan = $angka + $angka2;
        // echo $penjumlahan;


        // Perulangan

        $welcome = "Selamat Datang";
        
        // for
        // for ($i = 0; $i < 5; $i++) {
        //     echo $welcome . "<br>";
        // }

        // while
        $i = 0;
        while ($i < 5) {
            echo $welcome . "<br>";
            $i++;
        }

        // Percabangan
        $b = 5;
        $c = 10;
        $d = 20;
        $e = 30;

        if (!$b < $c) {
            echo "Benar";
        } else {
            echo "Tidak Benar";
        }

        // if (($b < $c) && ($d < $c)) {
            
        // }
    ?>
</body>
</html>