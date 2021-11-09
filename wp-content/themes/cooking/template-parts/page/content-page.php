<?php
/**
 * Template part for displaying page content in page.php
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package WordPress
 * @subpackage coocking
 * @since 1.0
 * @version 1.0
 */

?>

<article id="cgp-<?php the_ID(); ?>">
	<header class="eh">
		<?php //the_title( '<h1 class="et">', '</h1>' ); ?>
		<?php cg_edit_link( get_the_ID() ); ?>
	</header>
	<div class="ec">
		<?php
			the_content();

			wp_link_pages( array(
				'before' => '<div class="page-links">' . __( 'Pages:', 'cg' ),
				'after'  => '</div>',
			) );
		?>
	</div>
</article>
