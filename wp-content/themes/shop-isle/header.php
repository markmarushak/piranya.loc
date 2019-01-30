<?php
/**
 * The header for our theme.
 *
 * @package shop-isle
 */
?><!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
<meta charset="<?php bloginfo( 'charset' ); ?>">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="profile" href="http://gmpg.org/xfn/11">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
<?php if ( is_singular() && pings_open( get_queried_object() ) ) { ?>
	<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>">
<?php } ?>

    <style>
        #flags_language_selector img{
            margin:1px;
            border:1px solid #333;
        }
    </style>

<?php wp_head(); ?>
</head>
<body <?php body_class(); ?>>

    <div id="flags_language_selector"><?php language_selector_flags(); ?></div >

	<!-- Preloader -->
	<?php

	/* Preloader */
	if ( is_front_page() && ! is_customize_preview() ) :

		$shop_isle_disable_preloader = get_theme_mod( 'shop_isle_disable_preloader' );

		if ( isset( $shop_isle_disable_preloader ) && ( $shop_isle_disable_preloader != 1 ) ) :

			echo '<div class="page-loader">';
				echo '<div class="loader">' . __( 'Loading...', 'shop-isle' ) . '</div>';
			echo '</div>';

		endif;

	endif;

	$header_class = '';
	$hide_top_bar = get_theme_mod( 'shop_isle_top_bar_hide', true );
	if ( (bool) $hide_top_bar === false ) {
		$header_class .= 'header-with-topbar';
	}
	?>
	<header class="header <?php echo esc_attr( $header_class ); ?>">
	<?php do_action( 'shop_isle_header' ); ?>



<!--	--><?php //do_action( 'shop_isle_after_header' ); ?>

	</header>
