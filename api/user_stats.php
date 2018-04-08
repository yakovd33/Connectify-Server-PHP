<?php
    require_once('../includes/general.php');
    if (isset($_POST['login_hash'], $_POST['stat'])) {
        $stat = $_POST['stat'];
        $login_hash = $_POST['login_hash'];
    } else {
        die();
    }

    $hash_user = get_user_by_loginhash($login_hash);

    $resp = [ 'result' => null ];

    if ($hash_user) {
        $user_id = $hash_user['id'];

        if ($stat == 'num_total_copies') {
            $resp['result'] = $link->query("SELECT * FROM `copies` WHERE `user_id` = {$user_id} AND NOT `is_deleted`")->rowCount();
        }

        if ($stat == 'num_devices') {
            $resp['result'] = $link->query("SELECT * FROM `devices` WHERE `user_id` = {$user_id}")->rowCount();
        }
    }

    echo json_encode($resp);
?>