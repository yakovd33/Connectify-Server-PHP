<?php
    require_once('../includes/general.php');
    if (isset($_POST['login_hash'], $_POST['info'], $_POST['req_user_id'])) {
        $login_hash = $_POST['login_hash'];
        $info = $_POST['info'];
        $req_user_id = $_POST['req_user_id'];
    } else {
        die();
    }

    $hash_user = get_user_by_loginhash($login_hash);

    if ($hash_user) {
        $resp = [ 'details' => null ];
        $user_id = $hash_user['id'];

        if ($user_id == $req_user_id) {
            if ($info == 'all') {
                $resp['details'] = $link->query("SELECT * FROM `users` WHERE `id` = {$req_user_id}")->fetch();
            }
        }

        echo json_encode($resp);
    }
?>