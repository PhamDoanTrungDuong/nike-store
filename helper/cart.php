<?php

# Thêm thông tin vào giỏ hàng
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

// function update_cart($soluong)
// {
//     foreach ($soluong as $id => $new_soluong) {
//         $_SESSION['carts']['buy'][$id]['SoLuong'] = $new_soluong;
//         $_SESSION['carts']['buy'][$id]['TongTien'] = $new_soluong *  $_SESSION['carts']['buy'][$id]['Gia'];
//     }
//     update_info_cart();
// }


function get_num_order_cart()
{
    if (isset($_SESSION['carts'])) {
        return $_SESSION['carts']['info']['SoLuongGioHang'];
    }
    // update_info_cart();
    return false;
}

function get_total_cart()
{
    if (isset($_SESSION['carts'])) {
        return $_SESSION['carts']['info']['TongTien'];
    }
    return false;
}

function get_product_by_id($id){
    $product = db_fetch_row("SELECT *FROM hanghoa WHERE MSHH = $id");
    return $product;
}
