<?php
    require_once('../includes/general.php');
    if (isset($_POST['login_hash'], $_POST['copy_id'], $_POST['action'])) {
        $copy_id = $_POST['copy_id'];
        $login_hash = $_POST['login_hash'];
        $action = $_POST['action'];
    } else {
        die();
    }

    $hash_user = get_user_by_loginhash($login_hash);

    $resp = [ 'success' => null ];

    if ($hash_user) {
        $user_id = $hash_user['id'];

        // Check if user owns this copy
        $user_copy_stmt = $link->query("SELECT * FROM `copies` WHERE `id` = {$copy_id} AND `user_id` = {$user_id}");
        if ($user_copy_stmt->rowCount() > 0) {
            if ($action == 'delete') {
                $link->query("UPDATE `copies` SET `is_deleted` = 1 WHERE `id` = {$copy_id}");
            }
        }
    }

    echo json_encode($resp);
?>