<?php
    function user() {
        // Koneksi ke databae
        $db = Flight::db();
        $query = $db->prepare("SELECT * FROM user");
        $query->execute();
        return Flight::json([
            "status" => 200,
            "message" => "Berhasil memunculkan",
            "result" => $query->fetchAll()
        ]);
    }

    function editUser() {
        if (!isset($_POST['nama']) || !isset($_POST['email']) 
            || !isset($_POST['password'])) {
            return Flight::json([
                "status" => 400,
                "message" => "Data tidak lengkap"
            ]);
        }

        $id = $_GET['id'];
        $nama = $_POST['nama'];
        $email = $_POST['email'];
        $password = $_POST['password'];

        $db = Flight::db();
        $query = $db->prepare("UPDATE user SET nama=:nama, email=:email, password=:password 
            WHERE id_user=:id");
        $query->bindParam(':nama', $nama);
        $query->bindParam(':email', $email);
        $query->bindParam(':password', $password);
        $query->bindParam(':id', $id);
        $query->execute();

        return Flight::json([
            "status" => 200,
            "message" => "Data berhasil diubah"
        ]);
    }

    function deleteUser() {
        $id = $_GET['id'];

        $db = Flight::db();
        $query = $db->prepare("DELETE FROM user WHERE id_user=:id");
        $query->bindParam(':id', $id);
        $query->execute();

        return Flight::json([
            "status" => 200,
            "message" => "Data berhasil dihapus"
        ]);
    }

    function addUser() {
        $name = $_POST['nama'];
        $email = $_POST['email'];
        $password = $_POST['password'];

        $db = Flight::db();
        $query = $db->prepare("INSERT INTO user (nama, email, password) VALUES (:name, :email, :password)");
        $query->bindParam(':name', $name);
        $query->bindParam(':email', $email);
        $query->bindParam(':password', $password);
        $query->execute();

        return Flight::json([
            "status" => 200,
            "message" => "Data berhasil ditambah"
        ]);
    }

    function login() {
        if (!isset($_POST['email']) || !isset($_POST['password'])) {
            return Flight::json([
                "status" => 400,
                "message" => "Data tidak lengkap"
            ]);
        }

        $email = $_POST['email'];
        $password = $_POST['password'];

        $db = Flight::db();
        $query = $db->prepare("SELECT * FROM user WHERE email=:email AND password=:password");
        $query->bindParam(':email', $email);
        $query->bindParam(':password', $password);
        $query->execute();

        if (count($query->fetchAll()) == 0) {
            return Flight::json([
                "status" => 400,
                "message" => "Email atau Password salah"
            ]);
        }

        $query->execute();
        return Flight::json([
            "status" => 200,
            "message" => "Berhasil masuk",
            "result" => $query->fetchAll()
        ]);
    }
?>
