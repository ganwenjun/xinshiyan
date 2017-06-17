<?php
/**
 * 检测用户是否登录
 * @return integer 0-未登录，大于0-当前登录用户ID
 */
function is_login(){
    $user = cookie('user_auth');
    if (empty($user)) {
        return 0;
    } else {
        return session('auth_sign') == data_auth_sign($user) ? $user['id'] : 0;
    }
}

//验证是否为商户
function is_business(){
	 $user = cookie('user_auth');
	 if($user['member_type'] == 2){
		 return 2;
	 }else{
		 return 0;
	 }
}

function attach($attach, $type) {
    if (false === strpos($attach, 'http://')) {
        //本地附件
        $img_url = __ROOT__ . '/' . C('pin_attach_path') . $type . '/' . $attach;
        $img_path = realpath('./').'/'. C('pin_attach_path') . $type . '/' . $attach;

        if(is_file($img_path)){
            return $img_url;
        }else{
            $img_url =  __ROOT__ . '/data/image/nopicture.gif';
            return  $img_url;
        }
        //远程附件
        //todo...
    } else {
        //URL链接
        return $attach;
    }
}
