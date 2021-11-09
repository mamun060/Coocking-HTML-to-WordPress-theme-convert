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
        
    </div>
</div>
<?php get_template_part('custom-template-parts/footer-main', 'none'); ?>
