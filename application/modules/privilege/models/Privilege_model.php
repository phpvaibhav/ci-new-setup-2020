<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Privilege_model extends CI_Model {

    function assignMenus($roleId){
        $isPrivilege  = $this->common_model->is_data_exists('privilege',array('roleId'=>$roleId));
        $setData      = !empty($isPrivilege)? ",p.privilegeId,p.roleId,p.roleId,p.viewData,p.addData,p.editData,p.deleteData" :"";
        $this->db->select('m.*'.$setData);
        $this->db->from('menu as m');
         !empty($isPrivilege) ?$this->db->join('privilege as p','p.menuId=m.menuId') :'';
        !empty($isPrivilege) ? $this->db->where(array('p.roleId'=>$roleId)) :"";
        $sql = $this->db->get();

        if($sql->num_rows()){
            return $sql->result(); 
        }//end 
        return false;
    }//end function
}//End Class