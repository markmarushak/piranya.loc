<?php

require_once( ABSPATH . 'wp-admin/includes/upgrade.php' );

class db
{
    //$sql = "CREATE TABLE " . $table_name . " (
    //          id mediumint(9) NOT NULL AUTO_INCREMENT,
    //          time bigint(11) DEFAULT '0' NOT NULL,
    //          name tinytext NOT NULL,
    //          text text NOT NULL,
    //          url VARCHAR(55) NOT NULL,
    //          UNIQUE KEY id (id)
    //        );"
    public function createDB()
    {
        global $wpdb;
        $table = $wpdb->get_blog_prefix() . 'home_control';
        $sql = "CREATE TABLE ". $table ." (
          id int(11) NOT NULL primary key AUTO_INCREMENT,
          name_section VARCHAR(55) NOT NULL,
          main_data text NOT NULL
        )";

        dbDelta($sql);
    }


}