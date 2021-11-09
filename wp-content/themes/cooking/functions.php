<?php
/**
 * Cooking functions and definitions
 *
 * Set up the theme and provides some helper functions, which are used in the
 * theme as custom template tags. Others are attached to action and filter
 * hooks in WordPress to change core functionality.
 * 
 * {@link https://codex.wordpress.org/Plugin_API}
 *
 * @package WordPress
 * @subpackage Coocking
 * @since Coocking 1.0
 */


function cg_setup() {
	// Add default posts and comments RSS feed links to head.
	add_theme_support( 'automatic-feed-links' );

	/*
	 * Let WordPress manage the document title.
	 * By adding theme support, we declare that this theme does not use a
	 * hard-coded <title> tag in the document head, and expect WordPress to
	 * provide it for us.
	 */
	add_theme_support( 'title-tag' );

	/*
	 * Enable support for Post Thumbnails on posts and pages.
	 *
	 * @link https://developer.wordpress.org/themes/functionality/featured-images-post-thumbnails/
	 */
	add_theme_support( 'post-thumbnails' );

	// This theme uses wp_nav_menu() in two locations.
	register_nav_menus( array(
		'header_menu'    => __( 'Header Menu', 'cg' ),
		'footer_menu' => __( 'Footer Menu', 'cg' ),
	) );
 
	/*
	 * Switch default core markup for search form, comment form, and comments
	 * to output valid HTML5.
	 */
	add_theme_support( 'html5', array(
		'comment-form',
		'comment-list',
		'gallery',
		'caption',
	) );


	/*
	 * Enable support for Post Formats.
	 *
	 * See: https://codex.wordpress.org/Post_Formats
	 */
	add_theme_support( 'post-formats', array(
		'aside',
		'image',
		'video',
		'quote',
		'link',
		'gallery',
		'audio',
	) );

	// Add theme support for Custom Logo.
	add_theme_support( 'custom-logo', array(
		'width'       => 250,
		'height'      => 250,
		'flex-width'  => true,
	) );

	// Add theme support for selective refresh for widgets.
	add_theme_support( 'customize-selective-refresh-widgets' );

	/*
	 * This theme styles the visual editor to resemble the theme style,
	 * specifically font, colors, and column width.
 	 */
	//add_editor_style( array( 'assets/css/editor-style.css', cg_fonts_url() ) );

	// Define and register starter content to showcase the theme on new sites.
	$starter_content = array(
		'widgets' => array(
			// Place three core-defined widgets in the sidebar area.
			'sidebar-1' => array(
				'text_business_info',
				'search',
				'text_about',
			),

			// Add the core-defined business info widget to the footer 1 area.
			'sidebar-2' => array(
				'text_business_info',
			),

			// Put two core-defined widgets in the footer 2 area.
			'sidebar-3' => array(
				'text_about',
				'search',
			),
		),

		// Specify the core-defined pages to create and add custom thumbnails to some of them.
		'posts' => array(
			'home',
			'about' => array(
				'thumbnail' => '{{image-sandwich}}',
			),
			'contact' => array(
				'thumbnail' => '{{image-espresso}}',
			),
			'blog' => array(
				'thumbnail' => '{{image-coffee}}',
			),
			'homepage-section' => array(
				'thumbnail' => '{{image-espresso}}',
			),
		),
	);

    function add_menu_parent_class( $items ) {
        $parents = array();
        foreach ( $items as $item ) {
            if ( $item->menu_item_parent && $item->menu_item_parent > 0 ) {
                $parents[] = $item->menu_item_parent;
            }
        }
        foreach ( $items as $item ) {
            if ( in_array( $item->ID, $parents ) ) {
                $item->classes[] = "dropdown";
            }
        }

        return $items;
    }
    add_filter( 'wp_nav_menu_objects', 'add_menu_parent_class' );

    function special_nav_class($classes, $item){
        if( in_array('current-menu-item', $classes) ){
            $classes[] = 'current';
        }
        return $classes;
    }
    add_filter('nav_menu_css_class' , 'special_nav_class' , 10 , 2);

    /**
	 * Filters kcel bd array of starter content.
	 *
	 * @since kcel bd 1.1
	 *
	 * @param array $starter_content Array of starter content.
	 */
	$starter_content = apply_filters( 'cg_starter_content', $starter_content );

	add_theme_support( 'starter-content', $starter_content );
}
add_action( 'after_setup_theme', 'cg_setup' );



/**
 * Register widget area.
 *
 * @link https://developer.wordpress.org/themes/functionality/sidebars/#registering-a-sidebar
 */
