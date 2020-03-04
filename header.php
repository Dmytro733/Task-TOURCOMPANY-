<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php bloginfo( "description" ); ?></title>
    <link href="https://fonts.googleapis.com/css?family=Fira+Sans:400,500,700|Montserrat:700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">
    
    <?php wp_head(); ?>
</head>
<body style="background: <?php the_field('body')?>">
    <div class="container-fluid" style="background-image: url(<?php the_field('container-fluid')?>);">
        <div class="header">
            <div class="row top_nav align-items-center">
                <div class="top_nav-logo col-4 col-md-4 col-lg-4 col-xl-4">
                    <h5 class='logo_name'><a href="#"><?php the_field('logo_name')?></a></h5>
                </div>
                <?php
			        wp_nav_menu(
			        	array(
                            'theme_location'        => 'header_menu',
                            'menu_class'        => 'list',
                            'menu_id'       => 'menu-header',
                            'container_class'       => 'top_nav-menu col-8 col-md-8 col-lg-8 col-xl-8' 
			        	)
			        );
			    ?>
            </div>
        </div>