<?php
defined('APPPATH') OR exit('Không được quyền truy cập phần này');

/**
 *  Lấy từ Query /tạo đường dẫn của Module
 */

function get_module() {
    global $config;
    /**
     * $module = mod ? mod : default(home)
     */
    $module = isset($_GET['mod']) ? $_GET['mod'] : $config['default_module'];
    return $module;
}

/**
 * Lấy từ Query / tạo đường dẫn của Controller
 */

function get_controller() {
    global $config;
    /**
     *  $controller = controller ? controller : default(index)
     */
    $controller = isset($_GET['controller']) ? $_GET['controller'] : $config['default_controller'];
    return $controller;
}


/**
 * Lấy từ Query / tạo đường dẫn của Action
 */


function get_action() {
    global $config;
    /**
     * $action = action ? action : default(index)
     */
    $action = isset($_GET['action']) ? $_GET['action'] : $config['default_action'];
    return $action;
}

/*
 * -------------------------------
 * Load
 * ------------------------------------------------------------------------------------
 * Load các file từ các phân vùng vào hệ thống tham gia xử lý
 * Ví dụ: load('lib','database');
 * ------------------------------------------------------------------------------------
 * GIẢI THÍCH
 * ------------------------------------------------------------------------------------
 * Đầu vào
 * - $type: Loại phân vùng hệ thống: lib, helper...
 * - $name: Tên chức năng được load: database, string...
 * ------------------------------------------------------------------------------------
 */

function load($type, $name) {
    if ($type == 'lib')
    /**
     * libraries/${nameLib}.php
     */
        $path = LIBPATH . DIRECTORY_SEPARATOR . "{$name}.php";
    if ($type == 'helper')
    /**
     * helper/${nameLib}.php
     */
        $path = HELPERPATH . DIRECTORY_SEPARATOR . "{$name}.php";
    if (file_exists($path)) {
        require "$path";
    } else {
        echo "{$type}:{$name} không tồn tại";
    }
}

/*
 * -----------------------------
 * callFunction
 * -----------------------------
 * Gọi đến hàm theo tham số biến
 * base.php gọi hàm call_function để load những thứ cần thiết
 */

function call_function($list_function = array()) {
    if (is_array($list_function)) {
        show_array($list_function);
        foreach ($list_function as $f) {
            if (function_exists($f())) {
                $f();
            }
        }
    }
}

/**
 * load ${name}View.php
 */

function load_view($name, $data_send = array()) {
    global $data;
    $data = $data_send;
    /**
     * modules/ModuleName/views/${name}View.php
     */
    $path = MODULESPATH . DIRECTORY_SEPARATOR . get_module() . DIRECTORY_SEPARATOR . 'views' . DIRECTORY_SEPARATOR . $name . 'View.php';
    if (file_exists($path)) {
        /** Load Biến
        * $data = Array (
        *       [dondathang] => Array (
        *           [0] => Array ()
        *           [1] => Array ()
        *           [2] => Array ()
        *       )
        *       [currentDate] => :date:
        *)
        *   Tạo vòng lặp foreach gán nhãn của $data thành $$data để sử dụng trong View.php mà không cần phải truy xuất thông qua mảng $data[], mà truy xuất thăng vào biến VD: $dondathang, $currentDate thay vì $data['dondathang'], $data['currentDate']
        *
        * foreach ($data as $key_data => $v_data) { // data as $currentDate => $(:data:)
        *         $$key_data = $v_data;             // $($currentDate) => $(:data:)
        * }
        */

        if (is_array($data)) {
            foreach ($data as $key_data => $v_data) {
                $$key_data = $v_data;
            }
        }
        require $path;
    } else {
        echo "Không tìm thấy {$path}";
    }
}

/**
 * load ${name}Model.php
 */

function load_model($name) {
    /**
     * $path = modules/ModuleName/models/${name}Model.php
     */
    $path = MODULESPATH . DIRECTORY_SEPARATOR . get_module() . DIRECTORY_SEPARATOR . 'models' . DIRECTORY_SEPARATOR . $name . 'Model.php';
    if (file_exists($path)) {
        require $path;
    } else {
        echo "Không tìm thấy {$path}";
    }
}

/**
 * Get header() với tham số tùy biến
 */

function get_header($name = '') {
    global $data;
    if (empty($name)) {
        $name = 'header';
    } else {
        $name = "header-{$name}";
    }
    /**
     * layout/${nameHeader}.php
     */
    $path = LAYOUTPATH . DIRECTORY_SEPARATOR . $name . '.php';
    if (file_exists($path)) {
        if (is_array($data)) {
            foreach ($data as $key => $a) {
                $$key = $a;
            }
        }
        require $path;
    } else {
        echo "Không tìm thấy {$path}";
    }
}

/**
 * Get Footer với tham số tùy biến
 */

function get_footer($name = '') {
    global $data;
    if (empty($name)) {
        $name = 'footer';
    } else {
        $name = "footer-{$name}";
    }
    $path = LAYOUTPATH . DIRECTORY_SEPARATOR . $name . '.php';
    /**
     * Load Biến
     */
    if (file_exists($path)) {
        if (is_array($data)) {
            foreach ($data as $key => $a) {
                $$key = $a;
            }
        }
        require $path;
    } else {
        echo "Không tìm thấy {$path}";
    }
}