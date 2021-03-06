<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
//General service API class 
class Adminapi extends Common_Admin_Controller{
    
    public function __construct(){
        parent::__construct();
        $this->load->model('adminapi_model'); //load image model
    }
    // For companyinfo 
    function companyinfo_post(){
        $this->form_validation->set_rules('companyName', 'company name', 'trim|required');
        $this->form_validation->set_rules('companyEmail', 'company email', 'trim|required|valid_email');
      
        if($this->form_validation->run() == FALSE){
            $response = array('status' => FAIL, 'message' => strip_tags(validation_errors()));
            $this->response($response);
        }
        else{
        
            $companyId                      =  decoding($this->post('companyId'));
            $dataExist                      = $this->common_model->is_data_exists('companyInfo',array('companyId'=>$companyId));
            $email                          =  $this->post('companyEmail');
            $companyName                    =  $this->post('companyName');

            //company info
            $data_val['companyName']        =   $companyName;
            $data_val['email']              =   $email;
        

            //user info
            // profile pic upload
            $this->load->model('company_model');
          
            $image = array(); $logoImage = '';
            if (!empty($_FILES['logoImage']['name'])) {
                $folder     = 'logo';
                $image      = $this->company_model->upload_image('logoImage',$folder); //upload media of Seller
                
                //check for error
                if(array_key_exists("error",$image) && !empty($image['error'])){
                    $response = array('status' => FAIL, 'message' => strip_tags($image['error'].'(In logo Image)'));
                   $this->response($response);
                }
            
                //check for image name if present
                if(array_key_exists("image_name",$image)):
                    $logoImage = $image['image_name'];
                endif;
                //check for image name if present
                if(array_key_exists("image_name",$image)):
                    $logoImage = $image['image_name'];
                    if(!empty($dataExist->logo)){
                        $this->company_model->delete_image('company_assets/logo/',$dataExist->logo);
                    }
                   
                endif;

                 $data_val['logo']           =   $logoImage;
            }
                

            $result = $this->common_model->updateFields('companyInfo',$data_val,array('companyId'=>$companyId));
    
            if($result){

               $response = array('status'=>SUCCESS,'message'=>ResponseMessages::getStatusCodeMessage(123));

             }else{
                $response = array('status'=>FAIL,'message'=>ResponseMessages::getStatusCodeMessage(118));
            }   
            $this->response($response);
        }
    } //End Function 
    // For schoolinfo 
    function schoolinfo_post(){
        $this->form_validation->set_rules('schoolName', 'school name', 'trim|required');
        $this->form_validation->set_rules('schoolEmail', 'school email', 'trim|required|valid_email');
      
        if($this->form_validation->run() == FALSE){
            $response = array('status' => FAIL, 'message' => strip_tags(validation_errors()));
            $this->response($response);
        }
        else{
        
            $schoolId                      =  decoding($this->post('schoolId'));
            $dataExist                      = $this->common_model->is_data_exists('school',array('schoolId'=>$schoolId));
            $email                          =  $this->post('schoolEmail');
            $schoolName                    =  $this->post('schoolName');

            //company info
            $data_val['schoolName']        =   $schoolName;
            $data_val['schoolEmail']              =   $email;
        

            //user info
            // profile pic upload
            $this->load->model('company_model');
          
            $image = array(); $logoImage = '';
            if (!empty($_FILES['logoImage']['name'])) {
                $folder     = 'schoolLogo';
                $image      = $this->company_model->upload_image('logoImage',$folder); //upload media of Seller
                
                //check for error
                if(array_key_exists("error",$image) && !empty($image['error'])){
                    $response = array('status' => FAIL, 'message' => strip_tags($image['error'].'(In logo Image)'));
                   $this->response($response);
                }
            
                //check for image name if present
                if(array_key_exists("image_name",$image)):
                    $logoImage = $image['image_name'];
                endif;
                //check for image name if present
                if(array_key_exists("image_name",$image)):
                    $logoImage = $image['image_name'];
                    if(!empty($dataExist->logo)){
                        $this->company_model->delete_image('company_assets/logo/',$dataExist->logo);
                    }
                   
                endif;

                 $data_val['schoolLogo']           =   $logoImage;
            }
                

            $result = $this->common_model->updateFields('school',$data_val,array('schoolId'=>$schoolId));
    
            if($result){

               $response = array('status'=>SUCCESS,'message'=>ResponseMessages::getStatusCodeMessage(123));

             }else{
                $response = array('status'=>FAIL,'message'=>ResponseMessages::getStatusCodeMessage(118));
            }   
            $this->response($response);
        }
    } //End Function 
    
