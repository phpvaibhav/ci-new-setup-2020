<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class School extends Common_Back_Controller {

    public $data = "";
    function __construct() {
      parent::__construct();
      $this->check_admin_user_session();
    }
    public function index() { 
          $breadcrumb         = array(
        "Dashboard" => base_url(),
        "School" => ""
        );
        $data['breadcrumb'] = $breadcrumb;
        $data['title']      = 'School';
        $data['front_styles']    = array('backend_assets/css/plugins/dataTables/datatables.min.css');
        $data['front_scripts']    = array('backend_assets/js/plugins/dataTables/datatables.min.js','backend_assets/custom/js/school.js');
        $this->load->admin_render('school', $data);
    }//end function     
}//End Function