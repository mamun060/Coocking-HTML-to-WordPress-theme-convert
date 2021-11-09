<?php
/**
 * The template for displaying the header
 *
 * Displays all of the head element and everything up until the "site-content" div.
 *
 * @package WordPress
 * @subpackage coocking
 * @since coocking 1.0
 */
?>

<!DOCTYPE html>
<html <?php language_attributes(); ?> class="no-js">
<head>
    <meta charset="<?php bloginfo('charset'); ?>">
    <meta content="IE=edge" http-equiv="X-UA-Compatible">
  
    <?php 
    $site_name = get_field('site_small_title' , 'option');
    $site_author = get_field('site_author' , 'option');
    $fb_apps_link = get_field('fb_apps_id' , 'option');
    $site_contact_email = get_field('site_contact_email' , 'option');
    $site_cpy_text = get_field('site_copyright_content' , 'option');
    ?>

    <title><?php wp_title('-', true, 'right'); ?><?php echo $site_name ? $site_name : 'Coocking Restuarant'; ?></title>

    <meta id='viewport' name='viewport' content='user-scalable=no, initial-scale=1, width=device-width'/>
    <link rel="profile" href="http://gmpg.org/xfn/11">

    <?php if (is_singular() && pings_open(get_queried_object())) : ?>
        <link rel="pingback" href="<?php bloginfo('pingback_url'); ?>">
    <?php endif; ?>

    <?php
        $favicon = get_field('site_favicon_icon', 'option');
    ?>
    
    
    <link rel="icon" href="<?php echo $favicon ? $favicon['url'] : '';?>" type="image/x-icon">
   
    <meta name="resource-type" content="document"/>
    <meta http-equiv="content-type" content="text/html; charset=US-ASCII"/>
    <meta http-equiv="content-language" content="en-us"/>
    <meta name="author" content="<?php echo $site_author ? $site_author : ''; ?>"/>
    <meta property="fb:app_id" content="<?php echo $fb_apps_link ? $fb_apps_link : ''; ?>" />
    <meta name="contact" content="<?php echo $site_contact_email ? $site_contact_email : ''; ?>"/>
    <meta name="copyright" content="<?php echo $site_cpy_text ? $site_cpy_text : ''; ?>"/>

    <meta property="og:url" content="<?php echo get_permalink(); ?>">
    <meta property="og:site_name" content="<?php echo get_permalink(); ?>">
   
    <?php
    $meta_keywords = get_field('meta_keyword' , 'option');
    $meta_description = get_field('meta_description' , 'option');
    $StaticShareImgUrl = get_field('site_share_image' , 'option');
    ?>

    <meta name="description" content="<?php echo $meta_description ? $meta_description : ''; ?>"/>
    <meta name="keywords" content="<?php echo $meta_keywords ? $meta_keywords : ''; ?>"/>

    <meta name="image" content="<?php echo $StaticShareImgUrl['url'] ? $StaticShareImgUrl['url'] : '';?>">
    <meta property="og:url" content="<?php echo site_url();?>/">
    <meta property="og:type" content="website">
    <meta property="og:site_name" content="<?php echo $site_name ? $site_name : ''; ?>" />
    <meta property="og:title" content="<?php wp_title('-', true, 'right'); ?>KcelBD">
    <meta property="og:description" content="<?php echo $meta_description ? $meta_description : ''; ?>">
    <meta property="og:image" content="<?php echo $StaticShareImgUrl['url'] ? $StaticShareImgUrl['url'] : '';?>">
    <meta property="og:image:secure_url" content="<?php echo $StaticShareImgUrl['url'] ? $StaticShareImgUrl['url'] : '';?>" />

    <meta name="twitter:card" content="summary">
    <meta name="twitter:creator" content="@kcelbd">
    <meta name="twitter:title" content="<?php wp_title('-', true, 'right'); ?>KcelBD">

    <meta name="twitter:description" content="<?php echo $meta_description ? $meta_description : ''; ?>">
    <meta name="twitter:image" content="<?php echo $StaticShareImgUrl['url'] ? $StaticShareImgUrl['url'] : '';?>">


    <?php
    $gsv = get_field('site_google_verification', 'option');
    if ($gsv):
        ?>
        <!--Google verified-->
        <meta name="google-site-verification" content="<?php echo $gsv; ?>">
    <?php endif; ?>

    <?php
    $bsv = get_field('bing_site_verification', 'option');
    if ($bsv):
        ?>
        <!--Bing verified-->
        <meta name="msvalidate.01" content="<?php echo $bsv; ?>"/>
    <?php endif; ?>

    <!-- Chrome, Firefox OS and Opera -->
    <meta content="#3367D6" name="theme-color">

    <!-- set a web app capable website -->
    <meta content="yes" name="mobile-web-app-capable">
    <meta content="yes" name="apple-mobile-web-app-capable">
    <meta content="black" name="apple-mobile-web-app-status-bar-style">
    <meta content="coocking" name="apple-mobile-web-app-title">

    <!-- add to home -->

    <link href="<?php echo site_url(); ?>/assets/css/main.min.css" rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Ubuntu:400,700%7CDroid+Serif:400,400italic,700,700italic%7CAguafina+Script" rel="stylesheet" type="text/css">
    <!-- Responsive -->

    <?php
    $ga = get_field('google_analytics', 'option');
    if ($ga):
        ?>
        <script type="text/javascript">
            (function (i, s, o, g, r, a, m) {
                i['GoogleAnalyticsObject'] = r;
                i[r] = i[r] || function () {
                    (i[r].q = i[r].q || []).push(arguments)
                }, i[r].l = 1 * new Date();
                a = s.createElement(o),
                    m = s.getElementsByTagName(o)[0];
                a.async = 1;
                a.src = g;
                m.parentNode.insertBefore(a, m)
            })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

            ga('create', '<?php echo $ga; ?>', 'auto');
            ga('send', 'pageview');
        </script>
    <?php endif; ?>

    <?php
    $google_meta = get_field('google_meta', 'option');
    if ($google_meta):
        ?>
        <script>(function (w, d, s, l, i) {
                w[l] = w[l] || [];
                w[l].push({
                    'gtm.start':
                        new Date().getTime(), event: 'gtm.js'
                });
                var f = d.getElementsByTagName(s)[0],
                    j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : '';
                j.async = true;
                j.src =
                    'https://www.googletagmanager.com/gtm.js?id=' + i + dl;
                f.parentNode.insertBefore(j, f);
            })(window, document, 'script', 'dataLayer', '<?php echo $google_meta; ?>');</script>
    <?php endif; ?>


    <script type="text/javascript">
        if ('serviceWorker' in navigator) {
            window.addEventListener('load', function () {
                navigator.serviceWorker.register('/sw.js').then(function (registration) {
                 }, function (err) {
                });
            });
        }

    </script>
    
    <script src="<?php echo site_url(); ?>/assets/js/jquery-3.3.1.min.js"></script>

</head>

