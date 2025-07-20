<?php

/**
 * Регистрация кастомных размеров изображений.
 */
add_action('after_setup_theme', 'custom_image_sizes');
function custom_image_sizes()
{
    $sizes = [
        'custom-thumbnail' => [614, 614, true],
        'custom-medium'    => [768, 768, true],
        'custom-large'     => [1024, 1024, true],
        'custom-1920'      => [1920, 1920, true],
    ];

    foreach ($sizes as $name => $args) {
        add_image_size($name, ...$args);
    }
}

/**
 * Отключение стандартных размеров изображений.
 */
add_filter('intermediate_image_sizes_advanced', 'disable_medium_large_size');
function disable_medium_large_size($sizes)
{
    $disabled_sizes = ['thumbnail', 'medium', 'large', 'medium_large'];
    foreach ($disabled_sizes as $size) {
        unset($sizes[$size]);
    }
    return $sizes;
}

/**
 * Добавление кастомных размеров в srcset.
 */
add_filter('wp_calculate_image_srcset', 'add_custom_sizes_to_srcset', 10, 5);
function add_custom_sizes_to_srcset($sources, $size_array, $image_src, $image_meta, $attachment_id)
{
    if (!is_array($sources)) {
        return $sources;
    }

    $custom_sizes = ['custom-thumbnail', 'custom-medium', 'custom-large', 'custom-1920'];

    foreach ($custom_sizes as $size) {
        $custom_image = wp_get_attachment_image_src($attachment_id, $size);
        if ($custom_image) {
            $sources[$custom_image[1]] = [
                'url'        => $custom_image[0],
                'descriptor' => 'w',
                'value'      => $custom_image[1],
            ];
        }
    }

    return $sources;
}
