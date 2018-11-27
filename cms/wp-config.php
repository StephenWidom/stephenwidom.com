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
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'stephenwidom');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', 'root');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'Sok- T5*DF.3`:~~{}m_WT=wmlC3bv*Zo`V`:dNOXOp>ZQBzVFYPhLspJRQFGo9_');
define('SECURE_AUTH_KEY',  'qV]Kw;usKlo~||Hq[s^uG(0?KC0=)V^J&G}18DN>N:Vd>RRja8u#1$Gy5zE?Q[IE');
define('LOGGED_IN_KEY',    'H~`m5 qiH<Bw[z3]%K/MgYS#O5%7jHpFNqnF_eUaa43bDs2>Frp4<x6N7YU1x6wD');
define('NONCE_KEY',        '#W7,4|p)1+csFKVJ_,-MO7XV9qV$Lkq,gN U&.^eVY0L(G;Sg=]t;r`c)IYcL&eK');
define('AUTH_SALT',        'YBIRm&{^]v?B]hoW |~c}c!fz`x#wq!BaLO.[|S9Vr0RN,Re0K%Kn):3X<4CAk%o');
define('SECURE_AUTH_SALT', 'TOO$rX)GC8e+AP~$=P/{GZlV&bA=b7NQHM(lS7$x&,kRY+0T/L{.$0}%gU)-.SJ8');
define('LOGGED_IN_SALT',   'N8I06snqgAH_-&|[/<u5V/YgnpSW[]5glg)SKgKuBf_%ePQ{W1-%eKesh^mp61To');
define('NONCE_SALT',       'sHE.j.7LLm&4rW}+D1~)C?LFidE,F#>|q]@qu%-`/39w7 K(t}%~JtI=?%gAd`e_');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'sw_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
