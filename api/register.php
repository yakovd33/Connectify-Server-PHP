<?php
    require_once('../includes/general.php');

    $resp_arr = [
        'success' => true,
        'email_exists' => false,
        'empty_fields' => false,
        'fields_that_are_empty' => [

        ],
        'new_user_id' => null
    ];

    $_POST['email'] = 'abcd@gmail.com';
    $_POST['password'] = '12345678';
    $_POST['fullname'] = 'Yakov Shitrit';

    if (isset_arr_post(['email', 'password', 'fullname'])) {
        $email = $_POST['email'];
        $password = $_POST['password'];
        $fullname = $_POST['fullname'];

        if (!is_empty_arr_post(['email', 'password', 'fullname'])) {
            if (!emailExists($email)) {
                $resp_arr['new_user_id'] = create_user($email, $password, $fullname);
            } else {
                $resp_arr['email_exists'] = true;
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