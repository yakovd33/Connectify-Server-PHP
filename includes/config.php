<?php
    $DB_NAME = 'connectify';
    $DB_USER = 'epiz_21795695';
    $DB_PASS = 'n7tfBsceC35x';
    $DB_HOST = 'sql201.epizy.com';
    $DB_PREFIX = 'epiz_21795695_';

    $link = new PDO("mysql:host=$DB_HOST;dbname=$DB_PREFIX" . $DB_NAME, $DB_USER, $DB_PASS);
?>