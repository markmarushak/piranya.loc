<?php
/*
 * Plugin Name: School Register
 */

require_once ('autoload.php');
require_once ('ajax.php');
wp_register_style( 'enrollment_css', plugins_url('_inc/main.css', __FILE__) );
wp_register_script('enrollment_js', plugins_url('_inc/api.js', __FILE__ ), '', '', true );

add_action( 'admin_menu', 'school_page' );
function school_page(){
    add_menu_page( 'getschool', 'getschool', '', '', 'my_page_function', '', 7 );
}

add_shortcode('enrollment', 'get_school_register');
add_action('wp_head', 'myplugin_ajaxurl');
function myplugin_ajaxurl() {
    echo '<script type="text/javascript">
           var ajaxurl = "' . admin_url('admin-ajax.php') . '";
         </script>';
}
function get_school_register()
{


    wp_enqueue_style('enrollment_css');
    wp_enqueue_script('enrollment_js');
    load_template(plugins_url('school_register/index.php'), false);
}



