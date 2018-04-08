<?php
    require_once('../includes/general.php');
    if (isset($_POST['login_hash'])) {
        $login_hash = $_POST['login_hash'];
    } else {
        die();
    }

    $hash_user = get_user_by_loginhash($login_hash);

    $resp = [ 'hash' => null ];

    if ($hash_user) {
        $user_id = $hash_user['id'];

        $hash = md5(time() + rand(rand(0, 1000000)));
        $resp['hash'] = $hash;

        // Insert device
        if (isset($_POST['name'], $_POST['ip'])) {
            $name = $_POST['name'];
            $ip = $_POST['ip'];
            $link->query("INSERT INTO `devices`(`name`, `hash`, `user_id`, `ip`) VALUES ('{$name}', '{$hash}', {$user_id}, '{$ip}')");
        }
    }

    echo json_encode($resp);
?>