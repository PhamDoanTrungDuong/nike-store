<?php

function construct()
{
    load_model('index');
}

function indexAction()
{
    load('helper', 'format');
    load('helper', 'truncate');

    $id = GET_id();

    $page = isset($_GET['pagination']) ? $_GET['pagination'] : 1;
    $products = 8;
    /**
     * Lấy tên Loại sản phẩm, sản phẩm theo loại
     */
    $list_product_type = get_product_type();
    $list_product = get_list_product_byId($id);

    /**
     * Phân trang
     */
    $totalPages = totalPages($products);
    $data_product = start_product($page, $products);

    $data['list_product_type'] = $list_product_type; // Loại sản phẩm

    $data['list_product_withType'] = $list_product; // Sản phẩm theo Loại
    $data['all_products'] = $data_product; // Tất cả sản phẩm (pagination)

    $data['totalPages'] = $totalPages; // Tổng số trang
    $data['pages'] = $page; // Trang

    load_view('index', $data);
}

function detailAction()
{
    load('helper', 'format');

    $id = GET_id();

    /**
     * Lấy sản phẩm theo Id
     */
    $sql_detail = get_product_byID($id); // Sản phẩm theo Id
    $data['detail'] = $sql_detail;

    load_view('detail', $data);
}

function addAction()
{
    /**
     * Thêm sản phẩm vào giỏ hàng
     */
    redirect("?mod=cart");
    $_SESSION['addCartStatusMessage'] = "Thêm vào giỏ hàng thành công!";
    $_SESSION['addCartStatusCode'] = "success";
    if (isset($_GET['id'])) {
        $id = (int)$_GET['id'];
        $item = get_product_by_id($id);     // đưa sản phẩm giỏ hàng theo Id sản phẩm
        if (!isset($_SESSION['carts'])) {   // if chưa có giỏ hàng thì tạo mới
            $_SESSION['carts']['buy'][$id] = $item;
            $_SESSION['carts']['buy'][$id]['SoLuong'] = 1;
        } else {    // else giỏ hảng đã tồn tại thì thêm số lượng
            if (array_key_exists($id, $_SESSION['carts']['buy'])) { //if đã tồn tại sản phẩm trong
                $_SESSION['carts']['buy'][$id]['SoLuong'] += 1;
            } else {    // else chưa tồn tại sản phẩm trong giỏ hàng
                $_SESSION['carts']['buy'][$id] = $item;
                $_SESSION['carts']['buy'][$id]['SoLuong'] = 1;
            }
        }
        /**
         * Gọi hàm cập nhật giỏ hàng
         */
        update_info_cart();
    }
}
