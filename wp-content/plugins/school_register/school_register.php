<?php
/*
 * Plugin Name: School Register
 */


add_action( 'admin_menu', 'school_page' );
function school_page(){
    add_menu_page( 'getschool', 'getschool', '', 'control_home', 'my_page_function', '', 6 );
}

add_shortcode('enrollment', 'get_school_register');

function get_school_register()
{
    load_template(plugins_url('school_register/index.php'), true);
}

wp_register_style( 'main_css', plugins_url('/_inc/control-home.css', __FILE__) );
wp_register_script( 'main_js', plugins_url('/_inc/control-home.js', __FILE__) );

