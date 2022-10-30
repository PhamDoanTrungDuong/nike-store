<?php
/**
 * ------------------------------------
 * Gọi đến file xử lý thông qua request
 * ------------------------------------
 * $request_path = modules/ModuleName/controller/${nameController}Controller.php
 * mặc định sẽ gọi đến: /home/indexController/indexAction
 */

$request_path = MODULESPATH . DIRECTORY_SEPARATOR . get_module() . DIRECTORY_SEPARATOR . 'controllers' . DIRECTORY_SEPARATOR . get_controller().'Controller.php';

if (file_exists($request_path)) {
    require $request_path;
} else {
    echo "Không tìm thấy:$request_path ";
}

/**
 * $action_name = ${nameAction}Action
 * Gọi đến các action mặc định hoặc theo tham số $act
 */
$action_name = get_action().'Action';

/**
 * Gọi đến call_function() trong base.php line: 86
 * Gọi đến các hàm Action trong controller (VD: indexAction, detailAction) để load các dữ liệu   hiển thị lên website
 * array = [
 *      'contruct',
 *      'Action'
 * ]
 */
call_function(array('construct', $action_name));


