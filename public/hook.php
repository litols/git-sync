<?php
/* Git Sync Handler
*/

$LOG_FILE = dirname(__FILE__).'/hook.log';

$SECRET_KEY = '1234567890';
$SYNC_SCRIPT_PATH = '/full/path/to/sync.sh';

if ( isset($_GET['key']) && $_GET['key'] === $SECRET_KEY ) {
    exec('nohup bash '.$SYNC_SCRIPT_PATH.' > /dev/null &');
    echo
    file_put_contents($LOG_FILE, date("[Y-m-d H:i:s]")." success!: ".$_SERVER['REMOTE_ADDR']."\n", FILE_APPEND|LOCK_EX);
} else {
    file_put_contents($LOG_FILE, date("[Y-m-d H:i:s]")." invalid access: ".$_SERVER['REMOTE_ADDR']."\n", FILE_APPEND|LOCK_EX);
}