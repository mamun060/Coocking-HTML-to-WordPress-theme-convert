<?php
/**
 * Template part for displaying posts
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
	<?php
	if ( is_sticky() && is_home() ) :
		echo cg_get_svg( array( 'icon' => 'thumb-tack' ) );
	endif;
	?>
	<header>
		<?php
		if ( 'post' === get_post_type() ) {
			echo '<div class="em">';
				if ( is_single() ) {
					cg_posted_on();
				} else {
					echo cg_time_link();
					cg_edit_link();
				};
			echo '</div>';
		};

		if ( is_single() ) {
			the_title( '<h1 class="et">', '</h1>' );
		} elseif ( is_front_page() && is_home() ) {
			the_title( '<h3 class="et"><a href="' . esc_url( get_permalink() ) . '" rel="bookmark">', '</a></h3>' );
		} else {
			the_title( '<h2 class="et"><a href="' . esc_url( get_permalink() ) . '" rel="bookmark">', '</a></h2>' );
		}
		?>
	</header> 

	<?php if ( '' !== get_the_post_thumbnail() && ! is_single() ) : ?>
		<div class="post-thumbnail">
			<a href="<?php the_permalink(); ?>">
				<?php the_post_thumbnail( 'cg-featured-image' ); ?>
			</a>
		</div> 
	<?php endif; ?>

	<div class="ec">
		<?php
		/* translators: %s: Name of current post */
		the_content( sprintf(
			__( 'Continue reading<span class="screen-reader-text"> "%s"</span>', 'cg' ),
			get_the_title()
		) );

		wp_link_pages( array(
			'before'      => '<div class="page-links">' . __( 'Pages:', 'cg' ),
			'after'       => '</div>',
			'link_before' => '<span class="page-number">',
			'link_after'  => '</span>',
		) );
		?>
	</div> 


</article> 
