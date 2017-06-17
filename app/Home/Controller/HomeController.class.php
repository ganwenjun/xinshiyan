<?php
namespace Home\Controller;
use Think\Controller;
class HomeController extends Controller {
    protected function _initialize(){
		$host = $_SERVER['HTTP_HOST'];
		if(preg_match('/^[a-zA-Z0-9-]+[.]{1}[a-zA-Z]+$/',$host)){
			$url =  'http://www.'.$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI'];
			header('Location:'.$url);
		}
		//初始化网站配置
        $setting = array();
        if(F('setting')){
            $setting = F('setting');
        }else{
            $setting = D('Setting')->setting_cache();
            F('setting',$setting);
        }
        C($setting);
	}

    public function _empty($title){
        $ArticleCate = M('ArticleCate');
        $category_id = $ArticleCate->where(array('alias'=>$title))->getField('id');
        if($category_id){
            $News_A = A('News');
            $News_A->category($category_id);
        }else{
            header('Location:/');
        }
    }
}