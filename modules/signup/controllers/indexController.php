<?php

function construct()
{
    load_model('index');
}

function indexAction()
{
    load_view('index');
    /**
     * Kiểm tra singup
     */
    global $error, $HoTenKH, $Email, $password, $confirm_password, $phone, $DiaChi;
    if (isset($_POST['btn-signup'])) {
        $error = array();
        if (empty($_POST['HoTenKH'])) {
            $error['HoTenKH'] = "error";
        } else {
            $HoTenKH = $_POST['HoTenKH'];
        }
        if (empty($_POST['Email'])) {
            $error['Email'] = "error";
        } else {
            $Email = $_POST['Email'];
        }
        if (empty($_POST['password'])) {
            $error['password'] = "error";
        } else {
            $password = $_POST['password'];
        }

        if (empty($_POST['confirm_password'])) {
            $error['confirm_password'] = "error";
        } else {
            $confirm_password = $_POST['confirm_password'];
        }

        if (empty($_POST['phone'])) {
            $error['phone'] = "error";
        } else {
            $phone = $_POST['phone'];
        }
        if (empty($_POST['DiaChi'])) {
            $error['DiaChi'] = "error";
        } else {
            $DiaChi = $_POST['DiaChi'];
        }
        if (empty($error)) {
            if (!checkUserExits($Email)) {
                $result = db_insert('khachhang', array(
                    'HoTenKH' => $HoTenKH,
                    'DiaChi' => $DiaChi,
                    'SoDienThoai' => $phone,
                    'Email' => $Email,
                    'password' => md5($password)
                ));

                if ($result) {
                    $_SESSION['signupStatusMessage'] = "Đăng ký thành công!";
                    $_SESSION['signupStatusCode'] = "success";
                    redirect("?page=login");
                } else {
                    $_SESSION['signupStatusMessage'] = "Đăng ký thất bại!";
                    $_SESSION['signupStatusCode'] = "error";
                }
            } else {
                $_SESSION['signupStatusMessage'] = 'Email đã tồn tại!';
                $_SESSION['signupStatusCode'] = 'error';
            }
        }
    }
}
