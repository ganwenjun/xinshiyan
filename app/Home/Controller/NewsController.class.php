<?php
namespace Home\Controller;
class NewsController extends HomeController {
	public function _initialize() {
        parent::_initialize();
        $this->_cate_mod = D('ArticleCate');
        $this->_mod = D('Article');
        $this->default_cate_id = 1;
    }
    public function _empty($title){
        $this->index(0,$title);
    }
	public function technology3(){
        $this->display();
    }
	public function about(){
        $id = I('id',0,'intval');
		$art_id = I('art_id',0,'intval');
        $cate_id = empty($cate_id) ? $id:$cate_id;
		if(empty($art_id)){
			$art_id = $this->_mod->where('cate_id='.$cate_id)->order('ordid desc,id')->getField('id');
		}
        $info = $this->_mod->find($art_id);
        //当前栏目信息
        $cate = $this->_cate_mod->find($cate_id);
        //子栏目列表
            $sub_cate = $this->_mod->where(array('cate_id'=>$id))->order('ordid desc,id ')->select();
            $big_cate = $cate;
      

        $id_arr = $this->_cate_mod->get_child_ids($cate_id, true);


        $list = $this->_mod->field('id,title')->where(array('cate_id'=>$cate_id))->order('id asc')->select();
//print_r($sub_cate);
		

        $this->assign('list',$list);
        $this->assign('cate',$cate);
        $this->assign('info',$info);
        $this->assign('sub_cate',$sub_cate);
        $this->assign('$big_cate',$big_cate);
		
//      $templet = empty($cate['category_templet'])?'category_page':$cate['category_templet'];
        $this->display();
    }	

//		public function coo(){
//      $art_id = I('art_id',0,intval);
//      (!$art_id) && $this->error('参数有误');
//      $info = $this->_mod->find($art_id);
//		$this->_mod->where('id='.$info['id'])->setField('hits',$info['hits']+'1');
//      $cate_id = $info['cate_id'];
//      //当前栏目信息
//      $cate = $this->_cate_mod->find($cate_id);
//      //子栏目列表
//      if($cate['spid'] == 0){
//          $sub_cate = $this->_cate_mod->where(array('pid'=>$cate_id))->order('ordid desc,id ')->select();
//          $big_cate = $cate;
//      }else{
//          $pid = current(explode('|',$cate['spid']));
//          $sub_cate = $this->_cate_mod->where(array('pid'=>$pid))->order('ordid desc,id ')->select();
//          $big_cate = $this->_cate_mod->find($pid);
//      }
//      $id_arr = $this->_cate_mod->get_child_ids($cate_id, true);
//		$list1 = $this->_mod->where(array('cate_id'=>12,'status'=>1))->field('id,title,add_time,intro,img,url')->order('ordid desc,id desc')->select();
//		
//		 //前一篇和下一篇
//      $map['status'] = array('eq',1);
//      $map['cate_id'] = array('IN', $id_arr);
//
//      $map['id'] = array('lt',$art_id);
//      $ex = $this->_mod->field('id,title,url')->where($map)->order('id desc')->find();
//
//      $map['id'] = array('gt',$art_id);
//      $next = $this->_mod->field('id,title,url')->where($map)->order('id asc')->find();
//		
//		$this->assign('ex',$ex);
//      $this->assign('next',$next);
//		$this->assign('list1',$list1);
////print_r($info);
//      $this->assign('cate',$cate);
//      $this->assign('info',$info);
//      $this->assign('sub_cate',$sub_cate);
//      $this->assign('big_cate',$big_cate);
//      $this->display();
//  }	
	
	public function news(){
        $id = empty($id)?I('id',0,'intval'):$id;
	 $cate_id = empty($cate_id)?I('cate_id',0,'intval'):$cate_id;
		$info = $this->_cate_mod->find($id);
        //当前栏目信息
        $cate = $this->_cate_mod->find($cate_id);
//		科技动态
		$kjdt =$this->_mod->find(44);
		       //子栏目列表
        if($cate['spid'] == 0){
            $sub_cate = $this->_cate_mod->where(array('pid'=>$id))->order('ordid desc , id')->select();
            $big_cate = $cate;
        }else{
            $pid = current(explode('|',$cate['spid']));
            $sub_cate = $this->_cate_mod->where(array('pid'=>$pid))->order('ordid desc , id')->select();
            $big_cate = $this->_cate_mod->find($pid);
        }
			$map['status']=1;
        if ($cate_id) {
        	$map['cate_id'] = $cate_id;
			 $cate1 = $this->_cate_mod->find($cate_id);
        }else{
            $id_arr = $this->_cate_mod->get_child_ids($id, true);
            $map['cate_id'] = array('IN', $id_arr);
        }
		
        //分页
        $count = $this->_mod->where($map)->count();
        $Page = new \Think\Page($count,6);
		$Page->setConfig('prev', "上一页");//上一页
		$Page->setConfig('next', '下一页');//下一页
		$Page->setConfig('first', '首页');//第一页
		$Page->setConfig('last', '末页');//最后一页
		$Page->rollPage =6;
		$Page ->setConfig ( 'theme', '%HEADER% %FIRST% %UP_PAGE% %LINK_PAGE% %DOWN_PAGE% %END%' );
        $list = $this->_mod->where($map)->field('id,title,add_time,intro,img,url')->limit($Page->firstRow.','.$Page->listRows)->relation('tag')->order('ordid desc,id desc')->select();
//		 $list1 = $this->_mod->where($map)->field('id,title,add_time,intro,img,url')->order('ordid desc,id desc')->select();
        $show = $Page->show();
//	print_r($info);
//	print_r($cate);
		$this->assign('kjdt',$kjdt);
		$this->assign('info',$info);
        $this->assign('sub_cate',$sub_cate);
        $this->assign('cate',$cate);
		$this->assign('cate1',$cate1);
        $this->assign('big_cate',$big_cate);
        $this->assign('list',$list);
//		$this->assign('list1',$list1);
        $this->assign('page',$show);
		
		$this->display();
    }
	
