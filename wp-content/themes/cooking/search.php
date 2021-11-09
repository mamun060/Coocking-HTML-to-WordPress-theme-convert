<?php
/**
 * The template for displaying search results pages
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#search-result
 *
 * @package WordPress
 * @subpackage kcel_bd
 * @since 1.0
 * @version 1.0
 */

?>


		<?php if ( have_posts() ) : 
			get_header();
		?>
			<h1 class="page-title"><?php printf( __( 'Search Results for: %s', 'cg' ), '<span>' . get_search_query() . '</span>' ); ?></h1>
		<?php endif;?>

		<?php
		if ( have_posts() ) :
			
			/* Start the Loop */
			while ( have_posts() ) : the_post();
				get_template_part( 'template-parts/post/content', 'excerpt' );

			endwhile; // End of the loop.

			the_posts_pagination( array(
				'prev_text' => cg_get_svg( array( 'icon' => 'arrow-left' ) ) . '<span class="screen-reader-text">' . __( 'Previous page', 'cg' ) . '</span>',
				'next_text' => '<span class="screen-reader-text">' . __( 'Next page', 'cg' ) . '</span>' . cg_get_svg( array( 'icon' => 'arrow-right' ) ),
				'before_page_number' => '<span class="meta-nav screen-reader-text">' . __( 'Page', 'cg' ) . ' </span>',
			) );

			get_footer();

		else :
			get_template_part( '404', 'excerpt' );
		?>

		<?php	endif; ?>




