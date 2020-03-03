<?php get_header(); ?>

        <div class="home-page">
          <div class="row justify-content-center">
            <div class="col-11 col-md-11 col-lg-11 col-xl-9">
              <div class="home-page_title">
                <div class="row justify-content-center">
                  <h1 class="home-page_title-name"><?php the_field('home-page_title-name')?></h1>
                </div> 
              </div>
              <div class='title-image'>
                <div class="row justify-content-center">
                  <img class='title-image_featured-image' src="<?php the_field('title-image_featured-image')?>" alt="">
                </div>
              </div>
              <div class="home-page_content-top">
                <?php the_field('home-page_content-top')?>
              </div>
              <div class='table_name'>
                  <h2>Top rated companies</h2>
                  <button class="Game_button">Game <img class="button_down" src="<?php bloginfo( 'template_url' ); ?>/assets/images/Rectangle 206.svg" alt="">
                    <ul class="Game_list">
                      <li class="Game_Sport">Sport</li>
                      <li class="Game_ESport">ESport</li>
                    </ul>
                  </button>
              </div>
              <?php the_field('table')?>
              <div class="home-page_content-bottom">
                <?php the_field('home-page_content-bottom')?>
              </div>
            </div>
          </div> 
        </div>
        
<?php get_footer(); ?>      