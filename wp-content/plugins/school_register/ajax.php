<?php

add_action( 'wp_ajax_zip_code', 'zip_code_callback' );
function zip_code_callback() {
    $district = file_get_contents('http://mymst.myers-stevens.com/api/district/'.$_GET['val']);
    echo $district;

    wp_die(); // выход нужен для того, чтобы в ответе не было ничего лишнего, только то что возвращает функция
}


add_action( 'wp_ajax_schoolD', 'schoolD_callback' );
function schoolD_callback() {
    $district = file_get_contents('http://mymst.myers-stevens.com/api/school/'.$_GET['val']);
    echo $district;

    wp_die(); // выход нужен для того, чтобы в ответе не было ничего лишнего, только то что возвращает функция
}

add_action( 'wp_ajax_school_grade', 'school_grade_callback' );
function school_grade_callback() {
    $district = file_get_contents('http://mymst.myers-stevens.com/api/grade/'.$_GET['val']);
    echo $district;

    wp_die(); // выход нужен для того, чтобы в ответе не было ничего лишнего, только то что возвращает функция
}