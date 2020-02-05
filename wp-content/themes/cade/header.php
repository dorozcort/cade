<?php

/**
 * The header for our theme.
 *
 * Displays all of the <head> section and everything up till <div id="content">
 *
 * @package understrap
 */

// Exit if accessed directly.
defined('ABSPATH') || exit;

$container = get_theme_mod('understrap_container_type');
?>
<!DOCTYPE html>
<html <?php language_attributes(); ?>>

<head>
	<meta charset="<?php bloginfo('charset'); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="profile" href="http://gmpg.org/xfn/11">
	<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
	<?php do_action('wp_body_open'); ?>
	<div class="site" id="page">

		<!-- ******************* The Navbar Area ******************* -->
		<div id="wrapper-navbar" itemscope itemtype="http://schema.org/WebSite">

			<a class="skip-link sr-only sr-only-focusable" href="#content"><?php esc_html_e('Skip to content', 'understrap'); ?></a>

			<nav class="navbar navbar-expand-md container header-menu">

				<?php if ('container' == $container) : ?>
					<div class="container">
					<?php endif; ?>

					<!-- Your site title as branding in the menu -->
					<?php if (!has_custom_logo()) { ?>

						<?php if (is_front_page() && is_home()) : ?>

							<h1 class="navbar-brand mb-0"><a rel="home" href="<?php echo esc_url(home_url('/')); ?>" title="<?php echo esc_attr(get_bloginfo('name', 'display')); ?>" itemprop="url"><?php bloginfo('name'); ?></a></h1>

						<?php else : ?>

							<a class="navbar-brand" rel="home" href="<?php echo esc_url(home_url('/')); ?>" title="<?php echo esc_attr(get_bloginfo('name', 'display')); ?>" itemprop="url"><?php bloginfo('name'); ?></a>

						<?php endif; ?>


					<?php } else {
						the_custom_logo();
					} ?>
					<!-- end custom logo -->

					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="<?php esc_attr_e('Toggle navigation', 'understrap'); ?>">
						<div class="hamburger">
							<div></div>
							<div></div>
							<div></div>
						</div>
					</button>

					<!-- The WordPress Menu goes here -->
					<?php wp_nav_menu(
						array(
							'theme_location'  => 'primary',
							'container_class' => 'collapse navbar-collapse',
							'container_id'    => 'navbarNavDropdown',
							'menu_class'      => 'navbar-nav ml-auto',
							'fallback_cb'     => '',
							'menu_id'         => 'main-menu',
							'depth'           => 2,
							'walker'          => new Understrap_WP_Bootstrap_Navwalker(),
						)
					); ?>

					<div class="social-networks-container">
						<?php if (get_theme_mod('facebook_setting_name') != "") : ?>
							<a href="<?php echo get_theme_mod('facebook_setting_name'); ?>">
								<img src="<?php echo get_template_directory_uri(); ?>/img/icn-facebook.png" alt="">

							</a>
						<?php endif; ?>
						<?php if (get_theme_mod('twitter_setting_name') != "") : ?>
							<a href="<?php echo get_theme_mod('twitter_setting_name'); ?>">
								<img src="<?php echo get_template_directory_uri(); ?>/img/icn-twitter.png" alt="">

							</a>
						<?php endif; ?>
						<?php if (get_theme_mod('instagram_setting_name') != "") : ?>
							<a href="<?php echo get_theme_mod('instagram_setting_name'); ?>">
								<img src="<?php echo get_template_directory_uri(); ?>/img/icn-instagram.png" alt="">

							</a>
						<?php endif; ?>
					</div>
					<?php if ('container' == $container) : ?>
					</div><!-- .container -->
				<?php endif; ?>

			</nav><!-- .site-navigation -->

		</div><!-- #wrapper-navbar end -->
