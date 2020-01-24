<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');
/*
 * Common Model
 * version: 2.0 (14-08-2018)
 * Common DB queries used in app
 */
class Common_model extends CI_Model {
    
    /* INSERT RECORD FROM SINGLE TABLE */
    function insertData($table, $dataInsert) {
        $this->db->insert($table, $dataInsert);
        return $this->db->insert_id();
    }
/* INSERT RECORD FROM batch TABLE */
    function insertBatch($table, $dataInsert) {
        $insert=$this->db->insert_batch($table, $dataInsert);
       
        return $insert;
    }

    /* UPDATE RECORD FROM SINGLE TABLE */
    function updateFields($table, $data, $where){
        $update= $this->db->update($table, $data, $where);
    //    if($this->db->affected_rows() > 0){
        if($update){
            return true;
        }else{
            return false;
        }
    }
    
    /* UPDATE RECORD FROM TABLE */
    function deleteData($table,$where){
        $this->db->where($where);
        $this->db->delete($table); 
        if($this->db->affected_rows() > 0){
            return true;
        }else{
            return false;
        }   
    }
    /* Delete RECORD FROM TABLE */
    function deleteDataJobType($table,$where,$where_in){
        $this->db->where($where);
        $this->db->where_not_in('questionId',$where_in);
        $this->db->delete($table); 
        if($this->db->affected_rows() > 0){
            return true;
        }else{
            return false;
        }   
    }
    
    /* GET SINGLE RECORD 
     * Modified in ver 2.0
     */
    function getsingle($table, $where = '', $fld = NULL, $order_by = '', $order = '') {
        if ($fld != NULL) {
            $this->db->select($fld);
        }
        $this->db->limit(1);

        if ($order_by != '') {
            $this->db->order_by($order_by, $order);
        }
        if ($where != '') {
            $this->db->where($where);
        }

        $q = $this->db->get($table);
        return $q->row_array();
    }
    
    /* GET MULTIPLE RECORD 
     * Modified in ver 2.0
     */
    function getAll($table,$where = '', $order_fld = '', $order_type = '', $select = 'all', $limit = '', $offset = '',$group_by='') {
        $data = array();
        if ($select == 'all') {
            $this->db->select('*');
        } else {
            $this->db->select($select);
        }
        if($group_by !=''){
            $this->db->group_by($group_by);
        }
        $this->db->from($table);
 if ($where != '') {
            $this->db->where($where);
        }
        if ($limit != '' && $offset != '') {
            $this->db->limit($limit, $offset);
        } else if ($limit != '') {
            $this->db->limit($limit);
        }
        if ($order_fld != '' && $order_type != '') {
            $this->db->order_by($order_fld, $order_type);
        }
        $q = $this->db->get();
        return $q->result(); //return multiple records
    }
    
    /* get single record using join 
     * Modified in ver 2.0
     */
    function GetSingleJoinRecord($table, $field_first, $tablejointo, $field_second,$field_val='',$where="") {
        $data = array();
        if(!empty($field_val)){
            $this->db->select("$field_val");
        }else{
            $this->db->select("*");
        }
        $this->db->from("$table");
        $this->db->join("$tablejointo", "$tablejointo.$field_second = $table.$field_first","inner");
        if(!empty($where)){
            $this->db->where($where);
        }
        $q = $this->db->get();
        return $q->row();  //return only single record
    }

    /* Get mutiple records using join 
     * Modified in ver 2.0
     */ 
    function GetJoinRecord($table, $field_first, $tablejointo, $field_second,$field_val='',$where="",$group_by='',$order_fld='',$order_type='', $limit = '', $offset = '') {
        $data = array();
        if(!empty($field_val)){
            $this->db->select("$field_val");
        }else{
            $this->db->select("*");
        }
        $this->db->from("$table");
        $this->db->join("$tablejointo", "$tablejointo.$field_second = $table.$field_first","inner");
        if(!empty($where)){
            $this->db->where($where);
        }
        if(!empty($group_by)){
            $this->db->group_by($group_by);
        }

        if ($limit != '' && $offset != '') {
            $this->db->limit($limit, $offset);
        } else if ($limit != '') {
            $this->db->limit($limit);
        }
        if(!empty($order_fld) && !empty($order_type)){
            $this->db->order_by($order_fld, $order_type);
        }
        $q = $this->db->get();
        return $q->result();
    }
    