function cg_widgets_init() {
	register_sidebar( array(
		'name'          => __( 'Footer Certification', 'cg' ),
		'id'            => 'sidebar-1',
		'description'   => __( 'Add widgets here to appear in your sidebar on Home posts and archive pages.', 'cg' ),
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h2 class="widget-title">',
		'after_title'   => '</h2>',
	) );

	register_sidebar( array(
		'name'          => __( 'Right Sidebar', 'cg' ),
		'id'            => 'sidebar-2',
		'description'   => __( 'Add widgets here to appear in your right sidebar.', 'cg' ),
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h2 class="widget-title">',
		'after_title'   => '</h2>',
	) );

	register_sidebar( array(
		'name'          => __( 'Left Sidebar', 'cg' ),
		'id'            => 'sidebar-3',
		'description'   => __( 'Add widgets here to appear in your Left Sidebar.', 'cg' ),
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h2 class="widget-title">',
		'after_title'   => '</h2>',
	) );
}
add_action( 'widgets_init', 'cg_widgets_init' );


/**
 * Replaces "[...]" (appended to automatically generated excerpts) with ... and
 * a 'Continue reading' link.
 *
 * @since kcel bd 1.0
 *
 * @param string $link Link to single post/page.
 * @return string 'Continue reading' link prepended with an ellipsis.
 */
function cg_excerpt_more( $link ) {
	if ( is_admin() ) {
		return $link;
	}

	$link = sprintf( '<p class="link-more"><a href="%1$s" class="more-link">%2$s</a></p>',
		esc_url( get_permalink( get_the_ID() ) ),
		/* translators: %s: Name of current post */
		sprintf( __( 'Continue reading<span class="screen-reader-text"> "%s"</span>', 'cg' ), get_the_title( get_the_ID() ) )
	);
	return ' &hellip; ' . $link;
}
add_filter( 'excerpt_more', 'cg_excerpt_more' );


/**
 * Handles JavaScript detection.
 *
 * Adds a `js` class to the root `<html>` element when JavaScript is detected.
 *
 * @since kcel bd 1.0
 */
function cg_javascript_detection() {
	echo "<script>(function(html){html.className = html.className.replace(/\bno-js\b/,'js')})(document.documentElement);</script>\n";
}
add_action( 'wp_head', 'cg_javascript_detection', 0 );


/**
 * Add a pingback url auto-discovery header for singularly identifiable articles.
 */
function cg_pingback_header() {
	if ( is_singular() && pings_open() ) {
		printf( '<link rel="pingback" href="%s">' . "\n", get_bloginfo( 'pingback_url' ) );
	}
}
add_action( 'wp_head', 'cg_pingback_header' );


/**
 * Display custom color CSS.
 */
function cg_colors_css_wrap() {
	if ( 'custom' !== get_theme_mod( 'colorscheme' ) && ! is_customize_preview() ) {
		return;
	}

	require_once( get_parent_theme_file_path( '/inc/color-patterns.php' ) );
	$hue = absint( get_theme_mod( 'colorscheme_hue', 250 ) );
?>
	<style type="text/css" id="custom-theme-colors" <?php if ( is_customize_preview() ) { echo 'data-hue="' . $hue . '"'; } ?>>
		<?php echo cg_custom_colors_css(); ?>
	</style>
<?php }
add_action( 'wp_head', 'cg_colors_css_wrap' );



/**
 * Use front-page.php when Front page displays is set to a static page.
 *
 * @since kcel bd 1.0
 *
 * @param string $template front-page.php.
 *
 * @return string The template to be used: blank if is_home() is true (defaults to index.php), else $template.
 */
function cg_front_page_template( $template ) {
	return is_home() ? '' : $template;
}
add_filter( 'frontpage_template',  'cg_front_page_template' );

/**
 * Modifies tag cloud widget arguments to display all tags in the same font size
 * and use list format for better accessibility.
 *
 * @since kcel bd 1.4
 *
 * @param array $args Arguments for tag cloud widget.
 * @return array The filtered arguments for tag cloud widget.
 */
function cg_widget_tag_cloud_args( $args ) {
	$args['largest']  = 1;
	$args['smallest'] = 1;
	$args['unit']     = 'em';
	$args['format']   = 'list';

	return $args;
}
add_filter( 'widget_tag_cloud_args', 'cg_widget_tag_cloud_args' );


