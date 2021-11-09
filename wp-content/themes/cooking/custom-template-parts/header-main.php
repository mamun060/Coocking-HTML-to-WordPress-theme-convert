<!-- START Site Header -->
<header id="single-page-header">
	<div class="site-navbar">
		<div class="grid-container">
		
			<!-- START Site Logo -->
			<?php 
			$site_logo = get_field('site_header_logo' , 'option');
			?>
			<div class="grid-20 tablet-grid-50 mobile-grid-50">
				<?php if( $site_logo ){ ?>
				<a href="http://localhost/coocking/">
					<img class="site-logo" src="<?php echo $site_logo['url']; ?>" alt="<?php echo $site_logo['title']; ?>" />
				</a>
				<?php } ?>
			</div>
			<!-- END Site Logo -->
			
			<!-- START Navigation -->
			<div class="nav-container grid-80 tablet-grid-50 mobile-grid-50">
			
				<!-- Mobile Nav Icon (Hamburger) -->
				<div class="mobile-nav">
					<i class="fa fa-bars"></i>
				</div>
			
				<nav class="main-navigation" role="navigation">
					
					<!-- Mobile Menu Header -->
					<div class="mobile-header hide-on-desktop">
						<h2>Navigation</h2>
						<div class="mobile-close">
							<i class="fa fa-times"></i>
						</div>
					</div>
				
					<!-- Main Navigation -->
					<ul class="sf-menu">
						<li><a href="http://localhost/coocking/#hungry-top">Home</a></li>
						<li><a href="#hungry-about-us">About Us</a></li>
						<li><a href="http://localhost/coocking/?page_id=138#hungry-menu">The Menu</a></li>
						<li><a href="#hungry-staff">Our Team</a></li>
						<li><a href="#hungry-gallery">The Gallery</a></li>
						<li><a href="http://localhost/coocking/?page_id=123#hungry-blog">Our Blog</a></li>
						<li><a href="#hungry-reservations">Reservations</a></li>
					</ul>
					
				</nav>
			</div>
			<!-- END Navigation -->
		
		</div>
	</div>
	
	<div class="single-page-header-content">
	
		<!-- START Slider Images -->
		<?php 
		$head_s_photo = get_field('header_slider_image' , 'option');
		?>
		<div class="cycle-slideshow"
			 data-cycle-swipe="true"
			 data-cycle-swipe-fx="fade"
			 data-cycle-fx="fade"
			 data-cycle-speed="1200"
			 data-cycle-timeout="16000">
			
			<!-- Images -->
			<?php 
			if($head_s_photo){
				foreach($head_s_photo as $slider_photo){
				$slider_photos = $slider_photo['slider_image'];
			if($slider_photos){ ?>
			<img src="<?php echo $slider_photos['url']; ?>" alt="<?php echo $slider_photos['title']; ?>" />
			<?php 
				} 
			  }
			}
			?>
			
			<!-- Prev/Next Buttons -->
			<div class="cycle-prev"><i class="fa fa-chevron-left"></i></div>
			<div class="cycle-next"><i class="fa fa-chevron-right"></i></div>
			
		</div>
		<!-- END Slider Images -->
	
		<!-- START Slider Texts -->
		<div class="single-page-header-text">
		
			<!-- Pre-slogan -->
			<?php 
			$header_slogan_text = get_field('header_slogan_text', 'option');
			?>
			<div class="tilt-left">
				<h3 class="header-text-pre-slogan"><?php echo $header_slogan_text ? $header_slogan_text : ''; ?><em>&hellip;</em></h3>
			</div>	
		
			<!-- Slogan Rotator -->
			<?php 
			$slider_text = get_field('header_slider_text' , 'option');
			?>
			<div class="tlt customtlt">
				<ul class="header-texts">
					<?php
					if($slider_text){
						foreach($slider_text as $slider_texts){
						$h_slider_text = $slider_texts['h_slider_text'];
					?>
					<li><?php echo $h_slider_text ? $h_slider_text : ''; ?></li>
					<?php
						}
						}
					?>
				</ul>
			</div>
			
			<!-- Divider -->
			<div class="header-text-divider"></div>
			
		</div>
		<!-- END Slider Texts -->
	
	</div>
	
	<!-- START Social Icons -->
	<?php 
	$header_s_link = get_field('header_social_icon', 'option'); 
	$header_fb_link = $header_s_link['header_fb_link'];
	$header_twitter_link = $header_s_link['header_twiiter_link'];
	$header_pintarest_link = $header_s_link['header_pintarest_link'];
	$header_opentable_link = $header_s_link['header_opentable_link'];
	?>
	<div class="single-page-social-icons">
		<ul class="single-page-social-icons-list">
        <?php if($header_fb_link){ ?>
			<li><a href="<?php echo $header_fb_link; ?>" class="header-social-icon-tooltip" title="Follow us on Facebook!"><i class="fa fa-facebook"></i></a></li>
		<?php } ?>
		<?php if($header_twitter_link){ ?>
			<li><a href="<?php echo $header_twitter_link; ?>" class="header-social-icon-tooltip" title="Find us in Twitter!"><i class="fa fa-twitter"></i></a></li>
		<?php } ?>	
		<?php if($header_pintarest_link){ ?>
			<li><a href="<?php echo $header_pintarest_link; ?>" class="header-social-icon-tooltip" title="Pin us on Pinterest!"><i class="fa fa-pinterest"></i></a></li>
			<?php } ?>	
		<?php if($header_opentable_link){ ?>
			<li><a href="<?php echo $header_opentable_link; ?>" class="header-social-icon-tooltip" title="We're on OpenTable!"><i class="fa fa-cutlery"></i></a></li>
		<?php } ?>
		</ul>
	</div>
	<!-- END Social Icons -->
	
</header>
<!-- END Site Header -->
