<?php 
/**
 * 
 * Feedback(留言)
 *
 * @package      	YIGECMS
 *
 * @license         http://www.YIGECMS.cn/license.txt
 * @version        	$Id: ArticleModel.class.php v2.0 2010-01-01 06:59:03 

 */
 
import("AdvModel");
class UserModel extends AdvModel
{
    protected $_validate = array(
        array('realname', 'require', '姓名', 0, '', Model:: MODEL_BOTH),
        array('email', 'require', '邮箱必须填写', 0, '', Model:: MODEL_BOTH),
      
    );

    protected $_auto = array(
        array('title', 'dHtml', Model:: MODEL_BOTH, 'function'),
        array('email', 'dHtml', Model:: MODEL_BOTH, 'function'),
        array('web_url', 'cvHttp', Model:: MODEL_BOTH, 'function'),
        array('ip', 'get_client_ip', Model:: MODEL_BOTH, 'function'),
        array('create_time', 'time', Model:: MODEL_BOTH, 'function'),
        array('update_time', 'time', Model:: MODEL_UPDATE, 'function'),
    );
}
?>