/****** Include Plugin *******/
//include_once 'includes/plugins/acf/acf.php';
//include_once 'includes/plugins/advanced-custom-fields-pro/acf.php';



    // Check function exists.
    if( function_exists('acf_add_options_sub_page') ) {

        // Add parent.
        $parent = acf_add_options_page(array(
            'page_title'  => __('Theme Settings'),
            'menu_title'  => __('Theme Settings'),
            'redirect'    => false,
        ));

        // Add sub page.
        $child = acf_add_options_sub_page(array(
            'page_title'  => __('Website Main Header'),
            'menu_title'  => __('Website Main Header'),
            'parent_slug' => $parent['menu_slug'],
        ));

        $child = acf_add_options_sub_page(array(
            'page_title'  => __('Website Main Footer'),
            'menu_title'  => __('Website Main Footer'),
            'parent_slug' => $parent['menu_slug'],
        ));

        $child = acf_add_options_sub_page(array(
            'page_title'  => __('About Us'),
            'menu_title'  => __('About Us'),
            'parent_slug' => $parent['menu_slug'],
        ));

        $child = acf_add_options_sub_page(array(
            'page_title'  => __('What Our Customer Say'),
            'menu_title'  => __('What Our Customer Say'),
            'parent_slug' => $parent['menu_slug'],
        ));

        $child = acf_add_options_sub_page(array(
            'page_title'  => __('I COOK WITH WINE'),
            'menu_title'  => __('I COOK WITH WINE'),
            'parent_slug' => $parent['menu_slug'],
        ));

        $child = acf_add_options_sub_page(array(
            'page_title'  => __('Our Staff'),
            'menu_title'  => __('Our Staff'),
            'parent_slug' => $parent['menu_slug'],
        ));

        $child = acf_add_options_sub_page(array(
            'page_title'  => __('Photo Gallery'),
            'menu_title'  => __('Photo Gallery'),
            'parent_slug' => $parent['menu_slug'],
        ));

        $child = acf_add_options_sub_page(array(
            'page_title'  => __('Testy Menu Dynamic'),
            'menu_title'  => __('Testy Menu Dynamic'),
            'parent_slug' => $parent['menu_slug'],
        ));


    }

function paginate() {
    global $wp_query, $wp_rewrite;
    $wp_query->query_vars['paged'] > 1 ? $current = $wp_query->query_vars['paged'] : $current = 1;
    $pagination = array(
        'base' => @add_query_arg('page','%#%'),
        'format' => '',
        'total' => $wp_query->max_num_pages,
        'current' => $current,
        'show_all' => true,
        'type' => 'plain'
    );
    if ( $wp_rewrite->using_permalinks() ) $pagination['base'] = user_trailingslashit( trailingslashit( remove_query_arg( 's', get_pagenum_link( 1 ) ) ) . 'page/%#%/', 'paged' );
    if ( !empty($wp_query->query_vars['s']) ) $pagination['add_args'] = array( 's' => get_query_var( 's' ) );
    echo paginate_links( $pagination );
}




function is_custom_post_type( $post = NULL ){
    $all_custom_post_types = get_post_types( array ( '_builtin' => FALSE ) );

    // there are no custom post types
    if ( empty ( $all_custom_post_types ) )
        return FALSE;

    $custom_types      = array_keys( $all_custom_post_types );
    $current_post_type = get_post_type( $post );

    // could not detect current type
    if ( ! $current_post_type )
        return FALSE;

    return in_array( $current_post_type, $custom_types );
}



