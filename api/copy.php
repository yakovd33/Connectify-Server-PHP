<?php
    require_once('../includes/general.php');
    if (isset($_POST['login_hash'], $_POST['copy'], $_POST['device_hash'])) {
        $copy = protect($_POST['copy']);
        $login_hash = $_POST['login_hash'];
        $device_hash = $_POST['device_hash'];
        
        $hash_user = get_user_by_loginhash($login_hash)['id'];

        if ($hash_user) {
            insert_copy($hash_user, $copy, $device_hash);
        }
    }
?>