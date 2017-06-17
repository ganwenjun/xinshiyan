<?php
namespace Home\Widget;
use Think\Controller;
class WgWidget extends Controller {

    public function nav(){
        $nav = M('ArticleCate')->where(array('is_home'=>1,'status'=>1))->order('ordid desc,id ')->select();
		for($i=0;$i<count($nav);$i++){
			if($nav[$i]['type']==1){
		$cate = M('Article')->where(array('cate_id'=>$nav[$i]['id'],'status'=>1))->order('ordid desc,id ')->select();		
			}
			else{
		$cate = M('ArticleCate')->where(array('pid'=>$nav[$i]['id'],'status'=>1))->order('ordid desc,id ')->select();
			}
		$nav[$i]['sub']=$cate;	
		}
//		print_r($nav);
		$id = I('id',0,'intval');
        $this->assign('nav',$nav);
		$this->assign('id',$id);
        $this->display('Widget:nav');
    }

   public function footer(){
      $flink = D('Flink')->where(array('cate_id'=>1,'status'=>1))->order('ordid desc,id')->select();
//	  print_r($flink);
        $this->assign('flink',$flink);
        $this->display('Widget:footer');
    }

}