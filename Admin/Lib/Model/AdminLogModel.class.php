<?php 
/**
 * 
 * AdminLog(系统日志)
 *
 * @package      	YIGECMS_Corp
 *
 * @license         http://www.YIGECMS.cn/license.txt
 * @version        	$Id: AdminLogModel.class.php v2.0 2010-01-01 06:59:03 

 */

import("AdvModel");
class AdminLogModel extends AdvModel
{
   protected $_auto = array(
		array('create_time', 'time', Model:: MODEL_BOTH, 'function'),
	);
}