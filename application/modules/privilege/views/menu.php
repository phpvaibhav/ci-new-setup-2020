<?php

/* echo "<pre>";
 print_r($allMenu);
 echo "</pre>";*/


?>

<?php if(!empty($allMenu)){ foreach ($allMenu as $key => $val) {?>
<div class="col col-3 alert alert-<?= (($key%2==0) ?'info':'success');?>">
	<label class="label"><b><i class="<?= $val->icon; ?>"></i> <?= $val->title; ?></b></label>
	<input type="hidden" name="menuId[]" value="<?= $val->menuId; ?>">
	<input type="hidden" name="privilegeId_<?= $val->menuId; ?>" value="<?= !empty($val->privilegeId) ?$val->privilegeId:0; ?>">
	<section>
			<label class="checkbox">
			<input type="checkbox" name="viewData_<?= $val->menuId; ?>" <?= (!empty($val->viewData)&& $val->viewData==1)?'checked="checked"':''; ?> value="1"  >
			<i></i>View</label>
			<label class="checkbox">
			<input type="checkbox" name="addData_<?= $val->menuId; ?>" <?= (!empty($val->addData)&& $val->addData==1)?'checked="checked"':''; ?> value="1">
			<i></i>Add</label>
			
			<label class="checkbox">
			<input type="checkbox" name="editData_<?= $val->menuId; ?>" <?= (!empty($val->editData)&& $val->editData==1)?'checked="checked"':''; ?> value="1">
			<i></i>Edit</label>
			<label class="checkbox">
			<input type="checkbox" name="deleteData_<?= $val->menuId; ?>" <?= (!empty($val->deleteData)&& $val->deleteData==1)?'checked="checked"':''; ?> value="1">
			<i></i>Delete</label>
	</section>
</div>
<?php } }else{ ?>
	<div class="col col-md-12 alert alert-info text-center"> No result found.</div>
<?php }  ?>