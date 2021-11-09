<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after
 *
 * @package WordPress
 * @subpackage Coocking
 * @since Cooking 1.0
 */
?>

<!-- START Site Footer -->
<footer id="site-footer">

	<!-- START Widget Area -->
	<div class="widget-area grid-container">
	
		<!-- START Widget Column 01 -->
		<div class="widget-column widget-column-01 grid-33 tablet-grid-33 mobile-grid-100">
			<?php
			$footer_contact_info = get_field('contact_information','option');
			
			$footer_contact_title = $footer_contact_info['footer_contact_title'];
			$footer_contact_text = $footer_contact_info['footer_contact_text'];
			$footer_contact_number = $footer_contact_info['footer_contact_mobile_no'];
			$footer_contact_email = $footer_contact_info['footer_contact_email'];
			$footer_contact_address = $footer_contact_info['footer_contact_address'];
			?>
			<!-- Contact Details Widget -->
			<aside class="widget widget-hungry-contact-details">
				<h3 class="widget-title"><?php echo $footer_contact_title ? $footer_contact_title : '';?></h3>
				<div class="contact-details">
					<p><?php echo $footer_contact_text ? $footer_contact_text : ''; ?></p>
					<div class="contact-phone">
						<i class="fa fa-phone-square"></i>
						<a class="phone-number-link" href="tel:<?php echo $footer_contact_number ? $footer_contact_number : '';?>"> <?php echo $footer_contact_number ? $footer_contact_number : '';?> </a>
					</div>
					<div class="contact-email">
						<i class="fa fa-envelope-square"></i>
						<a class="email-link" href="mailto:<?php echo $footer_contact_email ? $footer_contact_email : ''; ?>"> <?php echo $footer_contact_email ? $footer_contact_email : ''; ?> </a>
					</div>
					<div class="contact-address">
						<i class="fa fa-caret-square-o-down"></i>
						<address>
							<?php echo $footer_contact_address ? $footer_contact_address : '' ; ?>
						</address>
					</div>
				</div>
			</aside>

		</div>
		<!-- END Widget Column 01 -->
		
		<!-- START Widget Column 02 -->
		<div class="widget-column widget-column-02 grid-33 tablet-grid-33 mobile-grid-100">
			<?php 
			$footer_widget_two = get_field('f_new_on_the_menu','option');

			$footer_two_w_title = $footer_widget_two['footer_widget_two_title_'];
			$footer_the_menu_info = $footer_widget_two['footer_the_menu_description'];
			?>
			<!-- Latest Recipes Widget -->
			<aside class="widget widget-hungry-latest-recipes">
				<h3 class="widget-title"><?php echo $footer_two_w_title ? $footer_two_w_title : ''; ?></h3>
				<ul class="latest-recipes">
					<?php 
					if($footer_the_menu_info){
						foreach( $footer_the_menu_info as $footer_the_menu ){
							$fnf_photo = $footer_the_menu['footer_new_food_image'];
							$fnf_title = $footer_the_menu['footer_new_food_title'];
							$fnf_small_title = $footer_the_menu['footer_new_food_small_title'];
							$fnf_link = $footer_the_menu['footer_new_food_link'];
					?>
					<li class="recipe">
						<a href="template-recipe-single.html"><img class="recipe-thumbnail" src="<?php echo $fnf_photo ? $fnf_photo['url'] : '' ;?>" alt="<?php echo $fnf_photo ? $fnf_photo['title'] : '' ;?>" /></a>
						<h6 class="recipe-title"><a href="<?php echo $fnf_link ? $fnf_link : ''; ?>"><?php echo $fnf_title ? $fnf_title : ''; ?></a></h6>
						<p class="recipe-description"><?php echo $fnf_small_title ? $fnf_small_title : ''; ?></p>
					</li>
				<?php 
				}
			}
		?>
				</ul>
			</aside>
			
		</div>
		<!-- END Widget Column 02 -->
		
		<!-- START Widget Column 03 -->
		<div class="widget-column widget-column-03 grid-33 tablet-grid-33 mobile-grid-100">
			<?php 
			$footer_opeining_t = get_field('footer_opening_time' , 'option');
			$footer_open_title = $footer_opeining_t['footer_opening_time_title'];
			$open_day_time = $footer_opeining_t['opening_day_&_time'];
			?>
			<!-- Opening Times Widget -->
			<aside class="widget widget-hungry-opening-times">
				<h3 class="widget-title"><?php echo $footer_open_title ? $footer_open_title : ''; ?></h3>
				<ul class="opening-times">
				<?php
				if($open_day_time){
					foreach($open_day_time as $open_day_times ){
						$opeing_day = $open_day_times['opening_day'];
						$opeing_time = $open_day_times['opening_time'];
					
			    ?>
					<li><?php echo $opeing_day ? $opeing_day : ''; ?><span><?php echo $opeing_time ? $opeing_time : ''; ?></span></li>
				<?php
				}
			}
				?>
				</ul>
			</aside>
			
		</div>
		<!-- END Widget Column 03 -->
	
	</div>
	<!-- END Widget Area -->

	<!-- START Bottom Area -->
	<div id="bottom-footer">
		<div class="grid-container">
		
			<!-- Footer Logo -->
			<?php 
			$site_logo = get_field('site_header_logo' , 'option');
			if($site_logo){ 
			?>
			<div class="footer-logo grid-50 tablet-grid-100 mobile-grid-100">
				<a href="#"><img class="footer-logo-image" src="<?php echo $site_logo['url'];?>" alt="<?php echo $site_logo['title'];?>" /></a>
			</div>
		    <?php
			}
			?>
			<!-- Footer Text -->
			<?php $footer_cpy_text = get_field('footer_copyright_content' , 'option');?>
			<div class="footer-text grid-50 tablet-grid-100 mobile-grid-100">
				<p>Designed by <a href="https://www.infobanglaltd.com" target="_blank">Info Bangla Limited.</a><?php echo $footer_cpy_text ? $footer_cpy_text : ''; ?> </p>
			</div>
		
		</div>
	</div>
	<!-- END Bottom Area -->
	
</footer>
<!-- END Site Footer -->

<!-- "Back-to-Top" Button -->
<div id="btt">
	<i class="fa fa-angle-up"></i>
</div>

<!-- START Javascripts -->

<script src="<?php echo site_url(); ?>/assets/js/main.min.js"></script>
<script src="<?php echo site_url(); ?>/assets/js/rocket-loader.min.js"></script>

<!-- END Javascripts -->
	
</body>

</html>

