<?php

/**
 * Template Name: CADE Home Page
 *
 * Template for displaying a page without sidebar even if a sidebar widget is published.
 *
 * @package understrap
 */

// Exit if accessed directly.
defined('ABSPATH') || exit;

get_header();
$container = get_theme_mod('understrap_container_type');
?>

<?php if (is_front_page()) : ?>
	<?php get_template_part('global-templates/hero'); ?>
<?php endif; ?>


<div class="wrapper" id="full-width-page-wrapper">

	<!-- CONTENT STARTS -->
	<!-- Section 1  -->
	<section class="Section1" id="home">
		<div class="container-fluid">
			<div class="row">
				<div class="col-sm-10 px-0">
					<div class="Section1-container">
						<div class="Section1-img">
							<img class="w-100" src="<?php echo get_template_directory_uri(); ?>/img/img-section1.jpg" alt="">
						</div>
						<div class="Section1-text">
							<p>Representamos a empresas líderes del sector energético dedicadas al estudio y la posibilidad de
								articular nuevas formas de colaboración institucional. Además, aunamos esfuerzos conjuntos para
								promover mejoras estratégicas a través de una forma de gestionar ética y transparente. </p>

						</div>
					</div>

				</div>
			</div>
		</div>

	</section>

	<!-- Section 2 -->

	<section class="Section2" id="proyectos">
		<div class="container">
			<div class="row">
				<div class="col-sm-12 px-0">
					<div class="Section2-text">
						<p>Liderada por el máximo nivel ejecutivo de las compañías con presencia en la cadena energética.</p>
					</div>
					<div class="Section2-carousel">
						<!-- SLIDE STARTS -->
						<div class="container-carousel">
							<img class="img-carousel" src="<?php echo get_template_directory_uri(); ?>/img/img-socios1.png" alt="">
						</div>
						<!-- SLIDE ENDS -->
						<!-- SLIDE STARTS -->
						<div class="container-carousel">
							<img class="img-carousel" src="<?php echo get_template_directory_uri(); ?>/img/img-socios2.png" alt="">
						</div>
						<!-- SLIDE ENDS -->
						<!-- SLIDE STARTS -->
						<div class="container-carousel">
							<img class="img-carousel" src="<?php echo get_template_directory_uri(); ?>/img/img-socios3.png" alt="">
						</div>
						<!-- SLIDE ENDS -->
						<!-- SLIDE STARTS -->
						<div class="container-carousel">
							<img class="img-carousel" src="<?php echo get_template_directory_uri(); ?>/img/img-socios4.png" alt="">
						</div>
						<!-- SLIDE ENDS -->
						<!-- SLIDE STARTS -->
						<div class="container-carousel">
							<img class="img-carousel" src="<?php echo get_template_directory_uri(); ?>/img/img-socios5.png" alt="">
						</div>
						<!-- SLIDE ENDS -->
						<!-- SLIDE STARTS -->
						<div class="container-carousel">
							<img class="img-carousel" src="<?php echo get_template_directory_uri(); ?>/img/img-socios6.png" alt="">
						</div>
						<!-- SLIDE ENDS -->
						<!-- SLIDE STARTS -->
						<div class="container-carousel">
							<img class="img-carousel" src="<?php echo get_template_directory_uri(); ?>/img/img-socios7.png" alt="">
						</div>
						<!-- SLIDE ENDS -->
						<!-- SLIDE STARTS -->
						<div class="container-carousel">
							<img class="img-carousel" src="<?php echo get_template_directory_uri(); ?>/img/img-socios8.png" alt="">
						</div>
						<!-- SLIDE ENDS -->
						<!-- SLIDE STARTS -->
						<div class="container-carousel">
							<img class="img-carousel" src="<?php echo get_template_directory_uri(); ?>/img/img-socios9.png" alt="">
						</div>
						<!-- SLIDE ENDS -->
						<!-- SLIDE STARTS -->
						<div class="container-carousel">
							<img class="img-carousel" src="<?php echo get_template_directory_uri(); ?>/img/img-socios10.png" alt="">
						</div>
						<!-- SLIDE ENDS -->
						<!-- SLIDE STARTS -->
						<div class="container-carousel">
							<img class="img-carousel" src="<?php echo get_template_directory_uri(); ?>/img/img-socios11.png" alt="">
						</div>
						<!-- SLIDE ENDS -->
					</div>
				</div>
			</div>
	</section>

	<!-- Section 4 -->

	<section class="Section4" id="proyectos">

		<?php
		$args = array(
			'post_type' => 'proyecto',
			'showposts' => 10
		);

		$proyecto_query = new WP_Query($args);
		?>

		<div id="Proyectos-carousel" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<?php while ($proyecto_query->have_posts()) : $proyecto_query->the_post(); ?>
					<li data-target="#Proyectos-carousel" data-slide-to="<?php echo $proyecto_query->current_post ?>" class="<?php echo $proyecto_query->current_post >= 1 ? '' : 'active'; ?>""></li>
			<?php endwhile; ?>
			<?php wp_reset_postdata(); ?>
			</ol>
			<div class=" carousel-inner">
						<?php
						$args = array(
							'post_type' => 'proyecto',
							'showposts' => 10
						);

						$proyecto_query = new WP_Query($args);
						?>
						<?php while ($proyecto_query->have_posts()) : $proyecto_query->the_post(); ?>
							<div class="carousel-item <?php echo $proyecto_query->current_post >= 1 ? '' : 'active'; ?>">
								<div class="row col-same-height">
									<div class="col-sm-6 Section4-image" style="background-image: url('<?php the_post_thumbnail_url(); ?>');">

									</div>
									<div class=" Section4-text col-sm-6">
										<div class="Section4-text1">
											<h2>Proyectos</h2>
										</div>
										<div class="Section4-text2">
											<h1><?php the_title(); ?></h1>
										</div>
										<div class="Section4-text3">
											<p><?php the_content(); ?></p>
										</div>
									</div>
								</div>
							</div>
						<?php endwhile; ?>
						<?php wp_reset_postdata(); ?>
		</div>
		<a class="carousel-control-prev " href="#Proyectos-carousel" role="button" data-slide="prev">
			<span class="arrow arrow-prev" aria-hidden="true"></span>
			<span class="sr-only">Previous</span>
		</a>
		<a class="carousel-control-next " href="#Proyectos-carousel" role="button" data-slide="next">
			<span class="arrow arrow-next" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
</div>
</section>

<div class="<?php echo esc_attr($container); ?> p-0" id="content">

	<div class="row">

		<div class="col-md-12 content-area" id="primary">

			<main class="site-main" id="main" role="main">

				<?php while (have_posts()) : the_post(); ?>

					<?php get_template_part('loop-templates/content', 'page'); ?>

					<?php
					// If comments are open or we have at least one comment, load up the comment template.
					if (comments_open() || get_comments_number()) :
						comments_template();
					endif;
					?>

				<?php endwhile; // end of the loop.
				?>

			</main><!-- #main -->

		</div><!-- #primary -->

	</div><!-- .row end -->

</div><!-- #content -->

</div><!-- #full-width-page-wrapper -->

<?php get_footer(); ?>
