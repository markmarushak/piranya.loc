<?php
/*
 * Plugin Name: Контроль главной страницы
 */
require_once ('class.control-home.php');
require_once ('controller.php');


register_activation_hook( __FILE__ , ['ControlHome', 'plugin_activation']);
register_deactivation_hook( __FILE__ , ['ControlHome', 'plugin_deactivation']);

// Добавим видимость пункта меню для Редакторов
add_action( 'admin_menu', 'register_my_page' );
function register_my_page(){
    add_menu_page( 'Контроль Главной', 'Контроль Главной', 'edit_others_posts', 'control_home', 'my_page_function', '', 6 );
}

function my_page_function()
{
    require_once ('page.php');
}

wp_register_style( 'main_css', plugins_url('/_inc/control-home.css', __FILE__) );
wp_register_script( 'main_js', plugins_url('/_inc/control-home.js', __FILE__) );






