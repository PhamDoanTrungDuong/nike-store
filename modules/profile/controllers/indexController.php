<?php

function construct()
{
    load_model('index');
}

function indexAction()
{
    load('helper', 'format');
    if (isset($_SESSION['userLogin'])) {
        $email = $_SESSION['userLogin']['Email'];

        $data['chitietdathang'] = product_detail($email);
        $data['dondathang'] = order($email);

        $_SESSION['userLogin'] = userDetail($email);
    }

    load_view('index', $data);
}

function updateAction()
{
    if (isset($_POST['btn_update'])) {
        update_profile();

        $_SESSION['updateProfileStatusMessage'] = "Cập nhật thông tin thành công!";
        $_SESSION['updateProfileStatusCode'] = "success";

        redirect("?mod=profile");
    };
}

function detailOrderAction()
{
    load('helper', 'format');

    if (isset($_GET['id'])) {
        $id = $_GET['id'];
    } else {
        $id = "";
    }

    $dondathang = order_detail($id);

    /**
     * format ngày
     */
    $originalDate = $dondathang[0]['NgayDH'];
    $currentDate = date("H:i d-m-Y", strtotime($originalDate));

    $data['dondathang'] = $dondathang;
    $data['currentDate'] = $currentDate;

    load_view('detailOrder', $data);
}
