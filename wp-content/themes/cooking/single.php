<?php
/**
 * The template for displaying all single posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#single-post
 *
 * @package WordPress
 * @subpackage kcel_bd
 * @since kcel bd 1.0
 */

//get_header(); ?>

<?php get_template_part('custom-template-parts/header-meta-link', 'none'); ?>
<?php get_template_part( 'custom-template-parts/header-template', 'none' ); ?>


<?php //cg_edit_link( get_the_ID() ); ?>
<div class="sidebar-page-container">
    <div class="auto-container">
        <div class="row clearfix">
            <main id="main" class="site-main" role="main">
                <?php
                /* Start the Loop */
                while (have_posts()) : the_post();
                    if (is_singular( 'coocking_blog' )) {
                        get_template_part('template-parts/post/content-single-blog', get_post_format());
                    }
                    // If comments are open or we have at least one comment, load up the comment template.
                    if (comments_open() || get_comments_number()) :
                        comments_template();
                    endif;
                endwhile; // End of the loop.
                ?>
            </main><!-- #main -->
        </div><!-- #primary -->
    </div><!-- .wrap -->
</div>

<?php get_template_part('custom-template-parts/footer-main', 'none'); ?>
