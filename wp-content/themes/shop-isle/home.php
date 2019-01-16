<?php
/**
 * The home.php template.
 *
 * The template to display the home.php content.
 *
 * @package WordPress
 * @subpackage Shop Isle
 */
get_header(); ?>

	<!-- Wrapper start -->
	<div class="main">

	<!-- Header section start -->
<?php

$page_for_posts_id = get_option( 'page_for_posts' );
if ( ! empty( $page_for_posts_id ) ) {
	$thumb_tmp = get_the_post_thumbnail_url( $page_for_posts_id );
}

$shop_isle_header_image = get_header_image();
if ( ! empty( $thumb_tmp ) ) {
	echo '<section class="page-header-module module bg-dark" data-background="' . esc_url( $thumb_tmp ) . '">';
} elseif ( ! empty( $shop_isle_header_image ) ) {
	echo '<section class="page-header-module module bg-dark" data-background="' . esc_url( $shop_isle_header_image ) . '">';
} else {
	echo '<section class="module bg-dark">';
}
?>
		<div class="container">

			<div class="row">

				<div class="col-sm-10 col-sm-offset-1">

					<?php
					$shop_isle_blog_header_title = get_theme_mod( 'shop_isle_blog_header_title', __( 'serf production', 'shop-isle' ) );
					if ( ! empty( $shop_isle_blog_header_title ) ) {
						echo '<h1 class="module-title font-alt shop-isle-blog-header-title">';
						echo $shop_isle_blog_header_title;
						echo '</h1>';
					} elseif ( is_customize_preview() ) {
						echo '<h1 class="module-title font-alt shop-isle-blog-header-title shop_isle_hidden_if_not_customizer"></h1>';
					}
					$shop_isle_blog_header_subtitle = get_theme_mod( 'shop_isle_blog_header_subtitle' );
					if ( ! empty( $shop_isle_blog_header_subtitle ) ) {
						echo '<div class="module-subtitle font-serif mb-0 shop-isle-blog-header-subtitle">';
						echo $shop_isle_blog_header_subtitle;
						echo '</div>';
					} elseif ( is_customize_preview() ) {
						echo '<div class="module-subtitle font-serif mb-0 shop-isle-blog-header-subtitle shop_isle_hidden_if_not_customizer"></div>';
					}

					?>

				</div><!-- .col-sm-10 col-sm-offset-1 -->

			</div><!-- .row -->

		</div><!-- .container -->

<?php
echo '</section><!-- .module -->';
?>
	<!-- Header section end -->

	<!-- Blog standard start -->
<?php
$shop_isle_posts_per_page = get_option( 'posts_per_page' ); /* number of latest posts to show */

if ( ! empty( $shop_isle_posts_per_page ) && ( $shop_isle_posts_per_page > 0 ) ) :

	$shop_isle_query = new WP_Query(
		array(
			'post_type'      => 'post',
			'posts_per_page' => $shop_isle_posts_per_page,
			'paged'          => ( get_query_var( 'paged' ) ? get_query_var( 'paged' ) : 1 ),
		)
	);



	if ( have_posts() ) {

		?>
		<section class="module">
			<div class="container">

				<div class="row">

                    <div class="groups-item">
                        <?php echo print_r(do_action('all_category'),1)?>
                    </div>

                </div><!-- .row -->

			</div>
		</section>
		<!-- Blog standard end -->

		<?php
	}// End if().

endif;

?>

<?php get_footer(); ?>
