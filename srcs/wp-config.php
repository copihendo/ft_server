<?php
// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

define( 'DB_USER', 'mguadalu' );

define( 'DB_PASSWORD', 'mguadalu' );

define( 'DB_HOST', 'localhost' );

define( 'DB_CHARSET', 'utf8' );

define( 'DB_COLLATE', '' );
define('AUTH_KEY',         'ZkrHi&G6D)kq]s%NkcKbxON}d&@k-;sV9Dbqb+vG [(snnR+, 0x?{aq>dq+qQvk');
define('SECURE_AUTH_KEY',  '@LKdgrYeD[`ql8UXa0f$-qE7wNd:+HX{-y.`o$0 Q#AwT71pGdd1S5!+C}f:nVHZ');
define('LOGGED_IN_KEY',    '|t$|xYsSO!a;2w0<1&`c+n7.ojK^S|^I6+J~,OXMPa4!:x08;Ip;|=|E.-(bn-/[');
define('NONCE_KEY',        '4`#M|E&NHJ<}g,/E%c:Cz3xnXe;BM)9+D[bGv#9mLsTj):p]qf^+^gPCz|D}YI5I');
define('AUTH_SALT',        'S+X*PLd+Ti~>/C2&G$~|J`s}& .^];+*3ohIVMI K6SL!~wYEiF~Np)z cD<0(@s');
define('SECURE_AUTH_SALT', '+w;;x.zXH2.qx:-1+mPi(F@ V[!<7xr#8L9NNqo,Oqc|_X!>EE>KQpa @RjY&N<X');
define('LOGGED_IN_SALT',   'd]*)fl-fkxVGCHG $QJ0q&R|`gvbwX7z[I~9l*qT-g@(O7noBsU(jnn(VsJgG[eN');
define('NONCE_SALT',       'Ux{]f!3i)5}*-MSjPi}{Yq>R))429H(sDENDBO=hq)-|v<80e7`^K&kw-kfm&IC-');

$table_prefix = 'wp_';

define( 'WP_DEBUG', false );

if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

require_once( ABSPATH . 'wp-settings.php' );