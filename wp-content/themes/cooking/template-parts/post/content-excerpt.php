<?php
/**
 * Template part for displaying posts with excerpts
 *
 * Used in Search Results and for Recent Posts in Front Page panels.
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package WordPress
 * @subpackage kcel_bd
 * @since 1.0
 * @version 1.2
 */

?>

<article id="cgp-<?php the_ID(); ?>">

	<header class="eh">
		<?php if ( 'post' === get_post_type() ) : ?>
			<div class="em">
				<?php
				echo cg_time_link();
				cg_edit_link();
				?>
			</div> 
		<?php elseif ( 'page' === get_post_type() && get_edit_post_link() ) : ?>
			<div class="em">
				<?php cg_edit_link(); ?>
			</div> 
		<?php endif; ?>

		<?php if ( is_front_page() && ! is_home() ) {

			// The excerpt is being displayed within a front page section, so it's a lower hierarchy than h2.
			the_title( sprintf( '<h3 class="et"><a href="%s" rel="bookmark">', esc_url( get_permalink() ) ), '</a></h3>' );
		} else {
			the_title( sprintf( '<h2 class="et"><a href="%s" rel="bookmark">', esc_url( get_permalink() ) ), '</a></h2>' );
		} ?>
	</header> 

	<div class="entry-summary">
		<?php the_excerpt(); ?>
	</div><!-- .entry-summary -->

</article> 
