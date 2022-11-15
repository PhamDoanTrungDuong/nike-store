<?php

function construct()
{
    load_model('index');
}

function indexAction()
{
    load('helper', 'format');

    global $MSKH, $DiaChi, $TongTien;
    if (!empty(($_SESSION['carts']['buy']))) {
        foreach ($_SESSION['carts']['buy'] as $key => $book) {
            $TongTien += $book['SoLuong'] * $book['Gia'];
        }
    }

    if (isset($_POST['btn-order'])) {
        $MSKH = $_POST['MSKH'];
        $DiaChi = $_POST['DiaChi'];
        /**
         * Thực hiện thêm đơn hàng vào database
         */
        // $result_dondathang = db_insert_PDO('dondathang', ['MSKH' => $MSKH, 'DiaChi' => $DiaChi, 'TongTien' => $TongTien]);
        $result_dondathang = create_order($MSKH, $DiaChi, $TongTien);

        if ($result_dondathang) {
            /**
             * Lấy Id của hàng thuộc 1 bảng vừa mới được thêm vào DB
             */
            $SoDonDH = mysqli_last_id_PDO();

            /**
             * Thêm chi tiết đơn hàng
             */
            foreach ($_SESSION['carts']['buy'] as $value) {
                // db_insert_PDO('chitietdathang', ['SoDonDH' => $SoDonDH, 'MSHH' => $value['MSHH'], 'SoLuong' => $value['SoLuong'], 'GiaDatHang' => $value['Gia']]);
                create_order_detail($SoDonDH, $value['MSHH'], $value['SoLuong'], $value['Gia']);
            }
            /**
             * Xóa giỏ hàng sau khi thanh toán
             */
            unset($_SESSION['carts']);

            redirect("?mod=checkout&action=success");
        } else {
            echo "Đặt hàng thất bại!";
        }
    }

    load_view('index');
}

function successAction()
{
    load_view('success');
}
