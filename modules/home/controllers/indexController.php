<?php

function construct()
{
    load_model('index');
}

function indexAction()
{
    load('helper', 'format');

    $id = GET_id();

    $page = isset($_GET['pagination']) ? $_GET['pagination'] : 1;
    $products = 8;

    $list_product_type = get_product_type();
    $list_product = get_list_product_byId($id);

    $list_product_byId = get_list_product($id);

    $totalPages = totalPages($products);
    $data_product = start_product($page, $products);

    $data['list_product_type'] = $list_product_type;
    $data['list_product'] = $list_product;

    $data['list_product_byId'] = $list_product_byId;

    $data['products'] = $data_product;
    $data['totalPages'] = $totalPages;
    $data['pages'] = $page;

    load_view('index', $data);
}

function detailAction()
{
    load('helper', 'format');

    $id = GET_id();

    $sql_detail = get_product_byID($id);
    $data['detail'] = $sql_detail;

    load_view('detail', $data);
}

function addAction()
{
    redirect("?mod=cart");
    // session_unset();
    $_SESSION['addCartStatusMessage'] = "Thêm vào giỏ hàng thành công!";
    $_SESSION['addCartStatusCode'] = "success";
    if (isset($_GET['id'])) {
        $id = (int)$_GET['id'];
        $item = get_product_by_id($id); // Lấy ra sản phẩm muốn mua
        // $_SESSION['carts']; // bién lưu sản phẩm khách hàng muốn mua 

        if (!isset($_SESSION['carts'])) {
            $_SESSION['carts']['buy'][$id] = $item;
            $_SESSION['carts']['buy'][$id]['SoLuong'] = 1;
        } else {
            if (array_key_exists($id, $_SESSION['carts']['buy'])) {
                $_SESSION['carts']['buy'][$id]['SoLuong'] += 1;
            } else {
                $_SESSION['carts']['buy'][$id] = $item;
                $_SESSION['carts']['buy'][$id]['SoLuong'] = 1;
            }
        }
        update_info_cart();
    }
}
