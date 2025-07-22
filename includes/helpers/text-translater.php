<?php

function get_pll_translate_text($ru, $en, $ka)
{
    $alert_text = 'Не удалось выполнить перевод';

    if (defined('LANG')) {
        switch (LANG) {
            case 'ru':
                return $ru;
            case 'en':
                return $en;
            case 'ka':
                return $ka;
            default:
                return $alert_text;
        }
    }

    return $alert_text;
}

function get_pll_lang_id($default_id = 26)
{
    if (defined('LANG')) {
        switch (LANG) {
            case 'en':
                return 33;
            case 'ru':
                return 26;
            default:
                return $default_id;
        }
    }
    return null;
}

function get_pll_data_from_array($data, $default = null)
{
    if (defined('LANG') && array_key_exists(LANG, $data)) {
        return $data[LANG];
    }

    return $default;
}