    /* Get records joining 3 tables 
     * Modified in ver 2.0
     */
    function GetJoinRecordThree($table, $field_first, $tablejointo, $field_second,$tablejointhree,$field_three,$table_four,$field_four,$field_val='',$where="" ,$group_by="",$order_fld='',$order_type='', $limit = '', $offset = '') {
        $data = array();
        if(!empty($field_val)){
            $this->db->select("$field_val");
        }else{
            $this->db->select("*");
        }
        $this->db->from("$table");
        $this->db->join("$tablejointo", "$tablejointo.$field_second = $table.$field_first",'inner');
        $this->db->join("$tablejointhree", "$tablejointhree.$field_three = $table_four.$field_four",'inner');
        if(!empty($where)){
            $this->db->where($where);
        }

        if(!empty($group_by)){
            $this->db->group_by($group_by);
        }
        
        if ($limit != '' && $offset != '') {
            $this->db->limit($limit, $offset);
        } else if ($limit != '') {
            $this->db->limit($limit);
        }
        
        if(!empty($order_fld) && !empty($order_type)){
            $this->db->order_by($order_fld, $order_type);
        }
        $q = $this->db->get();
        return $q->result();
    }
    
    /* Exceute a custom build query by query binding- Useful when we are not able to build queries using CI DB methods
     * Prefreably to be used in SELECT queries
     * The main advantage of building query this way is that the values are automatically escaped which produce safe queries.
     * See example here: https://www.codeigniter.com/userguide3/database/queries.html#query-bindings
     * Modified in ver 2.0
     */
    public function custom_query($myquery, $bind_data=array()){
        $query = $this->db->query($myquery, $bind_data);
        return $query->result();
    }

    /* check if any value exists in and return row if found */
    public function is_id_exist($table,$key,$value){
        $this->db->select("*");
        $this->db->from($table);
        $this->db->where($key,$value);
        $ret = $this->db->get()->row();
        if(!empty($ret)){
            return $ret;
        }
        else
            return FALSE;
    }
    
    /* Get single value based on table field */
    public function get_field_value($table, $where, $key){ 
        $this->db->select($key);
        $this->db->from($table);
        $this->db->where($where);
        $ret = $this->db->get()->row();
        if(!empty($ret)){
            return $ret->$key;
        }
        else
            return FALSE;
    }
    
    /* Get total records of any table */
    function get_total_count($table, $where=''){
        $this->db->from($table);
        if(!empty($where))
            $this->db->where($where);
        
        $query = $this->db->get();
        return $query->num_rows(); //total records
    }
    
