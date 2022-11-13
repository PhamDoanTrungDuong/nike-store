<?php
defined('APPPATH') OR exit('Không được quyền truy cập phần này');

/**
 * require config/database.php
 */
require CONFIGPATH . DIRECTORY_SEPARATOR . 'database.php';

/**
 * require config/config/php
 */
require CONFIGPATH . DIRECTORY_SEPARATOR . 'config.php';

/**
 * require config/email.php
 */
require CONFIGPATH . DIRECTORY_SEPARATOR . 'email.php';

/**
 * require config/autoload.php
 */
require CONFIGPATH . DIRECTORY_SEPARATOR . 'autoload.php';

/**
 * require libraries/database.php
 */
require LIBPATH . DIRECTORY_SEPARATOR . 'database.php';

/**
 * require core/base.php
 */
require COREPATH . DIRECTORY_SEPARATOR . 'base.php';


/**
 * autoload.php định nghĩa $autoload | base.php gọi load() line: 60
 * require lib, help, data,...
 */
if (is_array($autoload)) {
    foreach ($autoload as $type => $list_auto) {
        if (!empty($list_auto)) {
            foreach ($list_auto as $name) {
                load($type, $name);
            }
        }
    }
}



/**
 * kết nối database
 */

db_connect_PDO();

/**
 * bật session
 */
ob_start();
session_start();

/**
 * require core/router.php
 */
require COREPATH . DIRECTORY_SEPARATOR . 'router.php';
















