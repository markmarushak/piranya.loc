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

add_action('top', 'get_top_section');
require_once($_SERVER['DOCUMENT_ROOT'] . '/wp-load.php');

function get_top_section()
{
    global $wpdb;
    $table = 'wp_home_control';
    $rows = $wpdb->get_results('SELECT * FROM ' . $table . ' WHERE name_section LIKE "%block_item%"');
    $data = [];
    ?>

            <article>
                <div class="container">
                    <div class="row">

                        <header class="title-section">
                            <?php switch (get_locale()) {
                                case 'ru_RU' :
                                    echo "<h2>Наши преимущества</h2>";
                                    break;
                                case 'en_US':
                                    echo "<h2>Our advantages</h2>";
                                    break;
                                case 'de_DE':
                                    echo "<h2>Unsere vorteile</h2>";
                                    break;
                            }?>

                        </header>
            <?php

            foreach ($rows as $row => $val) {
                $a = unserialize($val->main_data);
                ?>


                <div class="col-sm-2 col-xs-6">

                    <div class="block-item">
                        <header>
                            <div class="logo-item">
                                <?php
                                $ico = str_replace('\"', '"', $a['icon']);
                                echo $ico;
                                ?>
                            </div>
                        </header>
                        <div class="description">
                            <?php switch (get_locale()) {
                                case 'ru_RU' :
                                    echo "<p>" . $a['text_ru'] . "</p>";
                                    break;
                                case 'en_US':
                                    echo "<p>" . $a['text_en'] . "</p>";
                                    break;
                                case 'de_DE':
                                    echo "<p>" . $a['text_de'] . "</p>";
                                    break;
                            }?>
                        </div>
                    </div>

                </div>






                <?php
            }

            ?>

                    </div>
                </div>
            </article>


    <?php

}

add_action('main_menu', 'get_main_menu');

function get_main_menu()
{
    $args = [
        'theme_location'  => '',
        'menu'            => '',
        'container'       => 'div',
        'container_class' => '',
        'container_id'    => '',
        'menu_class'      => 'menu',
        'menu_id'         => '',
        'echo'            => true,
        'fallback_cb'     => 'wp_page_menu',
        'before'          => '',
        'after'           => '',
        'link_before'     => '',
        'link_after'      => '',
        'items_wrap'      => '<ul id="%1$s" class="%2$s">%3$s</ul>',
        'depth'           => 0,
        'walker'          => '',
    ];

    return wp_nav_menu($args);
}


function language_selector_flags(){
    $languages = icl_get_languages('skip_missing=0&orderby=code');
    if(!empty($languages)){
        foreach($languages as $l){
            if(!$l['active']) echo '<a href="'.$l['url'].'">';
            echo '<img src="'.$l['country_flag_url'].'" height="12" alt="'.$l['language_code'].'" width="18" />';
            if(!$l['active']) echo '</a>';
        }
    }
}


add_action('category_home', 'get_home_category');
function get_home_category()
{
    ?>

    <article>
        <div class="container">
            <div class="row">
                <div class="col-sm-12">

                    <header class="title-section">
                        <h2>
                            <?php
                            switch(get_locale()){
                                case 'ru_RU' :
                                    echo "Категории";
                                    break;
                                case 'en_US':
                                    echo "Categories";
                                    break;
                                case 'de_DE':
                                    echo "Kategorien";
                                    break;
                            }
                            ?>
                        </h2>
                    </header>

                </div>
                <div class="col-sm-12">
                    <div class="groups-item">
                        <?php echo print_r(get_category_home(),1)?>
                    </div>
                </div>

            </div><!-- .row -->
        </div>
    </article>

    <?php
}

add_action('bottom', 'get_algoritm');

function get_algoritm()
{
    global $wpdb;
    $table = 'wp_home_control';
    $rows = $wpdb->get_results('SELECT * FROM ' . $table . ' WHERE name_section LIKE "%block_algoritm%"');
    $data = [];
    ?>


        <article>
            <div class="container">
                <div class="row">

                    <header class="title-section">
                        <?php switch (get_locale()) {
                            case 'ru_RU' :
                                echo "<h2>Каким образом будет происходить наше сотрудничество?</h2>";
                                break;
                            case 'en_US':
                                echo "<h2>How will our cooperation take place?</h2>";
                                break;
                            case 'de_DE':
                                echo "<h2>Wie findet unsere Zusammenarbeit statt?</h2>";
                                break;
                        }?>

                    </header>

                    <div class="col-sm-12">
                        <div class="algoritm">
                    <?php

                    foreach ($rows as $row => $val) {
                        $a = unserialize($val->main_data);
                        ?>




                                <div class="step">
                                    <?php switch (get_locale()) {
                                        case 'ru_RU' :
                                            echo "<p>" . $a['text_ru'] . "</p>";
                                            break;
                                        case 'en_US':
                                            echo "<p>" . $a['text_en'] . "</p>";
                                            break;
                                        case 'de_DE':
                                            echo "<p>" . $a['text_de'] . "</p>";
                                            break;
                                    }?>
                                </div>







                        <?php
                    }

                    ?>
                        </div>

                    </div>

                </div>
            </div>
        </article>
<?php

}