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

<?php
$args = array(
    'post_type'     => 'coocking_blog',
    'orderby'       => 'date',
    'order'         => 'DSEC',
    'post_status'   => 'publish',
    'posts_per_page'=> 9,
    'paged'         => get_query_var('paged') ? get_query_var('paged') : 1
);
$the_query = new WP_Query($args);
?>

<div class="site-content grid-container">

	<!-- START Main Content -->
	<main role="main">
	
		<!-- START Left Column -->
		<?php
            if ($the_query->have_posts()):
            while ($the_query->have_posts()) : $the_query->the_post();
        ?>
		<div class="grid-33 tablet-grid-33 mobile-grid-100">
			
			<!-- START Post -->
			<div class="wow zoomIn" data-wow-duration="2s" data-wow-offset="250">
				<article class="post-container">
					<header>
						<h2 class="post-title">
							<a href="<?php the_permalink(); ?>">
							
							<?php
                                $my_title = apply_filters('the_title', get_the_title());
                                echo wp_trim_words($my_title);
                            ?>
						
						</a>
						</h2>
						<div class="featured-image">
						<?php
                    $featured_img_url = get_the_post_thumbnail_url(get_the_ID(), 'full');
                if ($featured_img_url): ?>
							<a class="image-hover" href="<?php the_permalink(); ?>">
								<img src="<?php echo esc_url($featured_img_url) ?>" alt="Featured Image" />
								<div class="image-hover-overlay">
									<i class="fa fa-link"></i>
								</div>
							</a>
					<?php endif; ?>
							<div class="post-date-fixed tilt-left">
							<time datetime="2014-11-24"><?php echo the_date(); ?></time>
							</div>
						</div>
						
					</header>
					
					<div class="post-content">
						<p>   <?php
                                    $my_content = apply_filters('the_content', get_the_content());
                                    echo wp_trim_words($my_content, 50);
                                    ?>
						<a href="<?php the_permalink(); ?>">&hellip;view more</a></p>
					</div>
				</article>
			</div>
			<!-- END Post -->
		
		</div>
		<!-- END Left Column -->
		<?php
                endwhile;
                $big = 999999999;
                $pages = paginate_links( array(
                    'base' => str_replace( $big, '%#%', esc_url( get_pagenum_link( $big ) ) ),
                    'format' => '?paged=%#%',
                    'current' => max( 1, get_query_var('paged') ),
                    'total' => $the_query->max_num_pages,
                    'type'  => 'array',
                ) );
                if( is_array( $pages ) ) {
                    $paged = ( get_query_var('paged') == 0 ) ? 1 : get_query_var('paged');
                    echo '<div class="styled-pagination text-center"><ul class="pagination1 clearfix">';
                    foreach ( $pages as $page ) {
                        echo "<li>$page</li>";
                    }
                    echo '</ul></div>';
                }
            endif;
            ?>
	</main>
	<!-- END Main Content -->
	
</div> 