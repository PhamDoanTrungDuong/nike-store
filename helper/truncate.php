<?php
/**
 * Rút gọn tên sản phẩm
 */

function truncateTitle($string) {
   if(strlen($string) > 30)
      return substr($string, 0, 25) . "...";
   return $string;
}