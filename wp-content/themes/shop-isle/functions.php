<?php
/**
 * Main functions file
 *
 * @package WordPress
 * @subpackage Shop Isle
 */
$vendor_file = trailingslashit(get_template_directory()) . 'vendor/autoload.php';
if (is_readable($vendor_file)) {
    require_once $vendor_file;
}

if (!defined('WPFORMS_SHAREASALE_ID')) {
    define('WPFORMS_SHAREASALE_ID', '848264');
}

add_filter('themeisle_sdk_products', 'shopisle_load_sdk');
/**
 * Loads products array.
 *
 * @param array $products All products.
 *
 * @return array Products array.
 */
function shopisle_load_sdk($products)
{
    $products[] = get_template_directory() . '/style.css';

    return $products;
}

/**
 * Initialize all the things.
 */
require get_template_directory() . '/inc/init.php';

/**
 * Note: Do not add any custom code here. Please use a child theme so that your customizations aren't lost during updates.
 * http://codex.wordpress.org/Child_Themes
 */


function get_category_home()
{

    $taxonomy = 'product_cat';
    $orderby = 'name';
    $show_count = 0;
    $pad_counts = 0;
    $hierarchical = 1;
    $title = '';
    $empty = 0;
    $args = array(
        'taxonomy' => $taxonomy,
        'orderby' => $orderby,
        'show_count' => $show_count,
        'pad_counts' => $pad_counts,
        'hierarchical' => $hierarchical,
        'title_li' => $title,
        'hide_empty' => $empty
    );

    $all_categories = get_categories($args);
    //print_r($all_categories);
    foreach ($all_categories as $cat) {
        //print_r($cat);
        if ($cat->category_parent == 0) {
            $category_id = $cat->term_id;

            echo '<div class="item"><a href="' . get_term_link($cat->slug, 'product_cat') . '">' . $cat->name . '</a></div>';

        }
    }
}

add_action('all_category', 'get_category_home');