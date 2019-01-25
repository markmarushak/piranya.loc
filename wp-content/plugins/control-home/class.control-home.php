<?php

require_once ('db.php');

class ControlHome
{

    public function plugin_activation()
    {
        return db::createDB();
    }

    public static function plugin_deactivation()
    {
        global $wpdb;
        $table_name = $wpdb->prefix . 'home_control';
        return $wpdb->query( "DROP TABLE IF EXISTS $table_name" );
    }

    public function addSection()
    {
        return 0;
    }

}