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
	<section class="Section1">
		<div class="container-fluid">
			<div class="row">
				<div class="col-xs-12 col-sm-12 col-lg-10 px-0">
					<div class="Section1-container">
						<div class="Section1-img">
							<img class="section-img w-100" src="<?php echo get_template_directory_uri(); ?>/img/img-section1.jpg" alt="">
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
				<div class="col-lg-12 px-0">
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
						<!-- SLIDE STARTS -->
						<div class="container-carousel">
							<img class="img-carousel" src="<?php echo get_template_directory_uri(); ?>/img/img-socios12.png" alt="">
						</div>
						<!-- SLIDE ENDS -->
					</div>
				</div>
			</div>
	</section>

	<!-- Section 3 -->

	<section class="Section3" id="nosotros">

		<div class="img-background container-fluid">
			<div class="row">
				<div class="col-lg-7 offset-lg-3">
					<div class="Section3-header">
						<h2>Nosotros</h2>
					</div>
					<div class="row">
						<div class="col-lg-4">
							<div class="box1">
								<div class="box1-text1">
									Abarcamos toda la cadena de producción para impulsar el desarrollo del potencial energético del
									país.
								</div>
								<div class="box1-text2">
									<h1>Enfocados en la energía generada por el petróleo y gas de <b>Vaca Muerta.</b></h1>
									<img src="<?php echo get_template_directory_uri(); ?>/img/icn-box1.svg">
								</div>
							</div>
						</div>
						<div class="col-lg-8">
							<div class="row col-same-height">
								<div class="col-lg-4 col-xs-6 col-sm-6">
									<div class="box2">
										<div class="box-title">
											Lorem ipsum
										</div>
										<div class="box-subtitle">
											<h1>XX</h1>
											<img src="<?php echo get_template_directory_uri(); ?>/img/icn-box2.svg">
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-xs-6 col-sm-6">
									<div class="box3">
										<div class="box-title">
											Lorem ipsum
										</div>
										<div class="box-subtitle">
											<h1>XX</h1>
											<img src="<?php echo get_template_directory_uri(); ?>/img/icn-box3.svg">
										</div>
									</div>
								</div>
								<div class="col-lg-4">
									<div class="box4">
										<div class="box4-text">
											Lorem ipsum dolor sit amet, consectetuer adipiscing
										</div>
										<img src="<?php echo get_template_directory_uri(); ?>/img/icn-box4.svg">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-lg-12">
									<div class="box5">
										<h1 class="box5-tittle">Impulsamos el desarrollo</h1>
										<p class="box5-text">Consideramos que el desarrollo de los recursos energéticos permitirá el
											crecimiento de la actividad productiva y la expansión económica, promoviendo el progreso del país.
										</p>
										<img src="<?php echo get_template_directory_uri(); ?>/img/img-section3-box0.png" class="img-section3-box0" />
										<div class="mobile-images">
											<img src="<?php echo get_template_directory_uri(); ?>/img/icn-box2.svg" class="img-fluid" />
											<img src="<?php echo get_template_directory_uri(); ?>/img/icn-box3.svg" class="img-fluid" />
											<img src="<?php echo get_template_directory_uri(); ?>/img/icn-box4.svg" class="img-fluid" />
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- Section 4 -->

	<section class="Section4" id="proyectos">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-12">
					<div class="Section4-header">
						<h1>Proyectos</h1>
					</div>
				</div>
				<div class="container-fluid">
					<div class="row">
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
													<div class="col-lg-6 Section4-image" style="background-image: url('<?php the_post_thumbnail_url(); ?>');">

													</div>
													<div class=" Section4-text col-lg-6">
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
				</div>
			</div>
		</div>
</div>

</section>

<!-- Section 5 -->

<section class="Section5" id="noticias">
	<div class="container-fluid noticias-desktop">
		<div class="row">
			<div class="col-lg-10 px-0 offset-lg-2">
				<h2 class="Title">Noticias <span>& Novedades</span></h2>
				<div class="row align-stretch mr-0">
					<div class="col-lg-6 hide-mobile">
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
								<div class="col-lg-6 mb-3">
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
					<div class="col-lg-6 margin-botom-1 pr-0">
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
									<div class="hide-mobile"><?php the_content(); ?></div>
								</div>

							</a>
						<?php endwhile; ?>
						<?php wp_reset_postdata(); ?>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="Section5-mobile d-lg-none">
		<div class="news-container-mobile">
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
				<div class="">
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
</section>

<section class="Footer" id="contacto">

	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="site-footer">
					<div class="site-info">

						Contacto: <a href="mailto:info@cadenergia.org">info@cadenergia.org</a> <span class="hide-mobile">|</span> <a href="tel:+5491148728374">+5411 4872-8374</a>

					</div><!-- .site-info -->
				</div>
			</div>
		</div>
	</div>
</section>

</div><!-- #full-width-page-wrapper -->

<?php get_footer(); ?>
