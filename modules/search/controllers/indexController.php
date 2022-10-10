<?php

function construct()
{
    load_model('index');
}

function indexAction()
{
    load('helper', 'format');
    load('helper', 'truncate');

    load_view('index');
}

