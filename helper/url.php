<?php
/**
 *  chuyển hướng
 */
function redirect($url = '?page=home')
{
    if (!empty($url)) {
        header("Location:  {$url}");
    };
}

