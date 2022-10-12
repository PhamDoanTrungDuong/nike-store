<?php

function construct()
{
    load_model('index');
}

function indexAction()
{
    load('helper', 'format');
    load_view('index');
}

function deleteAction()
{
    load('helper', 'format');

    /**
     *  Xoá sản phẩm theo Id
     */
    $id = (int) $_GET['id'];
    $_SESSION['deleteCartStatusMessage'] = "Xoá thành công!";
    $_SESSION['deleteCartStatusCode'] = "success";
    delete_cart($id);

    redirect("?mod=cart");
}

/**
 * Được gọi từ ajax
 */
function updateAction()
{
    load('helper', 'format');

    $SoLuong = $_POST['SoLuong'];
    $id =  $_POST['id'];
    // Lấy thong tin san pham
    $item = get_product_by_id($id);

    if (isset($_SESSION['carts']) && array_key_exists($id, $_SESSION['carts']['buy'])) {
        /**
         * Cập nhật số lượng trong giở hàng
         */
        $_SESSION['carts']['buy'][$id]['SoLuong'] = $SoLuong;

        /**
         * Cập nhật tổng tiền
         */
        $Tong_Tien = $SoLuong * $item['Gia'];
        $_SESSION['carts']['buy'][$id]['TongTien'] = $Tong_Tien;

        /**
         * Cập nhật thông tin giỏ hàng
         */
        update_info_cart();

        /**
         * Lấy tổng tiền trong giỏ hàng
         */
        $Tong = get_total_cart();

        $SoLuongGioHang = get_num_order_cart();

        $data = array(
            'Tong_Tien' => currency_format(($Tong_Tien)),
            'Tong' => currency_format($Tong),
            'SoLuongGH' => $SoLuongGioHang
        );

        echo json_encode($data);
    }
}
