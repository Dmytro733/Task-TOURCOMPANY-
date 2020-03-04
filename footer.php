        <div class="footer">
            <div class="row footer_row align-items-center">
                <div class="footer_logo col-md-4 col-sm-4 col-12">
                    <h5 class='footer_logo-name'><a href="#"><?php the_field('footer_logo-name')?></a></h5>
                </div>
                <?php
			        wp_nav_menu(
			        	array(
                            'theme_location'        => 'footer_menu',
                            'menu_class'        => 'footer_list',
                            'menu_id'       => 'menu-header-1',
                            'container_class'       => 'footer_about-company col-md-7 col-sm-8 col-8' 
			        	)
			        );
			    ?>
            </div>
        </div>
    </div>
<?php wp_footer(); ?>
</body>
</html>