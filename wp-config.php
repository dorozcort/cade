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
define('DB_NAME', 'wp_cade');

/** MySQL database username */
define('DB_USER', 'cade_admin');

/** MySQL database password */
define('DB_PASSWORD', 'rYf652pzb8eU3NxL');

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
define('AUTH_KEY',         '8U#`1Sp_~FQf/{/R4e26N^XDU9#3CB2FdW<MV`h;hP>N*mG}abej&-GN[+%h3qJq');
define('SECURE_AUTH_KEY',  'FHkIkN(+X  $fG%2*XR2~%KV(N9G;xL}OQzI:tRQG?UN)f0/)Ug.pn[)1pJ48Si3');
define('LOGGED_IN_KEY',    '7_@CtagA>>]Ye[g9hP@>xMx4MG5~K+L`4%fLXk*T,f@NjO(QsT 8Mk6EHRT[_/FY');
define('NONCE_KEY',        ' =}!a6^{5iyrqIXk@+;,dcw{tScgtcx-y*d4$n#_oMOF,Tf&oZgFS{N:|j4/?n{>');
define('AUTH_SALT',        'S7^1RQMZ03aIoh3!q-h>ZkAUIw@,dKd7XGw@GC-TM(9Bh|(W#P1sv75Los:&v[)f');
define('SECURE_AUTH_SALT', 'QF$w=PmcS$=,Gv[qJ +y{$X58GD,z<jS&(tpGx63VI^Z*;`K66[Uu4.P3M>oH&iN');
define('LOGGED_IN_SALT',   '1gW`p]!3Nh-Y#rZcJ4{hyZs#x/jv7d?I?QC|Kz)hEcxQa;;G7iDaUGH=-1sA[a%K');
define('NONCE_SALT',       '+a)k$8!J7TWVt,?GHS/X8iqcv56!xH?Lo)FuR0 =l<&e~76B[~AUIPV2sXf:qp?u');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

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
define('WP_DEBUG', true);

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if (!defined('ABSPATH')) {
	define('ABSPATH', dirname(__FILE__) . '/');
}

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
