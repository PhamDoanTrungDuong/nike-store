<?php


function checkUserExits($Email){
     $product = db_num_rows("SELECT * FROM khachhang WHERE Email = '$Email'");
    return $product;
}