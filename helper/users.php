<?php
function userDetail($email){
    $product = db_fetch_row("SELECT * FROM khachhang WHERE Email = '$email'");
   return $product;
}


function isLogin()
{
    if (isset($_SESSION['isLogin'])) {
        return true;
    } else {
        return false;
    }
}
