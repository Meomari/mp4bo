<?php

/**

 * 

 * 评论

 *

 * @package      	YIGECMS_CORP

 *

 * @license         http://www.YIGECMS.cn/license.txt

 * @version        	$Id: ArticleAction.class.php v1.0 2012-01-01 06:59:03 

 */



class CommentAction extends GlobalAction

{

    public $dao;

    function _initialize()

    {

        parent::_initialize();

        $this->dao = M('Comment');

        $this->assign('moduleTitle', '评论');

        $this->assign($data);

    }

    

    /**

     * 列表

     *

     */

    public function getList()

    {

        $titleId = intval($_GET['item']);

        $module = dadds(trim($_GET['mod']));

        $condition="title_id={$titleId} and module='{$module}' and status=0";
		
		
		
		$pageCount = $this->dao->where($condition)->count();
        $listRows = empty($listRows) ? 15 : $listRows;
        $orderd = empty($orders) ? 'id DESC' : $orders;
        $paged = new page($pageCount, $listRows);
        $plList = $this->dao->Where($condition)->Order($orderd)->Limit($paged->firstRow.','.$paged->listRows)->select();
		$pageContentBar = $paged->show();
		
		foreach($plList as $k=>$v){
			
			$plList[$k]['username']=getuname($plList[$k]['uid'],0);
			$plList[$k]['face']=getuname($plList[$k]['uid'],1);
			}
		
		
        $this->assign('dataContentList', $plList);
        $this->assign('pageContentBar', $pageContentBar);
        $this->display();
		
		

    }



    /**

     * 提交评论

     *

     */

    public function doInsert()

    {


        $data['content'] = trim($_POST['content']);

        $data['module'] = trim($_POST['module']);

        $data['title_id'] = intval($_POST['tid']);
		$data['uid']=$this->userID;

        $data['ip'] = get_client_ip();

        $data['create_time'] = time();
       // $data['status']=0;

        if(empty($data['content'])){

            echo 'emptyInfo';

            exit();

		}

        if($daoCreate = $this->dao->create($data))

        {

            $this->dao->status = $this->sysConfig['comment_verify'] == 1 ? 1 : 0 ;

            $daoAdd = $this->dao->add();

            if(false !== $daoAdd)

            {

                echo 'success';

                exit();

            }else

            {

                echo '评论录入错误';

                exit();

            }

        }else

        {

            echo $this->dao->getError();

            exit();

        }

    }

}