<?php

add_action('init', 'disable_wp_emojicons');
function disable_wp_emojicons()
{
    remove_action('admin_print_styles', 'print_emoji_styles');
    remove_action('wp_head', 'print_emoji_detection_script', 7);
    remove_action('admin_print_scripts', 'print_emoji_detection_script');
    remove_action('wp_print_styles', 'print_emoji_styles');
    remove_filter('wp_mail', 'wp_staticize_emoji_for_email');
    remove_filter('the_content_feed', 'wp_staticize_emoji');
    remove_filter('comment_text_rss', 'wp_staticize_emoji');

    add_filter('tiny_mce_plugins', function ($plugins) {
        return is_array($plugins) ? array_diff($plugins, ['wpemoji']) : [];
    });
}

add_action('wp_enqueue_scripts', 'theme_setup_assets');
function theme_setup_assets()
{
    // Remove unnecessary styles
    wp_dequeue_style('wp-block-library');
    wp_dequeue_style('classic-theme-styles');
    wp_dequeue_style('wp-emoji-styles');
    wp_dequeue_style('global-styles');

    // Enqueue stylesheets
    wp_enqueue_style('main-style', THEME_URI_PATH . '/assets/css/main.min.css', [], VERSION);

    // Enqueue scripts
    // wp_enqueue_script('main-script', THEME_URI_PATH . '/assets/js/app.js', [], VERSION, true);
}

add_action('wp_footer', 'output_localized_data');
function output_localized_data()
{
    $localized_data = [
        'ajax_url' => admin_url('admin-ajax.php'),
    ];

    echo '<script>';
    echo 'var ajax_params = ' . json_encode($localized_data) . ';';
    echo '</script>';
}
