<?php
/**
 * Xóa sản phẩm trong giỏ hàng theo tham số Id
 */
function delete_cart($id)
{
    if (isset($_SESSION['carts'])) {
        if (!empty($id)) {
            unset($_SESSION['carts']['buy'][$id]);
        } else {
            unset($_SESSION['carts']);
        }
    }
    update_info_cart();
}