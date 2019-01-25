<?php
require_once( $_SERVER['DOCUMENT_ROOT'] . '/wp-load.php' );

add_action( 'wp_ajax_insert_home', 'insert_home_callback' );
function insert_home_callback() {
    global $wpdb;
    $table = 'wp_home_control';
    $data = $_POST['main'];
    $section = $data['name_section'];

    $wpdb->insert($table, ['name_section' => $section, 'main_data' => serialize($data)]);
    echo 'save';
    wp_die(); // выход нужен для того, чтобы в ответе не было ничего лишнего, только то что возвращает функция
}

add_action( 'wp_ajax_select_home', 'select_home_callback' );
function select_home_callback() {
    header('Content-Type: application/json');
    global $wpdb;
    $table = 'wp_home_control';
    $rows = $wpdb->get_results('SELECT * FROM '.$table);
    $data = [];
    foreach ($rows as $row => $val)
    {
        $a = unserialize($val->main_data);
        $a['id'] =+ $val->id;
        array_push($data, $a);
    }
    echo json_encode($data, JSON_UNESCAPED_UNICODE);
    wp_die(); // выход нужен для того, чтобы в ответе не было ничего лишнего, только то что возвращает функция
}

add_action( 'wp_ajax_update_home', 'update_home_callback' );
function update_home_callback() {
    header('Content-Type: application/json');
    global $wpdb;
    $table = 'wp_home_control';
    $rows = $wpdb->get_results('SELECT * FROM '.$table);
    $data = [];
    foreach ($rows as $row => $val)
    {
        $a = unserialize($val->main_data);
        $a['id'] =+ $val->id;
        array_push($data, $a);
    }
    echo json_encode($data, JSON_UNESCAPED_UNICODE);
    wp_die(); // выход нужен для того, чтобы в ответе не было ничего лишнего, только то что возвращает функция
}

add_action( 'wp_ajax_delete_home', 'delete_home_callback' );
function delete_home_callback() {
    header('Content-Type: application/json');
    global $wpdb;
    $table = 'wp_home_control';
    $rows = $wpdb->get_results('SELECT * FROM '.$table);
    $data = [];
    foreach ($rows as $row => $val)
    {
        $a = unserialize($val->main_data);
        $a['id'] =+ $val->id;
        array_push($data, $a);
    }
    echo json_encode($data, JSON_UNESCAPED_UNICODE);
    wp_die(); // выход нужен для того, чтобы в ответе не было ничего лишнего, только то что возвращает функция
}