    // For Registration 
    function registration_post(){
        $this->form_validation->set_rules('email', 'Email', 'trim|required|valid_email|is_unique[admin.email]',
            array('is_unique' => 'Email already exist')
        );
        $this->form_validation->set_rules('password', 'Password', 'trim|required|min_length[3]|max_length[20]');
        $this->form_validation->set_rules('contact', 'Contact Number', 'trim|required|min_length[10]|max_length[20]');
        $this->form_validation->set_rules('fullName', 'full Name', 'trim|required|min_length[2]');
        
     /*   if (empty($_FILES['profileImage']['name'])) {
            $this->form_validation->set_rules('profileImage', 'profile image', 'trim|required');
        }*/
        if($this->form_validation->run() == FALSE){
            $response = array('status' => FAIL, 'message' => strip_tags(validation_errors()));
            $this->response($response);
        }
        else{
        
            $userType                          =  $this->post('userType');
            $email                          =  $this->post('email');
            $fullName                       =  $this->post('fullName');
            $authtoken                      = $this->adminapi_model->generate_token();
            $passToken                      = $this->adminapi_model->generate_token();
            //user info
            $userData['fullName']           =   $fullName;
            $userData['email']              =   $email;
            $userData['userType']           =   1;
            $userData['roleId']             =   $userType;
            $userData['contactNumber']      =   $this->post('contact');
            $userData['authToken']          =   $authtoken;
            $userData['password']           =   password_hash($this->post('password'), PASSWORD_DEFAULT);
            $userData['authToken']          =   $authtoken;
            $userData['passToken']          =   $passToken;

            //user info
            // profile pic upload
            $this->load->model('Image_model');
          
            $image = array(); $profileImage = '';
            if (!empty($_FILES['profileImage']['name'])) {
                $folder     = 'users';
                $image      = $this->Image_model->upload_image('profileImage',$folder); //upload media of Seller
                
                //check for error
                if(array_key_exists("error",$image) && !empty($image['error'])){
                    $response = array('status' => FAIL, 'message' => strip_tags($image['error'].'(In user Image)'));
                   $this->response($response);
                }
                
                //check for image name if present
                if(array_key_exists("image_name",$image)):
                    $profileImage = $image['image_name'];
                endif;
            
            }
            $userData['profileImage']           =   $profileImage;

            $result = $this->adminapi_model->registration($userData);
            if(is_array($result)){

               switch ($result['regType']){
                    case "NR": // Normal registration
                    if($result['returnData']->roleId==2):
                        $setData['adminId'] = $result['returnData']->id;
                        $setData['schoolEmail'] = $email;
                        $setData['schoolName']  = $fullName;
                        $this->common_model->insertData('school',$setData);
                    endif;
                    $this->StoreSession($result['returnData']);
                   
                    $response = array('status'=>SUCCESS,'message'=>ResponseMessages::getStatusCodeMessage(110), 'messageCode'=>'normal_reg','users'=>$result['returnData']);
                    break;
                    case "AE": // User already registered
                    $response = array('status'=>FAIL,'message'=>ResponseMessages::getStatusCodeMessage(117),'users'=>array());
                    break;
                    default:
                    $response = array('status'=>FAIL,'message'=>ResponseMessages::getStatusCodeMessage(121),'userDetail'=>array());
                }

             }else{
                $response = array('status'=>FAIL,'message'=>ResponseMessages::getStatusCodeMessage(118),'userDetail'=>array());
            }   
            $this->response($response);
        }
    } //End Function

