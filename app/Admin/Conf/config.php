<?php
return array(
	//'配置项'=>'配置值'
    'URL_MODEL'          => '0', //URL模式
	//模板替换
	'TMPL_PARSE_STRING'  =>array(
		 '__STATIC__' => __ROOT__.'/theme/admin/', // 后台的样式文件目录
		 '__PUBLIC_DEFAULT__' => __ROOT__.'/theme/default/', // 前台的样式文件目录
		 '__PUBLIC_ADMIN__' => __ROOT__.'/theme/admin/', // 后台的样式文件目录
		 //'__JS__'     => __ROOT__.'/Public/JS/', // 增加新的JS类库路径替换规则
		 '__UPLOAD__' => __ROOT__.'/data/attachment', // 增加新的上传路径替换规则
	),
	'LOG_RECORD' => false, // 默认不记录日志
);