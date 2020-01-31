<?php
class Company_model extends CI_Model{ 
    public function __construct(){
        parent::__construct();
        $this->load->helper('string');
    }
    
    //predefined image sizes (can be changed according to project requirement)
    function image_sizes(){
        //add folder name
        $img_sizes = array();
        $img_sizes['thumbnail'] = array('width'=>150, 'height'=>150, 'folder'=>'/thumb');
        $img_sizes['medium'] = array('width'=>600, 'height'=>600, 'folder'=>'/medium');
        return $img_sizes;
    }
    
    /**
     * Make upload directory
     * Modified in ver 2.0
     */
    function make_dirs($folder='',$mode=DIR_WRITE_MODE, $defaultFolder='company_assets/'){

        if(!@is_dir(FCPATH . $defaultFolder)){
            mkdir(FCPATH . $defaultFolder, $mode);
        }
        
        if(!empty($folder)){

            if(!@is_dir(FCPATH . $defaultFolder . '/' . $folder)){
                mkdir(FCPATH . $defaultFolder . '/' . $folder, $mode,true);
            }
        } 
    }
    
    /**
     * Upload image and create resized copies
     * Modified in ver 2.0
     */
    function upload_image( $image, $folder, $height=768, $width=1024, $path=FALSE ){
        
        $this->make_dirs($folder);
        
       	$realpath = 'company_assets/';
        $allowed_types = "gif|jpg|png|jpeg"; 	
        $img_name = random_string('alnum', 16);  //generate random string for image name
        
        $config = array(
                'upload_path'       => $realpath.$folder,
                'allowed_types'     => $allowed_types,
                'max_size'          => "10240",   // File size limitation, initially w'll set to 10mb (Can be changed)
                'max_height'        => "56", // max height in px
                'max_width'         => "250", // max width in px
                'min_width'         => "200", // min width in px
               	'min_height'        => "50", // min height in px
                'file_name'         => $img_name,
                'overwrite'	    	=> FALSE,
                'remove_spaces'	    => TRUE,
                'quality'           => '100%',
            );
		
        $this->load->library('upload'); //upload library
        $this->upload->initialize($config);
 
        if(!$this->upload->do_upload($image)){
            $error = array('error' => $this->upload->display_errors());
            return $error; //error in upload

        }
      
        $image_data = $this->upload->data(); //get uploaded data
 
       $thumb_img = '';
        if(empty($thumb_img))
            $thumb_img = $image_data['file_name'];

        return array('image_name'=>$thumb_img);
        
    } 
    
    //delete(unlink) image from folder/server
    function delete_image($path,$file){
        
        $main   = $path.$file;
        $thumb  = $path.'thumb/'.$file;
        $medium = $path.'medium/'.$file;
        $large = $path.'large/'.$file;
        if(file_exists(FCPATH.$main)):
            unlink( FCPATH.$main);
        endif;
        if(file_exists(FCPATH.$thumb)):
            unlink( FCPATH.$thumb);
        endif;
        if(file_exists(FCPATH.$medium)):
            unlink( FCPATH.$medium);
        endif;
        if(file_exists(FCPATH.$large)):
            unlink( FCPATH.$large);
        endif;
        return TRUE;
    }//end function
    function companyInfo(){
        $array = array();
        /*company info*/
        $companyinfo             = $this->common_model->getsingle('companyInfo','','','companyId','asc');
        $logo = base_url().'backend_assets/img/company_logo_default.png';
        $companyinfo['logoName'] =  $companyinfo['logo'];
        if(!empty($companyinfo['logo'])){
        //if(file_exists(base_url().'company_assets/logo/'.$companyinfo['logo'])){
        $logo = base_url().'company_assets/logo/'.$companyinfo['logo'];
        //}
        }
        $companyinfo['logo'] = $logo;
        $user_sess_data         = isset($_SESSION[ADMIN_USER_SESS_KEY]) ?$_SESSION[ADMIN_USER_SESS_KEY]:false;
        if($user_sess_data){
            $session_u_id           = $user_sess_data['id'];
            $admin = $this->common_model->adminInfo(array('id'=>$session_u_id));
            /****School info****/
            $schoolinfo             = $this->common_model->getsingle('school',array('adminId'=>$session_u_id),'','schoolId','asc');
                if($schoolinfo){
                    $schoolArray['companyName'] = $schoolinfo['schoolName'];
                    $schoolArray['email'] = $schoolinfo['schoolEmail'];
                    $logoA = base_url().'backend_assets/img/company_logo_default.png';
                    $schoolArray['logoName'] =  $schoolinfo['schoolLogo'];
                    if(!empty($schoolinfo['schoolLogo'])){
                    //if(file_exists(base_url().'company_assets/logo/'.$companyinfo['logo'])){
                    $logoA = base_url().'company_assets/schoolLogo/'.$schoolinfo['schoolLogo'];
                    //}
                    }
                    $schoolArray['logo'] = $logoA;
                }

            /****School info****/
            switch ($admin['roleId']) {
                case 1:
                   $array = $companyinfo ;
                    break;
                case 2:
                    $array = $schoolArray ;
                    break;
                
                default:
                    $array = $companyinfo ;
                    break;
            }
        }else{
            $array =$companyinfo;
        }
		return $array;
    }//end function

}// End of class Image_model
