<?php

/**
 * Cập nhật thông tin vào giỏ hàng
 */

function update_info_cart()
{
    $SoLuongGioHang = 0;
    $TongTien = 0;
    foreach ($_SESSION['carts']['buy'] as $item) {
        $SoLuongGioHang += $item['SoLuong'];
        $TongTien += $item['SoLuong'] * $item['Gia'];
    }
    $_SESSION['carts']['info'] = array(
        'SoLuongGioHang' => $SoLuongGioHang,
        'TongTien' => $TongTien

    );
}

/**
 * Lấy số lượng sản phẩm trong giỏ hàng
 */

function get_num_order_cart()
{
    if (isset($_SESSION['carts'])) {
        return $_SESSION['carts']['info']['SoLuongGioHang'];
    }
    // update_info_cart();
    return false;
}

/**
 * Lấy tổng tiền trong giỏ hàng
 */

function get_total_cart()
{
    if (isset($_SESSION['carts'])) {
        return $_SESSION['carts']['info']['TongTien'];
    }
    return false;
}

/**
 * Lấy sản phẩm theo Id
 */

function get_product_by_id($id){
    $product = db_fetch_row_PDO("SELECT * FROM hanghoa WHERE MSHH = $id");
    return $product;
}
