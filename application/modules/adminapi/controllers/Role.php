<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
//General service API class 
class Role extends Common_Admin_Controller{
    
    public function __construct(){
        parent::__construct();
        $this->check_admin_service_auth();

    }
    public function createRole_post(){
        $roleId          = decoding($this->post('roleId'));
        $userType        = $this->post('userType');
        $check           = $this->common_model->is_data_exists('adminRole',array('roleId !='=>$roleId,'userType'=>$userType));

        if($check){
            $this->form_validation->set_rules('userType', 'userType', 'trim|required|is_unique[adminRole.userType]', array('is_unique' => 'Role already exist'));
        }else{
           $this->form_validation->set_rules('userType', 'userType', 'trim|required'); 
        }

        if($this->form_validation->run() == FALSE){
            $response = array('status' => FAIL, 'message' => strip_tags(validation_errors()));
            
        }else{
          //  pr($this->post());
            $data_val['userType']       = $this->post('userType');
            $roleId                     = decoding($this->post('roleId'));
            $where                      = array('roleId'=>$roleId);
            $isExist                    = $this->common_model->is_data_exists('adminRole',$where);

            if($isExist){
                $result         = $this->common_model->updateFields('adminRole',$data_val,$where);
                $result         =  $isExist->roleId;
                $jobTypeId      = $result;
                $msg            = "Role record updated successfully.";
            }else{
                $result         = $this->common_model->insertData('adminRole',$data_val);
                $jobTypeId      = $result;
                $msg            = "Role created successfully.";
            }
            
            if($result){
                $response = array('status'=>SUCCESS,'message'=>$msg);
            }else{
                $response = array('status'=>FAIL,'message'=>ResponseMessages::getStatusCodeMessage(118));
            }  
        }
        $this->response($response);
    }//end function
 
    public function roleList_post(){
        $this->load->helper('text');
        $this->load->model('role_model');
        $this->role_model->set_data();
        $list   = $this->role_model->get_list();
        
        $data   = array();
        $no     = $_POST['start'];
        foreach ($list as $serData) { 
            $action     = '';
            $no++;
            $row        = array();
            $row[]      = $no;
            $row[]      = display_placeholder_text($serData->userType); 

            if($serData->status){
            $row[]      = '<label class="label label-success">'.$serData->statusShow.'</label>';
            }else{ 
            $row[]      = '<label class="label label-danger">'.$serData->statusShow.'</label>'; 
            } 
           
            $link           = 'javascript:void(0)';
            $action         .= "";
            if($serData->roleId!=1){
            if($serData->status){

                $action .= '<a href="'.$link.'" onclick="roleStatus(this);" data-message="You want to change status!" data-useid="'.encoding($serData->roleId).'"  class="on-default edit-row table_action" title="status"><i class="fa fa-check" aria-hidden="true"></i></a>';
            }else{
                $action .= '<a href="'.$link.'" onclick="roleStatus(this);" data-message="You want to change status!" data-useid="'.encoding($serData->roleId).'"  class="on-default edit-row table_action" title="status"><i class="fa fa-times" aria-hidden="true"></i></a>';
            }
          
            $action .= '&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="editRole(this);" href="'.$link .'" data-rid="'.encoding($serData->roleId).'" data-utype="'.$serData->userType.'"  class="on-default edit-row table_action" title="Edit"><i class="fa fa-edit" aria-hidden="true"></i></a>';
            $action .= '&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="roleDelete(this);" href="'.$link .'" data-useid="'.encoding($serData->roleId).'" data-utype="'.$serData->userType.'"  data-message="You want to delete this role!" class="on-default edit-row table_action" title="delete"><i class="fa fa-trash" aria-hidden="true"></i></a>';
            }
            $row[]  = $action;
            $data[] = $row;

        }

        $output = array(
            "draw"              => $_POST['draw'],
            "recordsTotal"      => $this->role_model->count_all(),
            "recordsFiltered"   => $this->role_model->count_filtered(),
            "data"              => $data,
        );
        //output to json format
       
        $this->response($output);
    }//end function 
 
    function roleStatus_post(){
        $roleId         = decoding($this->post('use'));
        $status         = $this->post('status');
    
        $where          = array('roleId'=>$roleId);
         $dataExist     = $this->common_model->is_data_exists('adminRole',$where);
        if($dataExist){
            $status     = $dataExist->status ? 0:1;
             $dataExist = $this->common_model->updateFields('adminRole',array('status'=>$status),$where);
              $showmsg  = ($status==1) ? "Role request is Active" : "Role request is Inactive";
                $response = array('status'=>SUCCESS,'message'=>$showmsg);
        }else{
           $response = array('status'=>FAIL,'message'=>ResponseMessages::getStatusCodeMessage(118));  
        }
        $this->response($response);
    }//end function

    function roleDelete_post(){
        $roleId         = decoding($this->post('use'));
        $where          = array('roleId'=>$roleId);
        $dataExist      = $this->common_model->is_data_exists('adminRole',$where);
        if($dataExist){
            $dataExist  = $this->common_model->deleteData('adminRole',$where);
            $showmsg    = "Role has been deleted successfully.";
            $response   = array('status'=>SUCCESS,'message'=>$showmsg);
        }else{
            $response   = array('status'=>FAIL,'message'=>ResponseMessages::getStatusCodeMessage(118));  
        }
        $this->response($response);
    }//end function
}//End Class 