    function login_post(){
        $this->form_validation->set_rules('email','Email','trim|required|valid_email');
        $this->form_validation->set_rules('password','Password','trim|required');
        if($this->form_validation->run() == FALSE)
        {
            $response = array('status' => FAIL, 'message' => strip_tags(validation_errors()));
            $this->response($response);
        }
        else
        {
            $authtoken              = $this->adminapi_model->generate_token();
            $data                   = array();
            $data['email']          = $this->post('email');
            $data['password']       = $this->post('password');
            $data['authToken']      = $authtoken;

            $result                 = $this->adminapi_model->login($data,$authtoken);


            if(is_array($result)){
                switch ($result['returnType']) {
                    case "SL":
                        $this->StoreSession($result['userInfo']);
                    $response = array('status' => SUCCESS, 'message' => ResponseMessages::getStatusCodeMessage(106), 'users' => $result['userInfo']);
                    break;
                    case "WP":
                    $response = array('status' => FAIL, 'message' => ResponseMessages::getStatusCodeMessage(102));
                    break;
                    case "WE":
                    $response = array('status' => FAIL, 'message' => ResponseMessages::getStatusCodeMessage(126));
                    break;
                    case "IU":
                    $response = array('status' => FAIL, 'message' => ResponseMessages::getStatusCodeMessage(118));
                    break;
                    case "WS":
                    $response = array('status' => FAIL, 'message' => ResponseMessages::getStatusCodeMessage(118));
                    break;
                    default:
                    $response = array('status' => SUCCESS, 'message' => ResponseMessages::getStatusCodeMessage(106), 'users' => $result['userInfo']);
                }
            }
            else{
                $response = array('status' => FAIL, 'message' => ResponseMessages::getStatusCodeMessage(126));
            }
            
            $this->response($response);
        }
    } //End Function
          

    //user forgot password
    function forgotPassword_post(){

        $this->form_validation->set_rules('email', 'Email', 'trim|required|valid_email');
        
        if($this->form_validation->run() == FALSE){
            $response = array('status' => FAIL, 'message' => strip_tags(validation_errors()));
            $this->response($response);
        }

        $email = $this->post('email');
        $response = $this->adminapi_model->forgotPassword($email);
        if($response['emailType'] == 'ES'){ //ES emailSend
            $response = array('status' => SUCCESS, 'message' => 'Please check your mail to reset your password.');
        }elseif($response['emailType'] == 'NS'){ //NS NotSend
            $response = array('status' => FAIL, 'message' => 'Error not able to send email');
        }
        elseif($response['emailType'] == 'NE'){ //NE Not exist
            $response = array('status' => FAIL, 'message' => 'This Email does not exist'); 
        }elseif($response['emailType'] == 'SL'){ //SL social login
            $response = array('status' => FAIL, 'message' => 'Social registered users are not allowed to access Forgot password'); 
        }

        $this->response($response);
    } //End function


    // Session store value for frontEnd
    function StoreSession($userData){
        $session_data['id']             = $userData->userId;
        $session_data['userId']         = $userData->userId;
        $session_data['fullName']       = $userData->fullName;
        $session_data['email']          = $userData->email;
        $session_data['userType']       = $userData->userType;
        $session_data['userRole']       = $userData->userRole;
        $session_data['image']          = $userData->profileImage;
        $session_data['isLogin']        = TRUE ;
      //  pr( $session_data);
        $_SESSION[ADMIN_USER_SESS_KEY]        = $session_data;   
        return TRUE;
    }// End Function   
    // ENd Session store value for frontEnd
    

}//End Class 