//sitemap xml code
/* function to create sitemap.xml file in root directory of site  */
add_action("publish_post", "cg_create_sitemap");
add_action("publish_page", "cg_create_sitemap");
add_action( "save_post", "cg_create_sitemap" );
function cg_create_sitemap() {
	//get ll post type
	$output = 'objects'; // names or objects
	$post_types = get_post_types( $args, $output );
	$items = array();
	foreach($post_types as $post_type) {
	 $items[] = $post_type->name;
	}
	
	// remove post type which post type don't use
	$to_delete = array('attachment', 'revision', 'nav_menu_item', 'custom_css', 'customize_changeset', 'oembed_cache', 'user_request', 'acf-field-group', 'acf-field', 'wpcf7_contact_form');
	$all_post_type = array_diff($items, $to_delete);

  if ( str_replace( '-', '', get_option( 'gmt_offset' ) ) < 10 ) { 
      $tempo = '-0' . str_replace( '-', '', get_option( 'gmt_offset' ) ); 
  } else { 
      $tempo = get_option( 'gmt_offset' ); 
  }
  if( strlen( $tempo ) == 3 ) { $tempo = $tempo . ':00'; }
  $postsForSitemap = get_posts( array(
      'numberposts' => -1,
      'orderby'     => 'modified',
      'post_type'   => $all_post_type,
      'order'       => 'DESC'
  ) );
  $sitemap .= '<?xml version="1.0" encoding="UTF-8"?>' . '<?xml-stylesheet type="text/xsl" href="' . 
      esc_url( home_url( '/' ) ) . 'sitemap.xsl"?>';
  $sitemap .= "\n" . '<urlset xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sitemaps.org/schemas/sitemap/0.9 http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd" xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">' . "\n";
  $sitemap .= "\t" . '<url>' . "\n" .
      "\t\t" . '<loc>' . esc_url( home_url( '/' ) ) . '</loc>' .
      "\n\t\t" . '<lastmod>' . date( "Y-m-d\TH:i:s", current_time( 'timestamp', 0 ) ) . $tempo . '</lastmod>' .
      "\n\t\t" . '<changefreq>daily</changefreq>' .
      "\n\t\t" . '<priority>1.0</priority>' .
      "\n\t" . '</url>' . "\n";

      
  // foreach( $postsForSitemap as $post ) {
  //     setup_postdata( $post);
  //     $postdate = explode( " ", $post->post_modified );
  //     $sitemap .= "\t" . '<url>' . "\n" .
  //         "\t\t" . '<loc>' . get_permalink( $post->ID ) . '</loc>' .
  //         "\n\t\t" . '<lastmod>' . $postdate[0] . 'T' . $postdate[1] . $tempo . '</lastmod>' .
  //         "\n\t\t" . '<changefreq>Weekly</changefreq>' .
  //         "\n\t\t" . '<priority>0.5</priority>' .
  //         "\n\t" . '</url>' . "\n";
  // }

    foreach( $all_post_type as $post_type ) {
    	$post_type_data = get_post_type_object( $post_type );
  		$post_type_slug = $post_type_data->rewrite['slug'];	
  		 $url = site_url().'/'.$post_type_slug;
  		 if($post_type_slug){
  		 	$sitemap .= "\t" . '<url>' . "\n" .
        "\t\t" . '<loc>' . $url . '</loc>' .
        "\n\t\t" . '<lastmod>' . date( "Y-m-d\TH:i:s", current_time( 'timestamp', 0 ) ) . $tempo . '</lastmod>' .
        "\n\t\t" . '<changefreq>Weekly</changefreq>' .
        "\n\t\t" . '<priority>0.5</priority>' .
        "\n\t" . '</url>' . "\n";
      }
      
      $terms2 = get_terms($post_type.'_tax'); 
	    foreach($terms2 as $term) {
	    	if($term->taxonomy){
		  	  $url2 = site_url().'/'.$post_type_slug.'/'.$term->slug;
		  	  $sitemap .= "\t" . '<url>' . "\n" .
	          "\t\t" . '<loc>' . $url2 . '</loc>' .
	          "\n\t\t" . '<lastmod>' . date( "Y-m-d\TH:i:s", current_time( 'timestamp', 0 ) ) . $tempo . '</lastmod>' .
	          "\n\t\t" . '<changefreq>Weekly</changefreq>' .
	          "\n\t\t" . '<priority>0.5</priority>' .
	          "\n\t" . '</url>' . "\n";
	    	}
	    }
    }


  foreach( $postsForSitemap as $post ) {
  		setup_postdata( $post);
  		$postdate = explode( " ", $post->post_modified );
   			if ($post->post_type=='page') {
	    			$sitemap .= "\t" . '<url>' . "\n" .
	          "\t\t" . '<loc>' . get_permalink( $post->ID ) . '</loc>' .
	          "\n\t\t" . '<lastmod>' . $postdate[0] . 'T' . $postdate[1] . $tempo . '</lastmod>' .
	          "\n\t\t" . '<changefreq>Weekly</changefreq>' .
	          "\n\t\t" . '<priority>0.5</priority>' .
	          "\n\t" . '</url>' . "\n";
	    	}else{
	    		$post_type_data = get_post_type_object( $post->post_type );
    			$post_type_slug = $post_type_data->rewrite['slug'];			
	    		$terms = get_terms($post->post_type.'_tax'); 
			    foreach($terms as $term) {
			    	if($post->post_type.'_tax' == $term->taxonomy){
				  	  $url = site_url().'/'.$post_type_slug.'/'.$term->slug.'/'.$post->post_name;
				  	  $sitemap .= "\t" . '<url>' . "\n" .
			          "\t\t" . '<loc>' . $url . '</loc>' .
			          "\n\t\t" . '<lastmod>' . $postdate[0] . 'T' . $postdate[1] . $tempo . '</lastmod>' .
			          "\n\t\t" . '<changefreq>Weekly</changefreq>' .
			          "\n\t\t" . '<priority>0.5</priority>' .
			          "\n\t" . '</url>' . "\n";
			    	}
			    }
	    	}
  	}

  
  $sitemap .= '</urlset>';
  $fp = fopen( ABSPATH . "sitemap.xml", 'w' );
  fwrite( $fp, $sitemap );
  fclose( $fp );
}
