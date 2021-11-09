<!-- START Site Header -->
<header id="subpage-header">
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
	
	<!-- START Subpage Intro -->
	<div class="grid-container">
		<div class="page-meta grid-100 tablet-grid-100 mobile-grid-100">
		
			<div class="wow fadeInUp" data-wow-duration="2s" data-wow-offset="250">
			
				<!-- Page Title -->
				<h1 class="page-title"><?php echo the_title(); ?></h1>
			
				<!-- START Breadcrumb Trail -->
				<div class="breadcrumb-trail-container tilt-left">
					<div class="breadcrumb-trail">
						<span class="trail-start"><a href="<?php echo site_url(); ?>">Home</a></span>
						<span><?php echo the_title(); ?></a></span>
						
					</div>
				</div>
				<!-- END Breadcrumb Trail -->
				
			</div>
			
		</div>
	</div>
	<!-- END Subpage Intro -->
	
</header>
<!-- END Site Header -->