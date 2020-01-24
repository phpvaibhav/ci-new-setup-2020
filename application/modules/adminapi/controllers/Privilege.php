<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
//General service API class 
class Privilege extends Common_Admin_Controller{
    
    public function __construct(){
        parent::__construct();
        $this->check_admin_service_auth();

    }
	function setPrivilege_post(){
		$this->form_validation->set_rules('roleId', 'roleId', 'trim|required'); 
	//	$this->form_validation->set_rules('menuId', 'menuId', 'trim|required'); 
		 if($this->form_validation->run() == FALSE){
            $response = array('status' => FAIL, 'message' => strip_tags(validation_errors()));
            
        }else{
        	$roleId = decoding($this->post('roleId'));
        	$menuIds = $this->post('menuId');
        	if(!empty($menuIds)){
        	foreach ($menuIds as $k => $mid) {
        		$menuId 	= $mid;
				$privilegeId 	= isset($_POST['privilegeId_'.$mid]) ? $_POST['privilegeId_'.$mid] : 0;
				$viewData 	= isset($_POST['viewData_'.$mid]) ? $_POST['viewData_'.$mid] : 0;
				$addData 	= isset($_POST['addData_'.$mid]) ? $_POST['addData_'.$mid] : 0;
				$editData 	= isset($_POST['editData_'.$mid]) ? $_POST['editData_'.$mid] : 0;
				$deleteData = isset($_POST['deleteData_'.$mid]) ? $_POST['deleteData_'.$mid] : 0;

        		$data_val['menuId'] = $menuId;
        		$data_val['roleId'] = $roleId;
        		$data_val['viewData'] = (isset($viewData) && !empty($viewData)) ? $viewData:0;
        		$data_val['addData'] = (isset($addData) && !empty($addData)) ? $addData:0;
        		$data_val['editData'] = (isset($editData) && !empty($editData)) ? $editData:0;
        		$data_val['deleteData'] = (isset($deleteData) && !empty($deleteData)) ? $deleteData:0;
        		$isPrivilege = $this->common_model->is_data_exists('privilege',array('privilegeId'=>$privilegeId));
        		if($isPrivilege){
        			$updateData = $this->common_model->updateFields('privilege',$data_val,array('privilegeId'=>$privilegeId));
        		}else{
        			 $insertData = $this->common_model->insertData('privilege',$data_val);
        		}
        	
        	}
        	$response = array('status'=>SUCCESS,'message'=>ResponseMessages::getStatusCodeMessage(123));
        }else{
        	$response = array('status'=>FAIL,'message'=>ResponseMessages::getStatusCodeMessage(118));
        }
        }
	
		$this->response($response);
	}//end function
}//End Class 