<?php

$block_classes = isset($block['classes']) ? $block['classes'] : '';
$block_id = isset($block['name']) ? substr($block['name'], 4) : '';

$title = get_field('about_title');
$text = get_field('about_text');
$holder_image_attrs = get_image_attrs(get_field('about_holder-image'));
$main_image_attrs = get_image_attrs(get_field('about_main-image'));
?>

<section id="<?= $block_id ?>" class="<?= $block_classes ?>">
    <div class="about__wrapper">
        <div class="about__holder">
            <div class="about__content">
                <h2 class="about__title block-title">
                    <?= $title ?>
                </h2>

                <div class="about__text text">
                    <?= $text ?>
                </div>
            </div>

            <div class="about__holder-image image image--with-left-top-triangle">
                <img
                    class="lazyload--js"
                    src="<?= $holder_image_attrs['url']; ?>"
                    srcset="<?= $holder_image_attrs['srcset']; ?>"
                    alt="<?= $holder_image_attrs['alt']; ?>"
                    sizes="<?= $holder_image_attrs['sizes']; ?>">
            </div>
        </div>

        <div class="about__main-image image image--with-left-top-triangle image--with-right-bottom-triangle">
            <img
                class="lazyload--js"
                src="<?= $main_image_attrs['url']; ?>"
                srcset="<?= $main_image_attrs['srcset']; ?>"
                alt="<?= $main_image_attrs['alt']; ?>"
                sizes="<?= $main_image_attrs['sizes']; ?>">
        </div>

        <div class="about__line">
            <?= get_pll_translate_text('О проекте', 'About Us', 'About Us') ?>
        </div>
    </div>
</section>