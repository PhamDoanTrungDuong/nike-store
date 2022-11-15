<?php
//===============================INDEX=====================================
/**
 * Lấy Loại sản phẩm (tên)
 */
function get_product_type(){
    $list_product_type = db_fetch_array_PDO("SELECT * FROM loaihanghoa");
    return $list_product_type;
}

/**
 * Lấy danh sách sản phẩm theo Loại
 */
function get_list_product_byId($id){
    $list_product = db_fetch_array_PDO("SELECT * FROM hanghoa h join loaihanghoa l on h.MaLoaiHang = l.MaLoaiHang WHERE h.MALOAIHANG = '$id'");
    return $list_product;
}

/**
 * Lấy danh sach sản phẩm
 */
function get_list_product(){
    $list_product_all = db_fetch_array_PDO("SELECT * FROM hanghoa");
    return $list_product_all;
}


function getProduct($startProduct, $product)
{
    $sql = "SELECT * FROM hanghoa LIMIT $startProduct,$product";
    $result = db_fetch_array_PDO($sql);
    return $result;
}

/**
 * Vị trí sản phẩm băt đầu (pagination)
 */
function start_product($page, $products){
    $startProduct =  $page * $products - $products;
    // show san pham
    $data = getProduct($startProduct, $products);

    return $data;
}

/**
 * Tổng số trang
 */
function totalPages($products){
    // dem so luong san pham // 40sp
     $rowCount = count(get_list_product());

    // tong so trang
     $totalPages = ceil($rowCount / $products);

     return $totalPages;
}

//===============================DETAIL=====================================
/**
 * Lấy sản phẩm theo Id
 */
function get_product_byID($id){
    $sql_detail = db_query_PDO("SELECT * FROM hanghoa h join loaihanghoa l on h.MaLoaiHang = l.MaLoaiHang WHERE MSHH='$id'");
    return $sql_detail;
}

/**
 * Lấy Id từ URL
 */
function GET_id(){
    if (isset($_GET['id'])) {
        $id = (int)$_GET['id'];
    } else {
        $id = "";
    }

    return $id;
}



