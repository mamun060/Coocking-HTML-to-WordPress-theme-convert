<?php
/**
 * Template Name: Front Page
 *
 * @package WordPress
 * @subpackage Coocking
 * @since Coocking 1.0
 */
?>

<?php get_template_part('custom-template-parts/header-meta-link', 'none'); ?>
<?php get_template_part('custom-template-parts/header-main', 'none'); ?>
<?php //get_template_part( 'custom-template-parts/header-sub-menu', 'none' ); ?>
<?php //get_template_part( 'custom-template-parts/content-sidebar', 'none' ); ?>

<!-- START Main Content -->
<main class="site-content" role="main">
	
	<!-- START Section - About Us -->
	<section id="hungry-about-us" class="section-container">

		<?php
		$about_section_title = get_field('about_section_title','option');

		$about_left_s_photo = get_field('about_left_small_image','option');
		$about_left_b_photo = get_field('about_left_big_image','option');

		$about_small_title = get_field('about_us_small_title','option');
		$about_us_description = get_field('about_us_description','option');

		$about_learn_m_button_text = get_field('about_learn_more_button_text','option');
		$about_learn_m_button_link = get_field('about_learn_more_button_link','option');

		$about_see_m_button_text = get_field('about_see_menu_button_text','option');
		$about_see_m_button_link = get_field('about_see_menu_button_link','option');
		?>

		<!-- START Section Heading -->
		<div class="wow fadeInDown" data-wow-duration="2s" data-wow-offset="250">
			<header class="section-heading">
				<h2 class="section-heading-title"><?php echo $about_section_title ? $about_section_title : ''; ?></h2>
			</header>
		</div>
		<!-- END Section Heading -->
		
		<div class="grid-container">
		
			<!-- START Section Images -->
			<div class="grid-50 tablet-grid-100 mobile-grid-100">
					<div class="about-images img_part_rotate">
						<img class="about-main" src="" alt="">
						<img class="about-inset" src="<?php echo $about_left_b_photo ? $about_left_b_photo['url'] : ''; ?>" alt="<?php echo $about_left_b_photo['title']; ?>" />
					</div>
			</div>
			<!-- END Section Images -->
			
			<!-- START Section Content -->
			<div class="grid-50 tablet-prefix-10 tablet-grid-80 tablet-suffix-10 mobile-grid-100 tablet-center mobile-center">
				<div class="wow fadeInRight" data-wow-duration="2s" data-wow-offset="250">
					<h4 class="header-divider"><?php echo $about_learn_m_button_text ? $about_learn_m_button_text : ''; ?></h4>
					<p><?php echo $about_us_description ? $about_us_description : ''; ?></p>
					<a class="hungry-button" href="<?php echo $about_learn_m_button_link ? $about_learn_m_button_link : '#'; ?>"><?php echo $about_learn_m_button_text ? $about_learn_m_button_text : ''; ?></a>
					<a class="hungry-button dark" href="<?php echo $about_see_m_button_link ? $about_see_m_button_link : '#'; ?>"><?php echo $about_see_m_button_text ? $about_see_m_button_text : ''; ?></a>
				</div>
			</div>
			<!-- END Section Content -->
			
		</div>
		
	</section>
	<!-- END Section - About Us -->
	
 <!-- START Section - Slogan 02 -->
		<section id="hungry-slogan-02" class="section-container parallax">
			<div class="grid-container">
			<?php 
			$call_to_action_title = get_field('call_to_action_heading' , 'option');
			?>

			<div class="grid-100 tablet-grid-100 mobile-grid-100 no-margin">
				<div class="wow zoomIn" data-wow-duration="2s" data-wow-offset="250">
					<div class="hungry-slogan">
						<h2 class="hungry-slogan-text"><?php echo $call_to_action_title ? $call_to_action_title : ''; ?></h2>
					</div>
				</div>
			</div>
		
			</div>
		</section>
	
	<!-- END Section - Slogan 02 -->
	

	<!-- Testy Menu section start -->
	<?php
	$tm_heading = get_field('testy_menu_section_heading','option');
	$tm_title = get_field('testy_menu_section_title','option');
	
	$tmt_details = get_field('testy_menu_item_groups','option');

	$party_text = $tmt_details['party_name_text'];
	$party_icon = $tmt_details['party_icon'];

	$lunch_text = $tmt_details['lunch_text'];
	$lunch_icon = $tmt_details['lunch_icon'];
	
	$dinner_text = $tmt_details['dinner_text'];
	$dinner_icon = $tmt_details['dinner_icon'];

	$coffee_text = $tmt_details['coffee_text'];
	$coffee_icon = $tmt_details['coffee_icon'];

	$breakfast_text = $tmt_details['breakfast_text'];
	$breakfast_icon = $tmt_details['breakfast_icon'];
	
	?>
	<section class="menu_area pb-5 custom-tb">
         <div class="food_menu_topper">
            <div class="text-center">
               <h2 class="food_menu_title"><?php echo $tm_heading ? $tm_heading : '';?></h2>
               <h4 class="food_menu_title2"> <?php echo $tm_title ? $tm_title: ''; ?> </h4>
            </div>
            <div class="container">
               <div class="menu-tab-nav position-relative mt-5">
                  <ul class="nav nav-pills" id="pills-tab" role="tablist">
                     <li class="nav-item" role="presentation">
                        <a class="nav-link active" id="pills-home-tab1" data-toggle="pill" href="#pills-5" onclick="if (!window.__cfRLUnblockHandlers) return false; showfood(5)" data-cf-modified-2c0cfca1f11d605c86343bf3-="">
                           <img src="<?php echo $party_icon ? $party_icon['url'] : ''; ?>" alt="<?php echo $party_icon['title']; ?>">
                           <h6><?php echo $party_text ? $party_text : ''; ?></h6>
                        </a>
                     </li>
                     <li class="nav-item" role="presentation">
                        <a class="nav-link " id="pills-home-tab2" data-toggle="pill" href="#pills-2" onclick="if (!window.__cfRLUnblockHandlers) return false; showfood(2)" data-cf-modified-2c0cfca1f11d605c86343bf3-="">
                           <img src="<?php echo $lunch_icon ? $lunch_icon['url'] : ''; ?>" alt="<?php echo $lunch_icon['title']; ?>">
                           <h6><?php echo $lunch_text ? $lunch_text : ''; ?></h6>
                        </a>
                     </li>
                     <li class="nav-item" role="presentation">
                        <a class="nav-link " id="pills-home-tab3" data-toggle="pill" href="#pills-3" onclick="if (!window.__cfRLUnblockHandlers) return false; showfood(3)" data-cf-modified-2c0cfca1f11d605c86343bf3-="">
                           <img src="<?php echo $dinner_icon ? $dinner_icon['url'] : ''; ?>" alt="">
                           <h6><?php echo $dinner_text ? $dinner_text : ''; ?></h6>
                        </a>
                     </li>
                     <li class="nav-item" role="presentation">
                        <a class="nav-link " id="pills-home-tab4" data-toggle="pill" href="#pills-4" onclick="if (!window.__cfRLUnblockHandlers) return false; showfood(4)" data-cf-modified-2c0cfca1f11d605c86343bf3-="">
                           <img src="<?php echo $coffee_icon ? $coffee_icon['url'] : ''; ?>" alt="">
                           <h6><?php echo $coffee_text ? $coffee_text : ''; ?></h6>
                        </a>
                     </li>
                     <li class="nav-item" role="presentation">
                        <a class="nav-link" id="pills-home-tab5" data-toggle="pill" href="#pills-1" onclick="if (!window.__cfRLUnblockHandlers) return false; showfood(1)" data-cf-modified-2c0cfca1f11d605c86343bf3-="">
                           <img src="<?php echo $breakfast_icon ? $breakfast_icon['url'] :''; ?>" alt="<?php echo $breakfast_icon['icon']; ?>">
                           <h6><?php echo $breakfast_text ? $breakfast_text : ''; ?></h6>
                        </a>
                     </li>
                  </ul>
               </div>
            </div>
         </div>
         <div class="container">
            <div class="tab-content menu-tab-content" id="pills-tabContent">
               <div class="tab-pane fade show active" id="pills-5" role="tabpanel"></div>
               <div class="tab-pane fade show active" id="pills-2" role="tabpanel"></div>
               <div class="tab-pane fade show active" id="pills-3" role="tabpanel"></div>
               <div class="tab-pane fade show active" id="pills-4" role="tabpanel"></div>
               <div class="tab-pane fade show active" id="pills-1" role="tabpanel"></div>
            </div>
         </div>
      </section>
	<!-- Testy Menu section end -->


	<!-- START Section - Menu -->
	<section id="hungry-menu" class="section-container">
	
		<!-- START Section Heading -->
		<div class="wow fadeInDown" data-wow-duration="2s" data-wow-offset="250">
			<header class="section-heading">
				<h2 class="section-heading-title">Our Menu</h2>
				<div class="section-heading-subtitle-container tilt-left">
					<h4 class="section-heading-subtitle">Feeling Peckish?</h4>
				</div>
			</header>
		</div>
		<!-- END Section Heading -->
	
		<div class="grid-container">
		
			<div class="grid-45 suffix-5 tablet-prefix-5 tablet-grid-90 tablet-suffix-5 mobile-grid-100">
			
				<div class="hungry-menu wow zoomIn" data-wow-duration="2s" data-wow-offset="250">
					<h2 class="hungry-menu-title header-divider">Starters &amp; Sides</h2>
					
					<ol class="hungry-menu-list">
					
						<!-- START Menu Item -->
						<li class="hungry-menu-item">
							<a href="<?php echo site_url(); ?>/assets/images/demo/menu-main/menu-item-large-01.jpg" 
							   class="lightbox hungry-thumbnail-link"
							   title="Aenean commodo ligula eget dolor aenean massa. Cum sociis natoque penatibus et magnis dis.">
								<img src="<?php echo site_url(); ?>/assets/images/demo/menu-thumbnails/menu-item-thumbnail-01.jpg" class="hungry-menu-item-thumbnail" alt="Garlic Bread Thumbnail" />
								<div class="hungry-thumbnail-overlay">
									<i class="fa fa-search-plus"></i>
								</div>
							</a>
							<div class="hungry-menu-item-container">
								<a href="template-recipe-single.html" class="hungry-menu-item-header">
									<h3 class="hungry-menu-item-title">Garlic Bread</h3>
									<h4 class="hungry-menu-item-price">$6.95</h4>
								</a>
								<div class="hungry-menu-item-excerpt">
									<p>Aenean commodo ligula eget dolor aenean massa.
									Cum sociis natoque penatibus et magnis dis.</p>
								</div>
							</div>
						</li>
						<!-- END Menu Item -->
					
						<!-- START Menu Item -->
						<li class="hungry-menu-item special">
							<a href="<?php echo site_url(); ?>/assets/images/demo/menu-main/menu-item-large-02.jpg" 
							   class="lightbox hungry-thumbnail-link"
							   title="Aenean commodo ligula eget dolor aenean massa. Cum sociis natoque penatibus et magnis dis.">
								<img src="<?php echo site_url(); ?>/assets/images/demo/menu-thumbnails/menu-item-thumbnail-02.jpg" class="hungry-menu-item-thumbnail" alt="Mixed Salad Thumbnail" />
								<div class="hungry-thumbnail-overlay">
									<i class="fa fa-search-plus"></i>
								</div>
							</a>
							<div class="hungry-menu-item-container">
								<a href="template-recipe-single.html" class="hungry-menu-item-header">
									<h3 class="hungry-menu-item-title">Mixed Salad</h3>
									<h4 class="hungry-menu-item-price special-tooltip" title="Special Offer!">$4.50</h4>
								</a>
								<div class="hungry-menu-item-excerpt">
									<p>Aenean commodo ligula eget dolor aenean massa.
									Cum sociis natoque penatibus et magnis dis.</p>
								</div>
							</div>
						</li>
						<!-- END Menu Item -->
						
						<!-- START Menu Item -->
						<li class="hungry-menu-item">
							<a href="<?php echo site_url(); ?>/assets/images/demo/menu-main/menu-item-large-03.jpg" 
							   class="lightbox hungry-thumbnail-link"
							   title="Aenean commodo ligula eget dolor aenean massa. Cum sociis natoque penatibus et magnis dis.">
								<img src="<?php echo site_url(); ?>/assets/images/demo/menu-thumbnails/menu-item-thumbnail-03.jpg" class="hungry-menu-item-thumbnail" alt="BBQ Chicken Wings Thumbnail" />
								<div class="hungry-thumbnail-overlay">
									<i class="fa fa-search-plus"></i>
								</div>
							</a>
							<div class="hungry-menu-item-container">
								<a href="template-recipe-single.html" class="hungry-menu-item-header">
									<h3 class="hungry-menu-item-title">BBQ Chicken Wings</h3>
									<h4 class="hungry-menu-item-price">$8.65</h4>
								</a>
								<div class="hungry-menu-item-excerpt">
									<p>Aenean commodo ligula eget dolor aenean massa.
									Cum sociis natoque penatibus et magnis dis.</p>
								</div>
							</div>
						</li>
						<!-- END Menu Item -->
					
					</ol>
					
				</div>
				
				<div class="hungry-menu wow zoomIn" data-wow-duration="2s" data-wow-offset="250">
					<h2 class="hungry-menu-title header-divider">Deserts</h2>
					
					<ol class="hungry-menu-list">
					
						<!-- START Menu Item -->
						<li class="hungry-menu-item">
							<a href="<?php echo site_url(); ?>/assets/images/demo/menu-main/menu-item-large-07.jpg" 
							   class="lightbox hungry-thumbnail-link"
							   title="Aenean commodo ligula eget dolor aenean massa. Cum sociis natoque penatibus et magnis dis.">
								<img src="<?php echo site_url(); ?>/assets/images/demo/menu-thumbnails/menu-item-thumbnail-07.jpg" class="hungry-menu-item-thumbnail" alt="Chocolate Fudgecake Thumbnail" />
								<div class="hungry-thumbnail-overlay">
									<i class="fa fa-search-plus"></i>
								</div>
							</a>
							<div class="hungry-menu-item-container">
								<a href="template-recipe-single.html" class="hungry-menu-item-header">
									<h3 class="hungry-menu-item-title">Chocolate Fudgecake</h3>
									<h4 class="hungry-menu-item-price">$8.50</h4>
								</a>
								<div class="hungry-menu-item-excerpt">
									<p>Aenean commodo ligula eget dolor aenean massa.
									Cum sociis natoque penatibus et magnis dis. <span class="menu-info"><i class="fa fa-exclamation-circle"></i>Contains traces of nuts</span></p>
								</div>
							</div>
						</li>
						<!-- END Menu Item -->
					
						<!-- START Menu Item -->
						<li class="hungry-menu-item">
							<a href="<?php echo site_url(); ?>/assets/images/demo/menu-main/menu-item-large-08.jpg" 
							   class="lightbox hungry-thumbnail-link"
							   title="Aenean commodo ligula eget dolor aenean massa. Cum sociis natoque penatibus et magnis dis.">
								<img src="<?php echo site_url(); ?>/assets/images/demo/menu-thumbnails/menu-item-thumbnail-08.jpg" class="hungry-menu-item-thumbnail" alt="Cappucino Thumbnail" />
								<div class="hungry-thumbnail-overlay">
									<i class="fa fa-search-plus"></i>
								</div>
							</a>
							<div class="hungry-menu-item-container">
								<a href="template-recipe-single.html" class="hungry-menu-item-header">
									<h3 class="hungry-menu-item-title">Cappucino</h3>
									<h4 class="hungry-menu-item-price">$4.25</h4>
								</a>
								<div class="hungry-menu-item-excerpt">
									<p>Aenean commodo ligula eget dolor aenean massa.
									Cum sociis natoque penatibus et magnis dis.</p>
								</div>
							</div>
						</li>
						<!-- END Menu Item -->
					
					</ol>
					
				</div>
			
			</div>
		
			<div class="prefix-5 grid-45 tablet-prefix-5 tablet-grid-90 tablet-suffix-5 mobile-grid-100">
			
				<div class="hungry-menu wow zoomIn" data-wow-duration="2s" data-wow-offset="250">
					<h2 class="hungry-menu-title header-divider">Main Dishes</h2>
					
					<ol class="hungry-menu-list">
					
						<!-- START Menu Item -->
						<li class="hungry-menu-item">
							<a href="<?php echo site_url(); ?>/assets/images/demo/menu-main/menu-item-large-04.jpg" 
							   class="lightbox hungry-thumbnail-link"
							   title="Aenean commodo ligula eget dolor aenean massa. Cum sociis natoque penatibus et magnis dis.">
								<img src="<?php echo site_url(); ?>/assets/images/demo/menu-thumbnails/menu-item-thumbnail-04.jpg" class="hungry-menu-item-thumbnail" alt="Meat Feast Pizza Thumbnail" />
								<div class="hungry-thumbnail-overlay">
									<i class="fa fa-search-plus"></i>
								</div>
							</a>
							<div class="hungry-menu-item-container">
								<a href="template-recipe-single.html" class="hungry-menu-item-header">
									<h3 class="hungry-menu-item-title">Meat Feast Pizza</h3>
									<h4 class="hungry-menu-item-price">$17.95</h4>
								</a>
								<div class="hungry-menu-item-excerpt">
									<p>Aenean commodo ligula eget dolor aenean massa.
									Cum sociis natoque penatibus et magnis dis.</p>
								</div>
							</div>
						</li>
						<!-- END Menu Item -->
					
						<!-- START Menu Item -->
						<li class="hungry-menu-item">
							<a href="<?php echo site_url(); ?>/assets/images/demo/menu-main/menu-item-large-05.jpg" 
							   class="lightbox hungry-thumbnail-link"
							   title="Aenean commodo ligula eget dolor aenean massa. Cum sociis natoque penatibus et magnis dis.">
								<img src="<?php echo site_url(); ?>/assets/images/demo/menu-thumbnails/menu-item-thumbnail-05.jpg" class="hungry-menu-item-thumbnail" alt="Chicken Tikka Masala Thumbnail" />
								<div class="hungry-thumbnail-overlay">
									<i class="fa fa-search-plus"></i>
								</div>
							</a>
							<div class="hungry-menu-item-container">
								<a href="template-recipe-single.html" class="hungry-menu-item-header">
									<h3 class="hungry-menu-item-title">Chicken Tikka Masala</h3>
									<h4 class="hungry-menu-item-price">$16.50</h4>
								</a>
								<div class="hungry-menu-item-excerpt">
									<p>Aenean commodo ligula eget dolor aenean massa.
									Cum sociis natoque penatibus et magnis dis.</p>
								</div>
							</div>
						</li>
						<!-- END Menu Item -->
						
						<!-- START Menu Item -->
						<li class="hungry-menu-item special">
							<a href="<?php echo site_url(); ?>/assets/images/demo/menu-main/menu-item-large-06.jpg" 
							   class="lightbox hungry-thumbnail-link"
							   title="Aenean commodo ligula eget dolor aenean massa. Cum sociis natoque penatibus et magnis dis.">
								<img src="<?php echo site_url(); ?>/assets/images/demo/menu-thumbnails/menu-item-thumbnail-06.jpg" class="hungry-menu-item-thumbnail" alt="Spicy Meatballs Thumbnail" />
								<div class="hungry-thumbnail-overlay">
									<i class="fa fa-search-plus"></i>
								</div>
							</a>
							<div class="hungry-menu-item-container">
								<a href="template-recipe-single.html" class="hungry-menu-item-header">
									<h3 class="hungry-menu-item-title">Spicy Meatballs</h3>
									<h4 class="hungry-menu-item-price special-tooltip" title="Chef Recommends!">$14.85</h4>
								</a>
								<div class="hungry-menu-item-excerpt">
									<p>Aenean commodo ligula eget dolor aenean massa.
									Cum sociis natoque penatibus et magnis dis.</p>
								</div>
							</div>
						</li>
						<!-- END Menu Item -->
					
					</ol>
					
				</div>
				
				<div class="hungry-menu wow zoomIn" data-wow-duration="2s" data-wow-offset="250">
					<h2 class="hungry-menu-title header-divider">Drinks</h2>
					
					<ol class="hungry-menu-list">
					
						<!-- START Menu Item -->
						<li class="hungry-menu-item">
							<a href="<?php echo site_url(); ?>/assets/images/demo/menu-main/menu-item-large-09.jpg" 
							   class="lightbox hungry-thumbnail-link"
							   title="Aenean commodo ligula eget dolor aenean massa. Cum sociis natoque penatibus et magnis dis.">
								<img src="<?php echo site_url(); ?>/assets/images/demo/menu-thumbnails/menu-item-thumbnail-09.jpg" class="hungry-menu-item-thumbnail" alt="Premium Beer Thumbnail" />
								<div class="hungry-thumbnail-overlay">
									<i class="fa fa-search-plus"></i>
								</div>
							</a>
							<div class="hungry-menu-item-container">
								<a href="template-recipe-single.html" class="hungry-menu-item-header">
									<h3 class="hungry-menu-item-title">Premium Beer</h3>
									<h4 class="hungry-menu-item-price">$5.80</h4>
								</a>
								<div class="hungry-menu-item-excerpt">
									<p>Aenean commodo ligula eget dolor aenean massa.
									Cum sociis natoque penatibus et magnis dis.</p>
								</div>
							</div>
						</li>
						<!-- END Menu Item -->
					
						<!-- START Menu Item -->
						<li class="hungry-menu-item">
							<a href="<?php echo site_url(); ?>/assets/images/demo/menu-main/menu-item-large-10.jpg" 
							   class="lightbox hungry-thumbnail-link"
							   title="Aenean commodo ligula eget dolor aenean massa. Cum sociis natoque penatibus et magnis dis.">
								<img src="<?php echo site_url(); ?>/assets/images/demo/menu-thumbnails/menu-item-thumbnail-10.jpg" class="hungry-menu-item-thumbnail" alt="Sparkling White Wine Thumbnail" />
								<div class="hungry-thumbnail-overlay">
									<i class="fa fa-search-plus"></i>
								</div>
							</a>
							<div class="hungry-menu-item-container">
								<a href="template-recipe-single.html" class="hungry-menu-item-header">
									<h3 class="hungry-menu-item-title">Sparkling White Wine</h3>
									<h4 class="hungry-menu-item-price">$6.25</h4>
								</a>
								<div class="hungry-menu-item-excerpt">
									<p>Aenean commodo ligula eget dolor aenean massa.
									Cum sociis natoque penatibus et magnis dis.</p>
								</div>
							</div>
						</li>
						<!-- END Menu Item -->
						
					</ol>
					
				</div>
			
			</div>
		
		</div>
	
	</section>
	<!-- END Section - Menu -->
	
	<!-- START Section - Slogan 01 -->
	<section id="hungry-slogan-01" class="section-container parallax">
		<div class="grid-container">
		
		<?php 
		$cook_wine_title = get_field('cook_wine_title' , 'option');
		?>
			<div class="grid-100 tablet-grid-100 mobile-grid-100 no-margin">
				<div class="wow zoomIn" data-wow-duration="2s" data-wow-offset="250">
					<div class="hungry-slogan">
						<h2 class="hungry-slogan-text"><?php echo $cook_wine_title ? $cook_wine_title : ''; ?></h2>
					</div>
				</div>
			</div>
		
		</div>
	</section>
	<!-- END Section - Slogan 01 -->
	
	<!-- START Section - Staff -->
	<section id="hungry-staff" class="section-container">
	
		<!-- START Section Heading -->
		<?php
		$our_staff_title = get_field('our_staff_title','option');
		$our_staff_info = get_field('our_staff_information','option');
		?>
		<div class="wow fadeInDown" data-wow-duration="2s" data-wow-offset="250">
			<header class="section-heading">
				<h2 class="section-heading-title"><?php echo $our_staff_title ? $our_staff_title : ''; ?></h2>
			</header>
		</div>
		<!-- END Section Heading -->
	
		<div class="grid-container">
	
			<!-- START Staff Member -->
			<?php 
			if($our_staff_info){
				foreach($our_staff_info as $our_staff_details){
					$staff_photo = $our_staff_details['staff_image'];
					$staff_name = $our_staff_details['staff_name'];
					$staff_title = $our_staff_details['staff_title'];
					$staff_text = $our_staff_details['staff_description'];
					$staff_fb_link = $our_staff_details['staff_fb_link'];
					$staff_twitter_link = $our_staff_details['staff_twitter_link'];
					$staff_instagram_link = $our_staff_details['staff_instagram_link'];
				
			
			?>
			<div class="grid-33 tablet-prefix-20 tablet-grid-60 tablet-suffix-20 mobile-grid-100">
				<div class="wow fadeInLeft" data-wow-duration="2s" data-wow-offset="250">
					<div class="hungry-staff-member">
						<header>
							<img src="<?php echo $staff_photo ? $staff_photo['url'] : ''; ?>" class="hungry-staff-member-thumbnail" alt="<?php echo $staff_photo['title']; ?>" />
							<h3 class="hungry-staff-member-title"><?php echo $staff_name ? $staff_name : ''; ?></h3>
							<h4 class="hungry-staff-member-role"><?php echo $staff_title ? $staff_title : ''; ?></h4>
						</header>
						<div class="hungry-staff-member-content">
							<p><?php echo $staff_text ? $staff_text : ''; ?></p>
						</div>
						<footer>
							<ul class="hungry-staff-member-social-icons">
								<?php if($staff_fb_link){  ?>
								<li><a href="<?php echo $staff_fb_link; ?>" class="team-tooltip" title="Like John!"><i class="fa fa-facebook"></i></a></li>
								<?php } ?>
								<?php if($staff_twitter_link){  ?>		
								<li><a href="<?php echo $staff_twitter_link; ?>" class="team-tooltip" title="Tweet John!"><i class="fa fa-twitter"></i></a></li>
								<?php } ?>			
					 			<?php if($staff_instagram_link){  ?>			
								<li><a href="<?php echo $staff_instagram_link; ?>" class="team-tooltip" title="See John!"><i class="fa fa-instagram"></i></a></li>
								<?php } ?>	
							</ul>
						</footer>
					</div>
				</div>
			</div>

			<?php
			}
		}
			?>
			<!-- END Staff Member -->
		
	
		</div>
	</section>
	<!-- END Section - Staff -->
	
		<!-- START Section - Testimonials -->
		<section id="hungry-testimonials" class="section-container parallax">
	
	<div class="grid-container">
	
		<!-- START Section Heading -->
		<?php
		$wocs_section_heading = get_field('what_customer_say_section_title' ,'option');
		$wocs_details = get_field('custer_say_details' ,'option');
		?>
		<div class="wow fadeIn" data-wow-duration="2s" data-wow-offset="250">
			<h1 class="section-heading-alt-title"><?php echo $wocs_section_heading ? $wocs_section_heading : ''; ?><span>&hellip;</span></h1>
		</div>
		<!-- END Section Heading -->
	
	
		<!-- Testimonial 01 -->
		<?php 
		if($wocs_details){
			foreach($wocs_details as $wocs_detail){
				$wocs_client_photo = $wocs_detail['clients_image'];
				$wocs_client_text = $wocs_detail['clients_review_text'];
				$wocs_client_address = $wocs_detail['clients_address'];
				$wocs_client_link = $wocs_detail['clients_address_link'];
			
		?>
		<div class="wow fadeInLeft" data-wow-duration="2s" data-wow-offset="250">
			<div class="prefix-10 grid-35 suffix-5 tablet-grid-50 mobile-grid-100">
				<div class="hungry-testimonial">
					<blockquote>&quot;<?php echo $wocs_client_text ? $wocs_client_text : ''; ?>&quot;</blockquote>
					<img src="<?php echo $wocs_client_photo ? $wocs_client_photo['url'] : ''; ?>" alt="<?php echo $wocs_client_photo['title']; ?>" />
					<cite><a href="<?php echo $wocs_client_link ? $wocs_client_link : '#'; ?>"><?php echo $wocs_client_address ? $wocs_client_address : ''; ?></a></cite>
				</div>
			</div>
		</div>
		<?php
		}
	}
		?>
	
	</div>

