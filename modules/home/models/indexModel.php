<?php
//===============================INDEX=====================================
function get_list_product_byId($id){
    $list_product = db_fetch_array("SELECT *FROM hanghoa h join loaihanghoa l on h.MaLoaiHang = l.MaLoaiHang WHERE h.MALOAIHANG = '$id'");
    return $list_product;
}

function get_list_product(){
    $list_product_all = db_fetch_array("SELECT *FROM hanghoa");
    return $list_product_all;
}

function get_product_type(){
    $list_product_type = db_fetch_array("SELECT * FROM loaihanghoa");
    return $list_product_type;
}

function getProduct($startProduct, $product)
{
    $sql = "SELECT * FROM hanghoa LIMIT $startProduct,$product";
    $result = db_fetch_array($sql);
    return $result;
}

//vi tri san pham bat dau muon lay
function start_product($page, $products){
    $startProduct =  $page * $products - $products;
    // show san pham
    $data = getProduct($startProduct, $products);

    return $data;
}

function totalPages($products){
    // dem so luong san pham // 40sp
     $rowCount = count(get_list_product());

    // tong so trang
     $totalPages = ceil($rowCount / $products);

     return $totalPages;
}

//===============================DETAIL=====================================

function get_product_byID($id){
    $sql_detail = db_query("SELECT *FROM hanghoa h join loaihanghoa l on h.MaLoaiHang = l.MaLoaiHang WHERE MSHH='$id'");

    return $sql_detail;
}


function GET_id(){
    if (isset($_GET['id'])) {
        $id = (int)$_GET['id'];
    } else {
        $id = "";
    }

    return $id;
}



