<?php

define('VERSION', '1.0');

define('THEME_PATH', wp_normalize_path(get_template_directory()));
define('THEME_URI_PATH', wp_normalize_path(get_template_directory_uri()));

$default_language = 'ru';
if (function_exists('pll_current_language')) {
    $current_language = pll_current_language();
    define('LANG', $current_language);
} else {
    define('LANG', $default_language);
}

define('SIZES', '((min-width: 300px) and (max-width: 769px)) 30vw, 100vw');
