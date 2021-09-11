<?php
    $DB_NAME = 'connectify';
    $DB_USER = 'root';
    $DB_PASS = '';
    $DB_HOST = 'localhost';
    $DB_PREFIX = '';

    $link = new PDO("mysql:host=$DB_HOST;dbname=$DB_PREFIX" . $DB_NAME, $DB_USER, $DB_PASS);
?>