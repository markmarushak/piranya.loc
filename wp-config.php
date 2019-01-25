<?php
/**
 * Основные параметры WordPress.
 *
 * Скрипт для создания wp-config.php использует этот файл в процессе
 * установки. Необязательно использовать веб-интерфейс, можно
 * скопировать файл в "wp-config.php" и заполнить значения вручную.
 *
 * Этот файл содержит следующие параметры:
 *
 * * Настройки MySQL
 * * Секретные ключи
 * * Префикс таблиц базы данных
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** Параметры MySQL: Эту информацию можно получить у вашего хостинг-провайдера ** //
/** Имя базы данных для WordPress */
define('WP_CACHE', true);
define( 'WPCACHEHOME', 'E:\OSPanel\domains\pirany.loc\wp-content\plugins\wp-super-cache/' );
define('DB_NAME', 'pirany');

/** Имя пользователя MySQL */
define('DB_USER', 'root');

/** Пароль к базе данных MySQL */
define('DB_PASSWORD', '');

/** Имя сервера MySQL */
define('DB_HOST', 'localhost');

/** Кодировка базы данных для создания таблиц. */
define('DB_CHARSET', 'utf8mb4');

/** Схема сопоставления. Не меняйте, если не уверены. */
define('DB_COLLATE', '');

/**#@+
 * Уникальные ключи и соли для аутентификации.
 *
 * Смените значение каждой константы на уникальную фразу.
 * Можно сгенерировать их с помощью {@link https://api.wordpress.org/secret-key/1.1/salt/ сервиса ключей на WordPress.org}
 * Можно изменить их, чтобы сделать существующие файлы cookies недействительными. Пользователям потребуется авторизоваться снова.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '268vRWu92GJ-Q -8*J}M}`}6x:-n9q110Ho)XbK^LnGv=C1tcbX5h<R{Llql,dhj');
define('SECURE_AUTH_KEY',  'Jb?/e/.NI?zH$]mn(Bm4IzQVI;/C*RKoB&T+/2v<t1i@h7QMvCoNexID4oMSCOX&');
define('LOGGED_IN_KEY',    'mKwg#tzw$f53$%<8rCU%Nxofm^B(>oATTKvhmjIl6>9G49?*p]5<kc%i)i:J<x]6');
define('NONCE_KEY',        '(6/lY]*Mg}9@r@CH6A Y$N<=v%)<)OD+8Gy]]tS(;ds6$EB(o(_7_Yzm{{k7m~Wj');
define('AUTH_SALT',        ']8U>#Ao!ciN}Dt7(?IoWsuo=#/)&4;0T u E&t8pCgUCLz-c=sQm0TYu)X*s=:Jb');
define('SECURE_AUTH_SALT', ' quf5;!L.+r_/:8MrqztV0E}Bi3VD]+rqwnlk3J jQQd.m(^/d,M.J|*#n2~zI$[');
define('LOGGED_IN_SALT',   'L&!s1[awYs?CAMPVu>do@S}(_,>a!C2!aCkBrlVg> M2uPxCk2Ow{F.zJj=,PYw+');
define('NONCE_SALT',       ' cL&3*#wVIzxAW?|EzJuQ5@%1$l(I^Wl}|pcoq+`Q|dz[3*Qf@[]|4uy)N/0Dp6f');

/**#@-*/

/**
 * Префикс таблиц в базе данных WordPress.
 *
 * Можно установить несколько сайтов в одну базу данных, если использовать
 * разные префиксы. Пожалуйста, указывайте только цифры, буквы и знак подчеркивания.
 */
$table_prefix  = 'wp_';

/**
 * Для разработчиков: Режим отладки WordPress.
 *
 * Измените это значение на true, чтобы включить отображение уведомлений при разработке.
 * Разработчикам плагинов и тем настоятельно рекомендуется использовать WP_DEBUG
 * в своём рабочем окружении.
 *
 * Информацию о других отладочных константах можно найти в Кодексе.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* Это всё, дальше не редактируем. Успехов! */

/** Абсолютный путь к директории WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Инициализирует переменные WordPress и подключает файлы. */
require_once(ABSPATH . 'wp-settings.php');
