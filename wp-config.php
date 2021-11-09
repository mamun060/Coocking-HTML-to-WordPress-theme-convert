<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'devinfo_cooking' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'rV?935!:pMv >_b0)g%R`<)}Y8|P/sn-9:fD|Ir<sJZ/2!QbZOQB?<Z60{+=/%ar' );
define( 'SECURE_AUTH_KEY',  'mtPyD agdoHZX,~)V,?}pu?wQC-|yrF4j*$(RL/;@3(;BFzL]6iy,6owtFnD)GH-' );
define( 'LOGGED_IN_KEY',    '=tpnF]Qf<^&Z|P={#}*Tr5O#VZRImzY$`u]v|N-PJ5qm8#Fl-/_f7=J`kY/^k~19' );
define( 'NONCE_KEY',        '8OI( +]q.EwO(~9nLHB6;kz.lUSaXV~*4!TPN;3QnP`xfxgprI`26j|Y6-&5QyOf' );
define( 'AUTH_SALT',        '<pi%58 @L@{:{D^lhN} dS*]7QRy(x<hMW/o0m8n;8lr7~FZR1a:j<*,yBOrtk&S' );
define( 'SECURE_AUTH_SALT', '3ezH1>&e<6op@o+Prf.b/X*6L[sd.qmP^|xq;k;gjoZNk-k+{$*D<b?eNzic!{j[' );
define( 'LOGGED_IN_SALT',   'w^l9P~; DsyRlY(SH:?jZfJ9v`z_P0o~48fn!8?R=IK+cXX( So{vKfG!>56+[KL' );
define( 'NONCE_SALT',       'xCS&[_x_X[j%B6$crt3qrA)3SFvGP0Cg0lT<`-}O e%E.{68#M5F^SeBpdzTEU+S' );

/**#@-*/
define('UPLOADS', 'assets/files');
/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_c';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
