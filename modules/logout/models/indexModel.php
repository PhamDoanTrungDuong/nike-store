<?php

function logout()
{
    unset($_SESSION['isLogin']);
    unset($_SESSION['userLogin']);
    unset($_SESSION['carts']);
    redirect("?mod=home");
}