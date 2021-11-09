<!-- Content Section -->
<div class="site-content grid-container">

	<!-- START Main Content -->
	<main role="main">
		<div class="grid-100 tablet-grid-100 mobile-grid-100">
			
			<!-- START Single Post -->
			<article id="post-id" class="post-container">
			
				<!-- START Post Header -->
				<header>
				
					<!-- Post Title -->
					<h2 class="post-title"><?php the_title(); ?></h2>
					
					<!-- Featured Image -->
					<div class="featured-image">
                <?php
                    $featured_img_url = get_the_post_thumbnail_url(get_the_ID(), 'full');
                if ($featured_img_url): ?>
        
						<a class="image-hover lightbox" href="<?php echo esc_url($featured_img_url) ?>" title="coocking">
                        <img src="<?php echo esc_url($featured_img_url) ?>" alt="coocking"/>
							<div class="image-hover-overlay">
								<i class="fa fa-search-plus"></i>
							</div>
						</a>
                    <?php endif; ?>
						<div class="post-date-fixed tilt-left">
							<time datetime="2014-11-24"><?php echo the_date(); ?></time>
						</div>
					</div>
				</header>
				<!-- END Post Header -->
				
				<!-- START Post Main Content -->
				<div class="post-content">
				
					<p><?php the_content(); ?></p>
					
				</div>
				<!-- END Post Main Content -->
			</article>
			<!-- END Single Post -->
		</div>
	</main>
	<!-- END Main Content -->	
</div>