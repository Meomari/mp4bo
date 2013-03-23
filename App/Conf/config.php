<?php
if (!defined('YIGECMS')) die('not in YIGECMS');
$database = require ('./config.inc.php');
$config = array( 'HTML_CACHE_ON'=>false,
                        'HTML_CACHE_RULES'=> array(
                        'detail'            =>array('{:module}/{:action}/{item}','60'), 
                        '*'            => array('{:module}/{:action}',60), 
  
    //…更多操作的静态规则
                      ),
                   'HTML_FILE_SUFFIX'=>'.html',
				   'HTML_CACHE_TIME'=>60,
				   'HTML_PATH'=>'/Html',
				   
);
return array_merge($database, $config);