	public function newscon(){
        $art_id = I('art_id',0,intval);
        (!$art_id) && $this->error('参数有误');
        $info = $this->_mod->find($art_id);
		$this->_mod->where('id='.$info['id'])->setField('hits',$info['hits']+'1');
        $cate_id = $info['cate_id'];
        //当前栏目信息
        $cate = $this->_cate_mod->find($cate_id);
        //子栏目列表
        if($cate['spid'] == 0){
            $sub_cate = $this->_cate_mod->where(array('pid'=>$cate_id))->order('ordid desc,id ')->select();
            $big_cate = $cate;
        }else{
            $pid = current(explode('|',$cate['spid']));
            $sub_cate = $this->_cate_mod->where(array('pid'=>$pid))->order('ordid desc,id ')->select();
            $big_cate = $this->_cate_mod->find($pid);
        }
        $id_arr = $this->_cate_mod->get_child_ids($cate_id, true);

        //前一篇和下一篇
        $map['status'] = array('eq',1);
        $map['cate_id'] = array('IN', $id_arr);

        $map['id'] = array('lt',$art_id);
        $ex = $this->_mod->field('id,title,url')->where($map)->order('id desc')->find();

        $map['id'] = array('gt',$art_id);
        $next = $this->_mod->field('id,title,url')->where($map)->order('id asc')->find();
		
		
//print_r($big_cate);
        $this->assign('cate',$cate);
        $this->assign('info',$info);
        $this->assign('ex',$ex);
        $this->assign('next',$next);
        $this->assign('sub_cate',$sub_cate);
        $this->assign('big_cate',$big_cate);
        $this->display();
    }
	
	public function product(){
        $id = empty($id)?I('id',0,'intval'):$id;
	 $cate_id = empty($cate_id)?I('cate_id',0,'intval'):$cate_id;
		$info = $this->_cate_mod->find($id);
        //当前栏目信息
        $cate = $this->_cate_mod->find($cate_id);
//		if($cate['type']){
//			$this->category_page($id);
//			exit();
//		}
		       //子栏目列表
        if($cate['spid'] == 0){
            $sub_cate = $this->_cate_mod->where(array('pid'=>$id))->order('ordid desc , id')->select();
            $big_cate = $cate;
        }else{
            $pid = current(explode('|',$cate['spid']));
            $sub_cate = $this->_cate_mod->where(array('pid'=>$pid))->order('ordid desc , id')->select();
            $big_cate = $this->_cate_mod->find($pid);
        }
			$map['status']=1;
        if ($cate_id) {
        	$map['cate_id'] = $cate_id;
			 $cate1 = $this->_cate_mod->find($cate_id);
        }else{
            $id_arr = $this->_cate_mod->get_child_ids($id, true);
            $map['cate_id'] = array('IN', $id_arr);
        }
		
        //分页
        $count = $this->_mod->where($map)->count();
        $Page = new \Think\Page($count,6);
		$Page->setConfig('prev', "上一页");//上一页
		$Page->setConfig('next', '下一页');//下一页
		$Page->setConfig('first', '首页');//第一页
		$Page->setConfig('last', '末页');//最后一页
		$Page->rollPage =6;
		$Page ->setConfig ( 'theme', '%HEADER% %FIRST% %UP_PAGE% %LINK_PAGE% %DOWN_PAGE% %END%' );
        $list = $this->_mod->where($map)->field('id,title,add_time,intro,img,url,describe')->limit($Page->firstRow.','.$Page->listRows)->relation('tag')->order('ordid desc,id desc')->select();
        $show = $Page->show();
//	print_r($info);
//	print_r($list);
		$this->assign('info',$info);
        $this->assign('sub_cate',$sub_cate);
        $this->assign('cate',$cate);
		$this->assign('cate1',$cate1);
        $this->assign('big_cate',$big_cate);
        $this->assign('list',$list);
        $this->assign('page',$show);
		
		$this->display();
    }
	
