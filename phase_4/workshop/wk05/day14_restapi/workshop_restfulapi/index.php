<?php
    require 'flight/Flight.php';
    require 'config/database.php';
    require 'controllers.php';

    Flight::route('GET /', 'user');

    Flight::route('POST /user', 'editUser');

    Flight::route('DELETE /user', 'deleteUser');

    Flight::route('POST /signup', 'addUser');

    Flight::route('POST /login', 'login');

    Flight::start();
?>
