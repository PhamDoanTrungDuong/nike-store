<?php

function logout()
{
    /**
     * Hủy tất cả các SESSION khi user đăng xuất
     */
    unset($_SESSION['isLogin']);
    unset($_SESSION['userLogin']);
    unset($_SESSION['carts']);
    redirect("?mod=home");
}