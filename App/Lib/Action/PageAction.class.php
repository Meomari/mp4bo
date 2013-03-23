<?php
/**
 * 
 * 单页
 *
 * @package      	YIGECMS_CORP
 *
 * @license         http://www.YIGECMS.cn/license.txt
 * @version        	$Id: PageAction.class.php v2.0 2010-01-01 06:59:03 

 */

class PageAction extends GlobalAction
{
    public $dao;
    function _initialize()
    {
        parent::_initialize();
        $this->dao = M('Page')->order('id desc');
		
	$p_list = $this->dao->select();
	$this->assign('p_list',$p_list);
	
    }
    
    /**
     * 详细信息
     *
     */
    public function index()
    {
		$item = trim($_GET['item']);
        parent::getDetail("link_label='{$item}'");
    }
	
	 public function about()
    {
		$item = trim($_GET['item']);
        parent::getDetail("link_label='{$item}'");
    }
}