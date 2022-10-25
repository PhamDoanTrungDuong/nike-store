<?php
/**
 * Lấy thông tin người dùng theo Email
 */
function userDetail($email){
    $user = db_fetch_row_PDO("SELECT * FROM khachhang WHERE Email = '$email'");
   return $user;
}

/**
 * Kiểm tra login
 */
function isLogin()
{
    if (isset($_SESSION['isLogin'])) {
        return true;
    } else {
        return false;
    }
}
