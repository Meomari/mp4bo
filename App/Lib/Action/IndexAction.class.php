<?php
/**
 * 
 * 首页
 *
 * @package      	YIGECMS_CORP
 *
 * @license         http://www.YIGECMS.cn/license.txt
 * @version        	$Id: IndexAction.class.php v2.0 2010-01-01 06:59:03 
 */

class IndexAction extends GlobalAction {
    /**
     * 系统首页
     *
     */
	  public $dao;
      function _initialize(){
           parent::_initialize();
      }
	 
	 
	     public function index(){
         $this->dao=M('Article');
		 
         //$condition="id = 838";//where 子句
		 parent::getList($condition);
	
         }	
	
		
		//处理静态问题
		
		function htmllogin(){
			
          if($this->userID!=''){   	  
				  echo 'document.write("<a href='.U('User/index').'>'.$this->cuname.'</a> <a href='.U('User/logout').'>退出登陆</a>")';
                exit();
                }
			  else{ 
				  echo 'document.write("<a href='.U('User/index',array('jumpUri'=>$_GET['jump'])).'>登陆</a> | <a href='.U('User/reg').'>注册</a>")';
 exit();
				  
				  }
			
			}
}