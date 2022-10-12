<?php

/**
 * Kiểm tra user có tồn tại hay không?
 */
function checkUserExits($Email){
     $user = db_num_rows("SELECT * FROM khachhang WHERE Email = '$Email'");
    return $user;
}