    /* Check if given data exists in table and return record if exist- Very useful fn
     * Modified in ver 2.0
     */
    function is_data_exists($table, $where){
        $this->db->from($table);
        $this->db->where($where);
        $query = $this->db->get();
        $rowcount = $query->num_rows();
        if($rowcount==0){
            return FALSE; //record not found
        }
        else {
            return $query->row(); //return record if found (In preveious versions, this use to return TRUE(bool) only)
        }
    } //nd function
    function userInfo($where){
        $userPath    = base_url().USER_AVATAR_PATH.'thumb/';
        $userDefault = base_url().USER_DEFAULT_AVATAR;
        $this->db->select('id,
            id as userId,
            fullName,
            email,
            authToken,
            userType,
        (case when (profileImage = "") 
        THEN "'.$userDefault.'" ELSE
        concat("'.$userPath.'",profileImage) 
        END) as profileImage,
        (case when (userType = 1) 
        THEN "Super Admin" when (userType = 2) 
        THEN "Customer" when (userType = 3) 
        THEN "Employee" ELSE
        "Unknown" 
        END) as userRole');
        $this->db->from(USERS);
        $this->db->where($where);
        $sql= $this->db->get();

        if($sql->num_rows()):
            return $sql->row_array();
        endif;
        return false;
    } //End Function usersInfo 
    function adminInfo($where){
        $userPath    = base_url().ADMIN_AVATAR_PATH.'thumb/';
        $userDefault = base_url().ADMIN_DEFAULT_AVATAR;
        $this->db->select('a.id,
            a.id as userId,
            a.fullName,
            a.email,
            a.authToken,
            a.userType,
        (case when (a.profileImage = "") 
        THEN "'.$userDefault.'" ELSE
        concat("'.$userPath.'",a.profileImage) 
        END) as profileImage,
        (case when (a.userType = 1) 
        THEN "Super Admin" when (a.userType = 2) 
        THEN "Customer" when (a.userType = 3) 
        THEN "Employee" ELSE
        "Unknown" 
        END) as userRole,ar.roleId,ar.userType');
        $this->db->from('admin as a');
        $this->db->join('adminRole as ar','a.roleId=ar.roleId');
        $this->db->where($where);
        $sql= $this->db->get();

        if($sql->num_rows()):
            return $sql->row_array();
        endif;
        return false;
    } //End Function usersInfo 
    /**
     * Generate auth token for API users
     * Modified in version 2.0
    */
    function generate_token(){
        $this->load->helper('security');
        $res = do_hash(time().mt_rand());
        $new_key = substr($res,0,config_item('rest_key_length'));
        return $new_key;

    }
    /**
    *
    *
    ****/
    function get_client_ip() {
    $ipaddress = '';
    if (getenv('HTTP_CLIENT_IP'))
        $ipaddress = getenv('HTTP_CLIENT_IP');
    else if(getenv('HTTP_X_FORWARDED_FOR'))
        $ipaddress = getenv('HTTP_X_FORWARDED_FOR');
    else if(getenv('HTTP_X_FORWARDED'))
        $ipaddress = getenv('HTTP_X_FORWARDED');
    else if(getenv('HTTP_FORWARDED_FOR'))
        $ipaddress = getenv('HTTP_FORWARDED_FOR');
    else if(getenv('HTTP_FORWARDED'))
       $ipaddress = getenv('HTTP_FORWARDED');
    else if(getenv('REMOTE_ADDR'))
        $ipaddress = getenv('REMOTE_ADDR');
    else
        $ipaddress = 'UNKNOWN';
    return $ipaddress;
}
    function adminEmails(){
        $email = array();
        $this->db->select('email');
        $this->db->from('admin');  
        $sql = $this->db->get();
        if($sql->num_rows()):
            foreach ($sql->result() as $k => $v) {
              $email[] = $v->email;
            }
        endif;
        return $email;
    } //End Function usersInfo 
    function menus($where){
        $adminId = $where['id'];
        $isAdmin = $this->common_model->is_data_exists('admin',array('id'=>$adminId));
        $roleId = $isAdmin ? $isAdmin->roleId:0;
        $setData = ($isAdmin->roleId !=1)? ",p.privilegeId,p.roleId,p.roleId,p.viewData,p.addData,p.editData,p.deleteData" :"";
        $array =    array();
        $this->db->select("m.*".$setData);
        $this->db->from('menu as m');
        ($isAdmin->roleId !=1) ?$this->db->join('privilege as p','p.menuId=m.menuId') :'';
        ($isAdmin->roleId !=1) ? $this->db->where(array('p.roleId'=>$roleId)) :"";
        $sql        = $this->db->get();
        if($sql->num_rows()){
            $array  = $sql->result();
            if($isAdmin->roleId==1){
                foreach ($array as $y => $m) {
                    $array[$y]->privilegeId     = 0;
                    $array[$y]->roleId          = 1;
                    $array[$y]->viewData        = 1;
                    $array[$y]->addData         = 1;
                    $array[$y]->editData        = 1;
                    $array[$y]->deleteData      = 1;
                }
            }
        }
        return $array;
    }//end function
} //end of class
/* Do not close php tags */
/* IMP: Do not add any new method in this file */