<?php

function delete_cart($id)
{
    # Xoá sản phẩm có $id trong giỏ hàng
    if (isset($_SESSION['carts'])) {
        if (!empty($id)) {
            unset($_SESSION['carts']['buy'][$id]);
        } else {
            unset($_SESSION['carts']);
        }
    }
    update_info_cart();
}