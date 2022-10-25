<?php

function construct()
{
    load_model('index');
}

function indexAction()
{
    load('helper', 'format');

    $list_product_type = get_product_type_admin();
    $data['list_product_type_admin'] = $list_product_type; // Loại sản phẩm

    load_view('index', $data);
}

function formAction()
{
    if(isset($_GET['id'])) {
        $data['id'] = $_GET['id'];
        $data['danhmuc'] = get_product_type_by_Id_admin($_GET['id']);
    }else{
        $data = NULL;
    };

    load_view('add', $data);
}

function createAction()
{
    if (isset($_POST['btn_add'])) {
        // echo $_POST['btn-login'];
        $error = array();
        if (empty($_POST['tenDanhMuc'])) {
            echo empty($_POST['tenDanhMuc']);
            $error['tenDanhMuc'] = "error";
        } else {
            $tenDanhMuc = $_POST['tenDanhMuc'];
        }

        if (empty($error)) {
            $result = db_insert_PDO('loaihanghoa', ['TenLoaiHang' => $tenDanhMuc]);
            if($result){
                redirect("?mod=admin");
                $_SESSION['updateProfileStatusMessage'] = "Thêm mới danh mục thành công!";
                $_SESSION['updateProfileStatusCode'] = "success";
            }
        }
    }
}

function updateAction()
{
    if (isset($_POST['btn_update'])) {
        update_cate();

        $_SESSION['updateProfileStatusMessage'] = "Cập nhật danh mục thành công!";
        $_SESSION['updateProfileStatusCode'] = "success";

        redirect("?mod=admin");
    }
}

function deleteAction()
{
    if(isset($_GET['id'])) {
        db_delete_PDO('loaihanghoa', $_GET['id']);
    }

    redirect("?mod=admin");
    $_SESSION['updateProfileStatusMessage'] = "Xóa danh mục thành công!";
    $_SESSION['updateProfileStatusCode'] = "success";
}
