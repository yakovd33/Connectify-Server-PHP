<?php
    require_once('../includes/general.php');
    if (isset($_POST['login_hash'])) {
        $login_hash = $_POST['login_hash'];
    } else {
        die();
    }

    $hash_user = get_user_by_loginhash($login_hash);

    if ($hash_user) {
        $user_id = $hash_user['id'];
        $copies_stmt = $link->query("SELECT * FROM `copies` WHERE `user_id` = {$user_id} AND NOT `is_deleted` ORDER BY `id` DESC");

        $copies = [ 'copies' => [] ];
        while ($copy = $copies_stmt->fetch()) {
            $copy['text'] = html_entity_decode($copy['text']);
            $copy['device_name'] = get_device_by_hash($copy['device_hash'])['name'];
            array_push($copies['copies'], $copy);
        }

        echo json_encode($copies);
    }
?>