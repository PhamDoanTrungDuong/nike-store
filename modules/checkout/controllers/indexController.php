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
            $SoLuong = $book['SoLuong'];
            $Gia = $book['Gia'];
            $TongTien += $book['SoLuong'] * $book['Gia'];
        }
    }


    if (isset($_POST['btn-order'])) {
        $MSKH = $_POST['MSKH'];
        $DiaChi = $_POST['DiaChi'];
        $result_dondathang = db_insert('dondathang', ['MSKH' => $MSKH, 'DiaChi' => $DiaChi, 'TongTien' => $TongTien]);

        if ($result_dondathang) {
            $SoDonDH = mysqli_ai_id();
            echo $SoDonDH;
            foreach ($_SESSION['carts']['buy'] as $value) {
                db_insert('chitietdathang', ['SoDonDH' => $SoDonDH, 'MSHH' => $value['MSHH'], 'SoLuong' => $value['SoLuong'], 'GiaDatHang' => $value['Gia']]);
            }
            //delete cart after checkout
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
