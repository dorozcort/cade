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
	<section class="Section1" id="nosotros">
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

	<section class="Section2">
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

<!-- Section 5 -->

<section class="Section5" id="noticias">
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-10 px-0 offset-sm-2">
				<h2 class="Title">Noticias <span>& Novedades</span></h2>
				<div class="row align-stretch mr-0">
					<div class="col-sm-6">
						<div class="row">
							<?php
							$args = array(
								'post_type' => 'noticia',
								'showposts' => 4,
								'order' => 'ASC',
								'meta_query' => array(
									array(
										'key'   => 'destacada',
										'value' => '0',
									)
								)
							);

							$proyecto_query = new WP_Query($args);
							?>
							<?php while ($proyecto_query->have_posts()) : $proyecto_query->the_post(); ?>
								<div class="col-sm-6 mb-3">
									<?php
									$link = get_field('enlace'); ?>

									<a href="<?php echo esc_url($link); ?>" class="news-container" target="_blank">
										<div class="news-text0">
											<span><?php the_field('pretitulo'); ?></span>
										</div>
										<div class="news-text1">
											<h4><?php the_title(); ?></h4>
										</div>
										<div class="news-text2">
											<p><?php the_content(); ?></p>
										</div>
									</a>
								</div>
							<?php endwhile; ?>
							<?php wp_reset_postdata(); ?>
						</div>
					</div>
					<div class="col-sm-6 margin-botom-1 pr-0">
						<?php
						$args = array(
							'post_type' => 'noticia',
							'showposts' => 1,
							'order' => 'DESC',
							'meta_query' => array(
								array(
									'key'   => 'destacada',
									'value' => '1',
								)
							)
						);

						$proyecto_query = new WP_Query($args);
						?>
						<?php while ($proyecto_query->have_posts()) : $proyecto_query->the_post(); ?>


							<?php $link = get_field('enlace'); ?>

							<a href="<?php echo esc_url($link); ?>" target="_blank" class="destacada-container" style="background-image: url('<?php the_post_thumbnail_url(); ?>');">
								<div class="destacada-text">
									<h2><?php the_title(); ?></h2>
									<p><?php the_content(); ?></p>
								</div>

							</a>
						<?php endwhile; ?>
						<?php wp_reset_postdata(); ?>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

</div><!-- #full-width-page-wrapper -->

<?php get_footer(); ?>
