<?php

/**
 * 数据签名认证
 * @param  array  $data 被认证的数据
 * @return string       签名
 */
function data_auth_sign($data) {
    //数据类型检测
    if(!is_array($data)){
        $data = (array)$data;
    }
    ksort($data); //排序
    $code = http_build_query($data); //url编码并生成query字符串
    $sign = sha1($code); //生成签名
    return $sign;
}

//含密钥md5加密
function st_md5($str = ''){
	return md5(C('st_encryption_key').$str);
}

//生成批量上传的名称
function make_file_name($key=''){
    return uniqid().rand(0,100);
}

/*
 * 获取缩略图
 */

function get_thumb($img, $suffix = '_thumb') {
    if (false === strpos($img, 'http://')) {
        $ext = array_pop(explode('.', $img));
        $thumb = str_replace('.' . $ext, $suffix . '.' . $ext, $img);
    } else {
        if (false !== strpos($img, 'taobaocdn.com') || false !== strpos($img, 'taobao.com')) {
            //淘宝图片 _s _m _b
            switch ($suffix) {
                case '_s':
                    $thumb = $img . '_100x100.jpg';
                    break;
                case '_m':
                    $thumb = $img . '_210x1000.jpg';
                    break;
                case '_b':
                    $thumb = $img . '_480x480.jpg';
                    break;
            }
        }
    }
    return $thumb;
}
function check_pwd($password){
    $RegExp='/^[a-zA-Z0-9_]{6,16}$/'; //由大小写字母跟数字组成并且长度在3-16字符直接
    return preg_match($RegExp,$password)?$password:false;
}

function check_nickname($Argv){
    $RegExp='/^[a-zA-Z]+[a-zA-Z0-9_]{3,16}$/'; //由大小写字母跟数字组成并且长度在3-16字符直接
    return preg_match($RegExp,$Argv)?$Argv:false;
}

function check_mobile($Argv){
    $RegExp='/^(?:13|15|17|18)[0-9]{9}$/';
    return preg_match($RegExp,$Argv)?$Argv:false;
}

function check_email($Argv){
    $RegExp='/\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/';
    return preg_match($RegExp,$Argv)?$Argv:false;
}
function code2html($code){
	return htmlspecialchars_decode($code);
}
//分隔
function tags_rule($str){
	$str = str_replace(',',',',$str);
	$str = str_replace(' ',',',$str);
	$str = str_replace('|',',',$str);
	return $str;
}

function tags_rule_search($str){
	$str = str_replace(',','%,%',$str);
	$str = str_replace('，','%,%',$str);
	$str = str_replace(' ','%,%',$str);
	$str = str_replace('|','%,%',$str);
	return $str;
}

/*
* 关键词中的空格替换为','
*/
function empty_replace($str) {
	$str = preg_replace("/<sty(.*)\\/style>|<scr(.*)\\/script>|<!--(.*)-->/isU","",$str);
	$alltext = "";
	$start = 1;
	for($i=0;$i<strlen($str);$i++)
	{
		if($start==0 && $str[$i]==">")
		{
			$start = 1;
		}
		else if($start==1)
		{
			if($str[$i]=="<")
			{
				$start = 0;
				$alltext .= " ";
			}
			else if(ord($str[$i])>31)
			{
				$alltext .= $str[$i];
			}
		}
	}
	$alltext = str_replace("　","",$alltext);
	$alltext = preg_replace("/&([^;&]*)(;|&)/","",$alltext);
	$alltext = preg_replace("/[ ]+/s"," ",$alltext);
	return $alltext;
}

function i_array_column($input, $columnKey, $indexKey=null){
    if(!function_exists('array_column')){ 
        $columnKeyIsNumber  = (is_numeric($columnKey))?true:false; 
        $indexKeyIsNull            = (is_null($indexKey))?true :false; 
        $indexKeyIsNumber     = (is_numeric($indexKey))?true:false; 
        $result                         = array(); 
        foreach((array)$input as $key=>$row){ 
            if($columnKeyIsNumber){ 
                $tmp= array_slice($row, $columnKey, 1); 
                $tmp= (is_array($tmp) && !empty($tmp))?current($tmp):null; 
            }else{ 
                $tmp= isset($row[$columnKey])?$row[$columnKey]:null; 
            } 
            if(!$indexKeyIsNull){ 
                if($indexKeyIsNumber){ 
                  $key = array_slice($row, $indexKey, 1); 
                  $key = (is_array($key) && !empty($key))?current($key):null; 
                  $key = is_null($key)?0:$key; 
                }else{ 
                  $key = isset($row[$indexKey])?$row[$indexKey]:0; 
                } 
            } 
            $result[$key] = $tmp; 
        } 
        return $result; 
    }else{
        return array_column($input, $columnKey, $indexKey);
    }
}