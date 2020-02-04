<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Users extends Common_Back_Controller {

    public $data = "";

    function __construct() {
        parent::__construct();
        $this->check_admin_user_session();
    }
    public function userDetail(){
      //pr('admin@admin.com');
        $userId             = decoding($this->uri->segment(2));
        $data['title']      = "Profile";
        $where              = array('id'=>$userId);
        $result             = $this->common_model->getsingle('admin',$where);
        $data['userData']   = $result;
        $data['front_styles'] = array('backend_assets/css/plugins/jasny/jasny-bootstrap.min.css');
        $data['front_scripts'] = array('backend_assets/js/plugins/jasny/jasny-bootstrap.min.js');
        $this->load->admin_render('profile/userDetail', $data, '');
    } 
    public function changePassword(){
           $userId             = decoding($this->uri->segment(2));
        $data['title']      = "Change Password";
        $where              = array('id'=>$userId);
        $result             = $this->common_model->getsingle('admin',$where);
        $data['userData']   = $result;
        $this->load->admin_render('profile/changePassword', $data, '');
    }   
}