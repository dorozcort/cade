<?php

/**
 * Understrap functions and definitions
 *
 * @package understrap
 */

// Exit if accessed directly.
defined('ABSPATH') || exit;

$understrap_includes = array(
	'/theme-settings.php',                  // Initialize theme default settings.
	'/setup.php',                           // Theme setup and custom theme supports.
	'/widgets.php',                         // Register widget area.
	'/enqueue.php',                         // Enqueue scripts and styles.
	'/template-tags.php',                   // Custom template tags for this theme.
	'/pagination.php',                      // Custom pagination for this theme.
	'/hooks.php',                           // Custom hooks.
	'/extras.php',                          // Custom functions that act independently of the theme templates.
	'/customizer.php',                      // Customizer additions.
	'/custom-comments.php',                 // Custom Comments file.
	'/jetpack.php',                         // Load Jetpack compatibility file.
	'/class-wp-bootstrap-navwalker.php',    // Load custom WordPress nav walker.
	'/woocommerce.php',                     // Load WooCommerce functions.
	'/editor.php',                          // Load Editor functions.
	'/deprecated.php',                      // Load deprecated functions.
);

foreach ($understrap_includes as $file) {
	$filepath = locate_template('inc' . $file);
	if (!$filepath) {
		trigger_error(sprintf('Error locating /inc%s for inclusion', $file), E_USER_ERROR);
	}
	require_once $filepath;
}


// Custom Posts for CADE

add_action('init', 'bf_register_custom_post_type');
/**
 * Registro un custom post type 'noticia'.
 *
 * @link http://codex.wordpress.org/Function_Reference/register_post_type
 */
function bf_register_custom_post_type()
{
	/* Añado las etiquetas que aparecerán en el escritorio de WordPress */
	$labels = array(
		'name'               => _x('Noticias', 'post type general name', 'text-domain'),
		'singular_name'      => _x('Noticia', 'post type singular name', 'text-domain'),
		'menu_name'          => _x('Noticias', 'admin menu', 'text-domain'),
		'add_new'            => _x('Añadir nueva', 'noticia', 'text-domain'),
		'add_new_item'       => __('Añadir nueva noticia', 'text-domain'),
		'new_item'           => __('Nueva noticia', 'text-domain'),
		'edit_item'          => __('Editar noticia', 'text-domain'),
		'view_item'          => __('Ver noticia', 'text-domain'),
		'all_items'          => __('Todas las noticias', 'text-domain'),
		'search_items'       => __('Buscar noticias', 'text-domain'),
		'not_found'          => __('No hay noticias.', 'text-domain'),
		'not_found_in_trash' => __('No hay noticias en la papelera.', 'text-domain')
	);

	/* Configuro el comportamiento y funcionalidades del nuevo custom post type */
	$args = array(
		'labels'             => $labels,
		'description'        => __('Descripción.', 'text-domain'),
		'public'             => true,
		'publicly_queryable' => true,
		'show_ui'            => true,
		'show_in_menu'       => true,
		'query_var'          => true,
		'rewrite'            => array('slug' => 'noticia'),
		'capability_type'    => 'post',
		'has_archive'        => true,
		'hierarchical'       => false,
		'menu_position'      => null,
		'supports'           => array('title', 'editor', 'author', 'thumbnail', 'excerpt', 'comments')
	);

	register_post_type('noticia', $args);
}

// Proyectos

add_action('init', 'bf_register_custom_post_type_1');
/**
 * Registro un custom post type 'proyecto'.
 *
 * @link http://codex.wordpress.org/Function_Reference/register_post_type
 */
function bf_register_custom_post_type_1()
{
	/* Añado las etiquetas que aparecerán en el escritorio de WordPress */
	$labels = array(
		'name'               => _x('Proyectos', 'post type general name', 'text-domain'),
		'singular_name'      => _x('Proyecto', 'post type singular name', 'text-domain'),
		'menu_name'          => _x('Proyectos', 'admin menu', 'text-domain'),
		'add_new'            => _x('Añadir nuevo', 'proyecto', 'text-domain'),
		'add_new_item'       => __('Añadir nuevo proyecto', 'text-domain'),
		'new_item'           => __('Nuevo proyecto', 'text-domain'),
		'edit_item'          => __('Editar proyecto', 'text-domain'),
		'view_item'          => __('Ver proyecto', 'text-domain'),
		'all_items'          => __('Todos los proyectos', 'text-domain'),
		'search_items'       => __('Buscar proyectos', 'text-domain'),
		'not_found'          => __('No hay proyectos.', 'text-domain'),
		'not_found_in_trash' => __('No hay proyectos en la papelera.', 'text-domain')
	);

	/* Configuro el comportamiento y funcionalidades del nuevo custom post type */
	$args = array(
		'labels'             => $labels,
		'description'        => __('Descripción.', 'text-domain'),
		'public'             => true,
		'publicly_queryable' => true,
		'show_ui'            => true,
		'show_in_menu'       => true,
		'query_var'          => true,
		'rewrite'            => array('slug' => 'proyecto'),
		'capability_type'    => 'post',
		'has_archive'        => true,
		'hierarchical'       => false,
		'menu_position'      => null,
		'supports'           => array('title', 'editor', 'author', 'thumbnail', 'excerpt', 'comments')
	);

	register_post_type('proyecto', $args);
}
