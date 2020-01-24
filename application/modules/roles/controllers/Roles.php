<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Roles extends Common_Back_Controller {

    public $data = "";

    function __construct() {
        parent::__construct();
        $this->check_admin_user_session(); 
    }

    public function index() { 
        
        $data['title']      = 'Roles';
        $count              = $this->common_model->get_total_count('adminRole');
        $count              = number_format_short($count);
     
        $data['recordSet']  = array('<li class="sparks-info"><h5>User Role<span class="txt-color-blue"><a class="anchor-btn" onclick="openRole();" ><i class="fa fa-plus-square"></i></a></span></h5></li>','<li class="sparks-info"><h5>Total Roles <span class="txt-color-darken" id="totalCust"><i class="fa fa-lg fa-fw fa fa-user-secret"></i>&nbsp;'.$count.'</span></h5></li>');
        $data['front_scripts'] = array('backend_assets/custom/js/roles.js');
        $this->load->admin_render('roles', $data);
    } //End Function    
}//End Class