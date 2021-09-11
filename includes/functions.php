<?php
	function get_user_by_loginhash ($hash) {
		global $link;
		$hash_stmt = $link->query("SELECT * FROM `login_hashes` WHERE `hash` = '{$hash}'");

		if ($hash_stmt->rowCount() > 0) {
			// TODO: Check if hash has expired
			return get_user_row_by_id($hash_stmt->fetch()['user_id']);
		} else {
			return false;
		}
		return false;
	}

	function create_login_hash ($user_id) {
		global $link;

		$hash = md5(md5(time() + rand(0, 1000000)));
		$link->query("INSERT INTO `login_hashes`(`hash`, `user_id`) VALUES ('{$hash}', {$user_id})");

		return $hash;
	}

    function is_logged () {
        return (isset($_SESSION['user_id']));
    }

    function get_user_row_by_id ($id) {
        global $link;
        return $link->query("SELECT * FROM `users` WHERE `id` = {$id}")->fetch();
    }

    function get_user_row_by_email ($email) {
        global $link;
        return $link->query("SELECT * FROM `users` WHERE `email` = {$email}")->fetch();
    }

    function is_admin ($id) {
        return get_user_row_by_id($id)['admin'] == 1;
    }

    function isset_arr_post ($arr) {
		$ans = true;

		for ($i = 0; $i < count($arr) && $ans; $i++) {
			if (!isset($_POST[$arr[$i]])) {
				$ans = false;
			}
		}

		return $ans;
	}

	function isset_arr_get ($arr) {
		$ans = true;

		for ($i = 0; $i < count($arr) && $ans; $i++) {
			if (!isset($_GET[$arr[$i]])) {
				$ans = false;
			}
		}

		return $ans;
	}

	function is_empty_arr_post ($arr) {
		$ans = false;

		for ($i = 0; $i < count($arr) && !$ans; $i++) {
			if (empty($_POST[$arr[$i]])) {
				$ans = true;
			}
		}

		return $ans;
	}

	function is_empty_arr_get ($arr) {
		$ans = false;

		for ($i = 0; $i < count($arr) && !$ans; $i++) {
			if (empty($_GET[$arr[$i]])) {
				$ans = true;
			}
		}

		return $ans;
    }
	
	function enc($string,$key=5){
		$string = md5($string);
		$string = hash('ripemd160',$string);
		$string = hash('sha256', $string);
		$string = $string. '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
		$string = md5($string);
		$result = '';
		for($i=0, $k= strlen($string); $i<$k; $i++) {
			$char = substr($string, $i, 1);
			$keychar = substr($key, ($i % strlen($key))-1, 1);
			$char = chr(ord($char)+ord($keychar));
			$result .= $char;
		}
		$result = base64_encode($result);
		return md5($result);
	}
	
    function check_credentials($email, $password){
		global $link;
		$query = $link->prepare("SELECT * FROM `users` WHERE `email` = ? AND `password_hashed` = ?");
        $result = $query->execute([$email, enc($password)]);
        
        return $query->rowCount() ? $query->fetch()['id'] : false;
	}
    
	function emailExists ($email) {
		global $link;
		return ($link->query("SELECT * FROM `users` WHERE `email` = '{$email}'")->rowCount() > 0);
    }

    function create_user ($email, $password, $fullname) {
        global $link;
        $password = enc($password);
        $link->query("INSERT INTO `users`(`fullname`, `email`, `password_hashed`) VALUES ('{$fullname}', '{$email}', '{$password}')");
        return $link->lastInsertId();
	}
	
	function protect ($string) {
		$protection = htmlspecialchars(trim($string), ENT_QUOTES);
		return $protection;
	}

	function get_device_by_hash ($hash) {
		global $link;
		return $link->query("SELECT * FROM `devices` WHERE `hash` = '{$hash}'")->fetch();
	}

	function insert_copy ($user_id, $copy, $device_hash) {
		global $link;
		$link->query("INSERT INTO `copies`(`user_id`, `text`, `device_hash`) VALUES ({$user_id}, '{$copy}', '{$device_hash}')");
	}

	function d_log ($message) {
		global $link;
		$link->query("INSERT INTO `log` (`message`) VALUES('{$message}')");
	}
?>