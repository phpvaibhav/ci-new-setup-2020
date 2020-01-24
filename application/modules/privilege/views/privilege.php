 <?php $backend_assets =  base_url().'backend_assets/';?>
    <!-- widget grid -->
        <section id="widget-grid" class="">
        
           <!-- Widgets -->
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                	<!-- set -->
							<div class="panel panel-default">
								<div class="panel-body status">
								
									<div class="row">
										<div class="text">
											<?php if(!empty($roles)){ 
												foreach ($roles as $key => $role) {
											?>
											<div class="col-sm-12 col-md-3 col-lg-3">
												<div class="well text-center connect">
													<img src="<?= $backend_assets;?>img/avatars/male.png" alt="img" class="margin-bottom-5 margin-top-5">
													<br>
													<span class="font-md"><b><?= ucfirst($role->userType); ?></b></span>
													<br>
													<a href="javascript:void(0);" class="btn btn-sm btn-danger margin-top-5 margin-bottom-5" data-roleid="<?= encoding($role->roleId); ?>" onClick="openSetRole(this);"  > <span class="font-xs">Set Privilege</span> </a>
												</div>
											</div>
											<?php } }else{ ?>
												<div class="col-sm-12 col-md-12 col-lg-12">
												<div class="well text-center connect">
													<center>No Result Found.</center>
												</div>
											</div>
											<?php } ?>
										</div>
									</div>
								
								</div>
							</div>
                	<!-- set -->

                </div>
              
            </div>
            <!-- #END# Widgets -->
        
        </section>
        <!-- end widget grid -->
<!-- Modal -->
<div class="modal fade" id="SetPerRole" tabindex="-1" role="dialog">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
				&times;
				</button>
				<h4 class="modal-title">
					Set Privilege
				</h4>
			</div>
			<div class="modal-body">
				<!-- widget content -->
				<div class="widget-body no-padding">
					<form action="privilege/setPrivilege" id="setPrivilegeUpdate" class="smart-form" novalidate="novalidate" autocomplete="off" enctype="multipart/form-data">
					
						<fieldset>
							<section>
								<input type="hidden" name="roleId" id="roleId" value="0" >
								<div class="row" id="sethtmlPermission"></div>
							</section>

						</fieldset>
						<footer>
							<button type="submit" id="submit" class="btn btn-primary">
								Save
							</button>
						</footer>
					</form>
				</div>
				<!-- end widget content -->
			</div>
		</div>
	</div>
</div>
<!-- End modal -->