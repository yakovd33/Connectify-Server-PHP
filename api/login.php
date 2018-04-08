<?php
    require_once('../includes/general.php');

    $resp_arr = [
        'success' => true,
        'email_exists' => true,
        'empty_fields' => false,
        'fields_that_are_empty' => [

        ],
        'user_id' => null,
        'login_hash' => null
    ];

    if (isset_arr_post(['email', 'password'])) {
        $email = $_POST['email'];
        $password = $_POST['password'];

        if (!is_empty_arr_post(['email', 'password'])) {
            if (emailExists($email)) {
                $user_id = check_credentials($email, $password);
                $resp_arr['user_id'] = $user_id;

                if ($user_id) {
                    $resp_arr['login_hash'] = create_login_hash($user_id);
                } else {
                    $resp_arr['success'] = false;
                }
            } else {
                $resp_arr['success'] = false;
                $resp_arr['email_exists'] = false;
            }
        } else {
            $resp_arr['success'] = false;
            $resp_arr['empty_fields'] = true;

            if (empty($_POST['email'])) { 
                array_push($resp_arr['fields_that_are_empty'], 'email');
            }

            if (empty($_POST['password'])) { 
                array_push($resp_arr['fields_that_are_empty'], 'password');
            }
        }
    }

    echo json_encode($resp_arr);
?>