<?php


class VdAction extends GlobalAction

{

    public $dao;

    function _initialize()

    {

        parent::_initialize();

        $this->dao = D("Vd");

        $this->assign('moduleTitle', '视频');

        $data['newsCategory'] = getCategory($this->globalCategory, 121,0);

		$catelist = $data['newsCategory'];

		foreach($catelist as $key=>$v)

		

		    { 

			if($catelist[$key]['html_url'] != '' && $this->sysConfig['jingtai'] == 1){

			$catelist[$key]['url'] = "/".$catelist[$key]['html_url'];

			}

			else

			{

			$catelist[$key]['url']=U(MODULE_NAME."/nlist/",array('category'=>$catelist[$key]['id'])); 	

			}

			 }

	

	

	    //当前位置

		   $murl="";

		

	    	if(file_exists("html/".MODULE_NAME."/index.html") && $this->sysConfig['jingtai']==1){

		       $murl="/html/".MODULE_NAME."/index.html";	

			}else{

			 $murl=	U(MODULE_NAME."/index");

		     }

		  

          $this->assign("catelist",$catelist);

		   $this->assign("cat_id",$_GET['category']);

		  $this->assign('murl',$murl);

		 

		

		

		

		

    }

    

    /**

     * 列表

     *

     */

    public function index()

	

    {    //is_html(MODULE_NAME,$this->sysConfig['jingtai']); 

        $category = intval($_GET['category']);

        $category && $condition['category_id'] = array('eq', $category);

        $condition['a.status'] = array('eq', 0);

        $this->assign('category',$category);

        parent::getJoinList($condition, 'a.id DESC', $pages, C('DB_PREFIX').'vd a', C('DB_PREFIX').'category b on a.category_id=b.id','a.*, b.title as categoryName');

    }

    

	

	 public function nlist()

	

    {  

	    $pages = 3;

        $category = intval($_GET['category']);

        $category && $condition['category_id'] = array('eq', $category);

        $condition['a.status'] = array('eq', 0);

        $this->assign('category',$category);

        parent::getJoinList($condition, 'a.id DESC', $pages, C('DB_PREFIX').'vd a', C('DB_PREFIX').'category b on a.category_id=b.id','a.*, b.title as categoryName');

    }

	

	 public function htmllist()

	

    {  

	    $pages = 3;

        $category = intval($_GET['category']);

        $category && $condition['category_id'] = array('eq', $category);

        $condition['a.status'] = array('eq', 0);

        $this->assign('category',$category);

        parent::getJoinList($condition, 'a.id DESC', $pages, C('DB_PREFIX').'vd a', C('DB_PREFIX').'category b on a.category_id=b.id','a.*, b.title as categoryName');

    }

    /**

     * 内容

     *

     */

    public function detail(){

        parent::_checkID();

        $commentCount = M('Comment')->where("title_id={$this->id} and module='vd'")->count();

        $this->assign('commentCount', $commentCount);

        parent::getJoinDetail(array("a.id={$this->id}", "id={$this->id}"), 'view_count', C('DB_PREFIX').'vd a', C('DB_PREFIX').'category b on a.category_id=b.id','a.*, b.title as categoryName');

    }

	

	

	  public function hdetail(){

       parent::_checkID();

        $commentCount = M('Comment')->where("title_id={$this->id} and module='vd'")->count();

        $this->assign('commentCount', $commentCount);

          parent::getJoinDetail(array("a.id={$this->id}", "id={$this->id}"), 'view_count', C('DB_PREFIX').'vd a', C('DB_PREFIX').'category b on a.category_id=b.id','a.*, b.title as categoryName');

    

    }

	//静态点击率

	public function did(){

		

 $id=$_GET['item'];	

 $did=$this->dao->Field('view_count')->where('id='.$id)->limit(1)->find();

 $this->dao->where('id='.$id)->setInc('view_count',1);

 echo $did['view_count'];		  

		  

		}
		
		
		
		public function dingcai(){
           $id=$_GET['id']; 
		   $dingcai=$_GET['dingcai'];
	       $mod=MODULE_NAME;
		 
		  parent::getDingcai($id,$dingcai,$mod);
		 
           
		  

		}

	

	

}