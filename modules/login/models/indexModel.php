<?php
/**
 * Hàm check login
 */
function checkLogin($email, $password)
{
    $md5Pass = md5($password);
    $checkUser = db_num_rows_PDO("SELECT * FROM khachhang WHERE email = '{$email}' AND password = '{$md5Pass}'");
    if ($checkUser > 0) {
        return true;
    } else {
        return false;
    }
}

