<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Privilege extends Common_Back_Controller {

    public $data = "";

    function __construct() {
        parent::__construct();
        $this->check_admin_user_session();
     
    }

    public function index() { 
        
        $data['title']          = 'Privilege';
         $data['front_scripts'] = array('backend_assets/custom/js/privilege.js');
        $data['roles']          = $this->common_model->getAll('adminRole',array('roleId !='=>1,'status'=>1));
        $data['menusAll']       = $this->common_model->getAll('menu',array('showStatus'=>1));
        $this->load->admin_render('privilege', $data);
    } //end function
     function getMenuList(){
        $roleId 	     = decoding($this->input->post('roleId'));
        $isExist  	     = $this->common_model->is_data_exists('adminRole',array('roleId'=>$roleId));
        $data['allMenu'] = array();
    	if($isExist){
    		$this->load->model('privilege_model');
    		$assignMenus      = $this->privilege_model->assignMenus($roleId);
    		$data['allMenu']  = $assignMenus;
    	}
    	$this->load->view('menu',$data);
    }//end function
}//end Class