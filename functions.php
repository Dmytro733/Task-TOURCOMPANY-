<?php

add_action( 'wp_enqueue_scripts', 'tourcompany_scripts' );
add_action( 'wp_enqueue_scripts', 'tourcompany_style' );


function tourcompany_style() {
	wp_enqueue_style( 'mai-style', get_stylesheet_uri());
	wp_enqueue_style( 'bootstrap-name', get_template_directory_uri() .'/assets/css/bootstrap.min.css' );
}


function tourcompany_scripts() {
	wp_enqueue_script( 'main-script', get_template_directory_uri() .'/assets/js/tourcompany.js', array(), null, true );
}