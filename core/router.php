<?php
/**
 * ------------------------------------
 * Gọi đến file xử lý thông qua request
 * ------------------------------------
 * $request_path = modules/ModuleName/controller/${nameController}Controller.php
 */

$request_path = MODULESPATH . DIRECTORY_SEPARATOR . get_module() . DIRECTORY_SEPARATOR . 'controllers' . DIRECTORY_SEPARATOR . get_controller().'Controller.php';

if (file_exists($request_path)) {
    /**
     * require đường dẫn đễ có thể gọi các hàm action
     */
    require $request_path;
} else {
    echo "Không tìm thấy:$request_path ";
}

/**
 * $action_name = ${nameAction}Action
 */
$action_name = get_action().'Action';

/**
 * Gọi đến call_function() trong base.php line: 86
 * Gọi đến hàm action trong controller để load các dữ liệu hiển thị lên website
 */
call_function(array('construct', $action_name));


