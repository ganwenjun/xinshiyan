<?php
namespace Home\Controller;
class IndexController extends HomeController {
	public function _initialize() {
        parent::_initialize();
		$this->_cate_mod=D('ArticleCate');
    }
    public function index(){
//  	案例
		$cases =  D('Article')->where(array('cate_id'=>12,'status'=>1))->order('ordid desc,id ')->select();
//	print_r($cases);	
//		关于
		$about = D('Article')->find(21);
//		公司新闻
		$news = M('Article')->where(array('cate_id'=>7,'status'=>1))->order('ordid desc,add_time desc,id ')->limit(6)->select();
		//	行业动态
		$industry = D('Article')->where(array('cate_id'=>8,'status'=>1))->order('ordid desc,add_time desc,id ')->limit(6)->select();
//		轮动图
		$ad = D('Ad') ->where(array('board_id'=>8,'status'=>1))->order('ordid desc,id ')->select();
//		print_r($news);
		$this->assign('cases',$cases);
		$this->assign('about',$about);
		$this->assign('news',$news);
		$this->assign('industry',$industry);
		$this->assign('ad',$ad);
		

  		  $this->display();
		}
    

	public function apply(){
		if(IS_AJAX){
			$data = I('post.');
            empty($data['username']) && $this->error('姓名不能为空');
            empty($data['age']) && $this->error('年龄不能为空');
            (!check_mobile($data['mobile'])) && $this->error('手机号码格式有误');
            (!check_email($data['email'])) && $this->error('邮箱格式有误');
			$apply = D('Apply');
			$data = $apply->create($data);
			if (!$data){
				$this->error($apply->getError());
			}else{
				$apply->add($data);
                $this->success('申请成功！');
			}
		}
	}
	public function get_video(){
		if(IS_AJAX){
			$video = '<embed src="http://static.youku.com/v/swf/qplayer.swf?VideoIDS=XOTUzOTkzMjAw&isAutoPlay=true&showAd=0" allowfullscreen="true" quality="high" width="1000" height="605" align="middle" allowscriptaccess="always" type="application/x-shockwave-flash">';
			echo json_encode($video);
		}
	}
}