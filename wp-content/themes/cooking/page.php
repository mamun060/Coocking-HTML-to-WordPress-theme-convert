<?php
/**
 * The template for displaying all pages
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site may use a
 * different template.
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package WordPress
 * @subpackage Coocking
 * @since 1.0
 * @version 1.0
 */

?>
<?php get_template_part('custom-template-parts/header-meta-link', 'none'); ?>
<?php //get_template_part('custom-template-parts/header-main', 'none'); ?>
<?php get_template_part( 'custom-template-parts/header-template', 'none' ); ?>
<?php //get_template_part( 'custom-template-parts/content-sidebar', 'none' ); ?>

<div class="page-container">
    <div class="auto-container">
        <div class="row clearfix">
            <div class="wrap">
                <div id="primary" class="content-area">
                    <main id="main" class="site-main" role="main">
                        <?php
                        if(is_page( 'blog' )){
                            get_template_part('template-parts/page/content', 'page-blog');
                        }
                        else if(is_page( 'food-menu' )){
                            get_template_part('template-parts/page/content', 'page-food-menu');
                        }
                        else if(is_page( 'card' )){
                            get_template_part('template-parts/page/content', 'page-card');
                        }
                        else if(is_page( 'checkout' )){
                            get_template_part('template-parts/page/content', 'page-checkout');
                        }
                        else{
                            while (have_posts()) : the_post();
                            get_template_part('template-parts/page/content', 'page');
                            if (comments_open() || get_comments_number()) :
                                comments_template();
                            endif;
                            endwhile;
                        }
                         // End of the loop.
                        ?>

                    </main><!-- #main -->
                </div><!-- #primary -->
            </div><!-- .wrap -->
        </div>
    </div>
</div>
<?php get_template_part('custom-template-parts/footer-main', 'none'); ?>
