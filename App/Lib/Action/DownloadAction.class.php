<?php
/**
 * 
 * 下载
 *
 * @package      	YIGECMS_CORP
 *
 * @license         http://www.YIGECMS.cn/license.txt
 * @version        	$Id: ProductAction.class.php v2.0 2010-01-01 06:59:03 
 */

class DownloadAction extends GlobalAction
{
    public $dao;
    function _initialize()
    {
        parent::_initialize();
        $this->dao = M('Download');
        $data['downloadCategory'] = getCategory($this->globalCategory, 14,0);
        $this->assign('moduleTitle', '下载中心');
        $this->assign($data);
    }
    
    /**
     * 列表
     *
     */
    public function index()
    {
        $category = intval($_GET['category']);
        $category && $condition['category_id'] = array('eq', $category);
        $condition['a.status'] = array('eq', 0);
        $this->assign('category', $category);
        parent::getJoinList($condition, 'a.id DESC', 15, C('DB_PREFIX').'download a', C('DB_PREFIX').'category b on a.category_id=b.id','a.*, b.title as categoryName');
    }
    
    /**
     * 内容
     *
     */
    public function detail(){
       parent::_checkID();
        $commentCount = M('Comment')->where("title_id={$this->id} and module='Download'")->count();
        $this->assign('commentCount', $commentCount);
        parent::getJoinDetail(array('a.id='.$titleId, "id={$this->id}"), 'view_count', C('DB_PREFIX').'download a', C('DB_PREFIX').'category b on a.category_id=b.id','a.*, b.title as categoryName');
    }
}