<?php

class BlockAbout
{
	public function __construct()
	{
		add_action('acf/init', array($this, '_register'));
		add_action('acf/init', array($this, '_init_fields'));
	}

	public function _register()
	{
		acf_register_block_type(
			array(
				'name' => 'about-block',
				'title' => 'Блок: О проекте',
				'description' => 'Описание',
				'classes' => 'block about',
				// 'post_types' => array(),
				'render_callback' => array($this, '_render'),
				'category' => 'theme-blocks',
				'icon' => 'format-aside',
				'mode' => 'edit',
				'align' => 'wide',
				'supports' => array(
					'align' => array('wide', 'full'),
					'mode'  => true,
				),
				'enqueue_assets' => array($this, '_enqueue_assets'),
			)
		);
	}

	public function _enqueue_assets()
	{
		$block_path = wp_normalize_path(__DIR__);

		wp_enqueue_style('about-block-styles', $block_path . '/assets/style.css', [], VERSION);
		wp_enqueue_script('about-block-scripts', $block_path . '/assets/script.js', [], VERSION);

		return;
	}

	public function _render($block, $content = '', $is_preview = false)
	{
		require_once 'render.php';
	}

	public function _init_fields() {}
}

return new BlockAbout();