	public function procon(){
        $art_id = I('art_id',0,intval);
        (!$art_id) && $this->error('参数有误');
        $info = $this->_mod->find($art_id);
		$this->_mod->where('id='.$info['id'])->setField('hits',$info['hits']+'1');
        $cate_id = $info['cate_id'];
        //当前栏目信息
        $cate = $this->_cate_mod->find($cate_id);
        //子栏目列表
        if($cate['spid'] == 0){
            $sub_cate = $this->_cate_mod->where(array('pid'=>$cate_id))->order('ordid desc,id ')->select();
            $big_cate = $cate;
        }else{
            $pid = current(explode('|',$cate['spid']));
            $sub_cate = $this->_cate_mod->where(array('pid'=>$pid))->order('ordid desc,id ')->select();
            $big_cate = $this->_cate_mod->find($pid);
        }
			$sub_cate1 = $this->_mod->where(array('cate_id'=>29))->order('ordid desc,id ')->select();
        $id_arr = $this->_cate_mod->get_child_ids($cate_id, true);
        //前一篇和下一篇
        $map['status'] = array('eq',1);
        $map['cate_id'] = array('IN', $id_arr);

        $map['id'] = array('lt',$art_id);
        $ex = $this->_mod->field('id,title,url')->where($map)->order('id desc')->find();

        $map['id'] = array('gt',$art_id);
        $next = $this->_mod->field('id,title,url')->where($map)->order('id asc')->find();
		
		
//print_r($info);
        $this->assign('cate',$cate);
        $this->assign('info',$info);
        $this->assign('ex',$ex);
        $this->assign('next',$next);
        $this->assign('sub_cate',$sub_cate);
		$this->assign('sub_cate1',$sub_cate1);
        $this->assign('big_cate',$big_cate);
        $this->display();
    }
	
	public function technology(){
        $id = empty($id)?I('id',0,'intval'):$id;
	 $cate_id = empty($cate_id)?I('cate_id',0,'intval'):$cate_id;
		$info = $this->_cate_mod->find($id);
        //当前栏目信息
        $cate = $this->_cate_mod->find($cate_id);

		       //子栏目列表
        if($cate['spid'] == 0){
            $sub_cate = $this->_cate_mod->where(array('pid'=>$id))->select();
            $big_cate = $cate;
        }else{
            $pid = current(explode('|',$cate['spid']));
            $sub_cate = $this->_cate_mod->where(array('pid'=>$pid))->select();
            $big_cate = $this->_cate_mod->find($pid);
        }
        if ($cate_id) {
        	$map['cate_id'] = $cate_id;
			 $cate1 = $this->_cate_mod->find($cate_id);
        }else{
            $id_arr = $this->_cate_mod->get_child_ids($id, true);
            $map['cate_id'] = array('IN', $id_arr);
        }
		
        //分页
        $count = $this->_mod->where($map)->count();
        $Page = new \Think\Page($count,6);
		$Page->setConfig('prev', "上一页");//上一页
		$Page->setConfig('next', '下一页');//下一页
		$Page->setConfig('first', '首页');//第一页
		$Page->setConfig('last', '末页');//最后一页
		$Page->rollPage =6;
		$Page ->setConfig ( 'theme', '%HEADER% %FIRST% %UP_PAGE% %LINK_PAGE% %DOWN_PAGE% %END%' );
        $list = $this->_mod->where($map)->field('id,title,add_time,intro,img,url')->limit($Page->firstRow.','.$Page->listRows)->relation('tag')->order('ordid desc,id desc')->select();
        $show = $Page->show();
//	print_r($info);
//	print_r($cate);
		$this->assign('info',$info);
        $this->assign('sub_cate',$sub_cate);
        $this->assign('cate',$cate);
		$this->assign('cate1',$cate1);
        $this->assign('big_cate',$big_cate);
        $this->assign('list',$list);
        $this->assign('page',$show);
		
		$this->display();
    }
	
	

	
	public function s(){
		//search
		$kw = I('kw','','trim');
		(!empty($kw)) && $map['title'] = array('like',"%$kw%");
		 $id_arr = $this->_cate_mod->get_child_ids(4, true);
         $map['cate_id'] = array('not in', $id_arr);
		 $map['status'] = 1;
         $news = D('Article')->where($map)->limit(5)->order('ordid desc,id desc')->select();
        //分页
        $count = $this->_mod->where($map)->count();
        $Page = new \Think\Page($count,C('pagesize'));
        $list = $this->_mod->where($map)->field('id,title,add_time,intro,img,url')->limit($Page->firstRow.','.$Page->listRows)->relation('tag')->order('ordid desc,id desc')->select();
        $show = $Page->show();
//		print_r($list);
		$this->assign('kw',$kw);
        $this->assign('list',$list);
        $this->assign('page',$show);
        $this->display();
    }



	public function test(){
		echo 'hello world';
	}
}