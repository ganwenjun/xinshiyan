<?php
namespace Admin\Controller;
class SettingController extends AdminCoreController {
	public function _initialize() {
        parent::_initialize();
        $this->_mod = D('Setting');
        $this->set_mod('Setting');
    }
	public function index() {
        $type = I('type', 'index', 'trim');
        $this->display($type);
    }
    
    public function user() {
        $this->display();
    }

    public function edit() {
        $setting = I('setting');
        foreach ($setting as $key => $val) {
            $val = is_array($val) ? serialize($val) : $val;
            $this->_mod->where(array('name' => $key))->save(array('data' => $val));
        }
        D('Setting')->setting_cache();
        $type = I('type', 'index', 'trim');
        $this->success(L('operation_success'));
    }

    public function ajax_mail_test() {
        $email = I('email','', 'trim');
        !$email && $this->ajax_return(0);
        //发送
        $mailer = mailer::get_instance();
        if ($mailer->send($email, L('send_test_email_subject'), L('send_test_email_body'))) {
            $this->ajax_return(1);
        } else {
            $this->ajax_return(0);
        }
    }
}