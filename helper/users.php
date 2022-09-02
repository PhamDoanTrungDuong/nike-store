<?php
function userDetail($email){
    $user = db_fetch_row("SELECT * FROM khachhang WHERE Email = '$email'");
   return $user;
}


function isLogin()
{
    if (isset($_SESSION['isLogin'])) {
        return true;
    } else {
        return false;
    }
}