</section>
<!-- END Section - Testimonials -->

	<!-- START Section - Gallery -->
	<section id="hungry-gallery" class="section-container">
	
		<!-- START Section Heading -->
		<?php
		$gallery_title = get_field('photo_gallery_title','option');
		$gallery_photos = get_field('photo_gallery_image' , 'option');
		?>
		<div class="wow fadeInDown" data-wow-duration="2s" data-wow-offset="250">
			<header class="section-heading">
				<h2 class="section-heading-title"><?php echo $gallery_title ? $gallery_title : ''; ?></h2>
			</header>
		</div>
		<!-- END Section Heading -->
	
		<!-- START Main Gallery -->
		<div class="grid-container">
			<div class="grid-100 tablet-grid-100 mobile-grid-100">
				<div class="hungry-gallery">
				
					<?php
					if($gallery_photos){
						foreach($gallery_photos as $gallery_photo ){
							$main_gallery_image = $gallery_photo['gallery_image'];
						
					?>
					<div class="hungry-gallery-item wow fadeIn" data-wow-duration="2s" data-wow-offset="250">
						<a class="image-hover lightbox-gallery" href="<?php echo $main_gallery_image ? $main_gallery_image['url'] : ''; ?>">
							<img src="<?php echo $main_gallery_image ? $main_gallery_image['url'] : ''; ?>" alt="<?php echo $main_gallery_image['title']; ?>" />
							<div class="image-hover-overlay">
								<i class="fa fa-search-plus"></i>
							</div>
						</a>
					</div>

					<?php
					}
				}
					?>
					
				</div>
			</div>
		</div>
		<!-- END Main Gallery -->
		
	</section>
	<!-- END Section - Gallery -->
	
	<!-- START Section - Blog -->
	<section id="hungry-blog" class="section-container parallax">
	
		<!-- START Section Heading -->
		<div class="wow fadeInDown" data-wow-duration="2s" data-wow-offset="250">
			<header class="section-heading">
				<h2 class="section-heading-title">Our Blog</h2>
				<div class="section-heading-subtitle-container tilt-left">
					<h4 class="section-heading-subtitle">Stay up to Date!</h4>
				</div>
			</header>
		</div>
		<!-- END Section Heading -->
			
		<div class="grid-container">
			<div class="hungry-blog-container">
				
		<!-- START Blog Post Block -->
		<?php
		$args = array(
			'post_type'     => 'coocking_blog',
			'orderby'       => 'date',
			'order'         => 'DSEC',
			'post_status'   => 'publish',
			'posts_per_page'=> 4,
			'paged'         => get_query_var('paged') ? get_query_var('paged') : 1
		);
		$the_query = new WP_Query($args);
		?>

	<div class="wow fadeInLeft" data-wow-duration="2s" data-wow-offset="250">
		<?php
            if ($the_query->have_posts()):
            while ($the_query->have_posts()) : $the_query->the_post();
        ?>
		<div class="grid-50 tablet-grid-50 mobile-grid-100">
						<div class="hungry-blog-block">
							<div class="hungry-blog-arrow"></div>
							<?php
                    $featured_img_url = get_the_post_thumbnail_url(get_the_ID(), 'full');
                if ($featured_img_url): ?>
							<div class="hungry-blog-featured-image">
								<a class="image-hover" href="template-blog-single-right-sidebar.html">
									<img src="<?php echo esc_url($featured_img_url) ?>" alt="Featured Image Thumbnail" />
									<div class="image-hover-overlay">
										<i class="fa fa-link"></i>
									</div>
								</a>
							</div>
					<?php endif; ?>
							<div class="hungry-blog-meta">
								<span class="hungry-blog-date">
									<time datetime="2014-11-25"><?php echo the_date(); ?></time>
								</span>
								<h3 class="hungry-blog-title">
									<a href="<?php the_permalink(); ?>">
									   <?php
                                         $my_title = apply_filters('the_title', get_the_title());
                                      echo wp_trim_words($my_title);
                                       ?>
								    </a>
								</h3>
							</div>
						</div>
					</div>
				</div>
				<?php
                endwhile;
            endif;
            ?>
				
				<!-- END Blog Post Block -->
			</div>
			
			<!-- "View Blog" Button -->
			<div class="wow fadeInUp" data-wow-duration="2s" data-wow-offset="250">
				<div class="grid-100 tablet-grid-100 mobile-grid-100 aligncenter">
					<a class="hungry-button dark aligncenter" href="template-blog-overview.html">View the Blog</a>
				</div>
			</div>
		
		</div>
		
	</section>
	<!-- END Section - Blog -->
	
	<!-- START Section - Reservations -->
	<section id="hungry-reservations" class="section-container">
	
		<!-- START Section Heading -->
		<div class="wow fadeInDown" data-wow-duration="2s" data-wow-offset="250">
			<header class="section-heading">
				<h2 class="section-heading-title">Reservations</h2>
				<div class="section-heading-subtitle-container tilt-left">
					<h4 class="section-heading-subtitle">Book Your Meal Today!</h4>
				</div>
			</header>
		</div>
		<!-- END Section Heading -->
	
		<div class="grid-container">
			<div class="prefix-10 grid-80 suffix-10 tablet-grid-100 mobile-grid-100">
			
				 <!-- Contact Form -->
				 <div class="contact-form">
				 <div id="hungry-reservation-form">
                <?php echo do_shortcode('[gravityform id="1" title="false" description="false" ajax="true" tabindex="49" field_values="check=First Choice,Second Choice"]'); ?>
                </div>
                </div>
				
				<!-- Form outcome contents. Generated through Ajax -->
				<div id="hungry-reservation-form-outcome"></div>
			
			</div>
		</div>
		
	</section>
	<!-- END Section - Reservations -->
	
</main>
<!-- END Main Content -->

<?php get_template_part('custom-template-parts/footer-main', 'none'); ?>