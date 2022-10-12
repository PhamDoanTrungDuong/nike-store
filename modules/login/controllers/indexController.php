<?php

function construct()
{
    load_model('index');
}

function indexAction()
{
    load_view('index');

    /**
     * Kiểm tra đã login
     */
    if (isset($_POST['btn-login'])) {
        echo $_POST['btn-login'];
        $error = array();
        if (empty($_POST['password'])) {
            echo empty($_POST['password']);
            $error['password'] = "error";
        } else {
            $password = $_POST['password'];
        }
        if (empty($_POST['email'])) {
            $error['email'] = "error";
        } else {
            $email = $_POST['email'];
        }

        if (empty($error)) {
            if (checkLogin($email, $password)) {
                $_SESSION['isLogin'] = true;
                $item = userDetail($email);
                show_array($item);
                $_SESSION['userLogin'] = $item;
                $_SESSION['loginStatusMessage'] = "Đăng nhập thành công!";
                $_SESSION['loginStatusCode'] = "success";
                redirect();
            } else {
                $_SESSION['loginStatusMessage'] = 'Tên đăng nhập hoặc mật khẩu không đúng!';
                $_SESSION['loginStatusCode'] = 'error';
            }
        }
    }
}
