<?php

defined('ABSPATH') || exit;

// Variables & Constants
require_once(dirname(__FILE__) . '/includes/functions/variables.php');

// Setup assets
require_once(dirname(__FILE__) . '/includes/functions/assets.php');

// Base settings
require_once(dirname(__FILE__) . '/includes/functions/base-settings.php');

// Fix SVG
require_once(dirname(__FILE__) . '/includes/functions/fix-svg.php');

// Setup Components
require_once(dirname(__FILE__) . '/includes/functions/components.php');

// String Translations
// require_once(dirname(__FILE__) . '/includes/functions/translations.php');


// Form Handler
require_once(dirname(__FILE__) . '/includes/handlers/form-handler.php');


// Text Translater
require_once(dirname(__FILE__) . '/includes/helpers/text-translater.php');

// Image Attributes
require_once(dirname(__FILE__) . '/includes/helpers/image-attributes.php');

// Images Sizes
// require_once(dirname(__FILE__) . '/includes/helpers/images-sizes.php');
