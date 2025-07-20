<?php

$ignore = array('.', '..');
$bpath = THEME_PATH . '/components/blocks/';
$blocks = scandir($bpath);

foreach ($blocks as $folder) {
    if (!in_array($folder, $ignore)) {
        if (file_exists($bpath . $folder . '/index.php')) {
            // $this->blocks[$folder] = require_once $bpath.$folder.'/index.php';
            require_once $bpath . $folder . '/index.php';
        }
    }
}
