<?php
/*	echo "<pre>";
	print_r($companyinfo);
	echo "</pre>";*/
	
?>
<!-- widget grid -->
<section id="widget-grid" class="">       
	<!-- row -->
	<div class="row">
		<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-md-offset-3 col-lg-offset-3">
			<div class="well no-padding">
				<form method="post" action="companyinfo" id="smart-form-companyinfo" class="smart-form client-form" enctype="multipart/form-data" novalidate autocomplete="off">
					<header>
						Company info
					</header>

					<fieldset>
						<section>
							<input type="hidden" name="companyId" value="<?= encoding($companyinfo['companyId']);?>" >
							<label class="label">Company Name</label>
							<label class="input"> <i class="icon-append fa fa-th-list"></i>
								<input type="text" name="companyName" placeholder="Company name" id="comapnyName" value="<?= $companyinfo['companyName'];?>" >
								<b class="tooltip tooltip-bottom-right"> Please enter your comapny name</b> </label>
						</section>
						<section>
							<label class="label">Company Email</label>
							<label class="input"> <i class="icon-append fa fa-reply-all"></i>
								<input type="text" name="companyEmail" placeholder="Company email" id="companyEmail" value="<?= $companyinfo['email'];?>" >
								<b class="tooltip tooltip-bottom-right"> Please enter your comapny email</b> </label>
						</section>
						<section>
							<label class="label">Logo</label>
							<div class="input input-file">
								<span class="button"><input type="file" name="logoImage" id="file" onchange="filePreviewImage(this);this.parentNode.nextSibling.value = this.value" accept="image/*">Browse</span><input type="text" readonly="">
							</div>
							<div class="note">
							<strong>Note:</strong> Image dimension should be within 250X56.
							</div>
							
						</section>
						<section>

							
									<?php 
										$logo = base_url().'backend_assets/img/company_logo_default.png';
										if(!empty($companyinfo['logo'])){
											//if(file_exists(base_url().'company_assets/logo/'.$companyinfo['logo'])){
											$logo = base_url().'company_assets/logo/'.$companyinfo['logo'];
											//}
										}

									 ?>
									 <div id="privew">
										<img src="<?= $logo; ?>" class="img img-responsive img-thunbnail">
									</div>
						
						</section>

						
					</fieldset>
					<footer>
						<button type="submit" id="submit" class="btn btn-primary">
							Update
						</button>
					</footer>
				</form>
			</div>	
		</div>
	</div>    
  	<!-- end row -->
</section>
        <!-- end widget grid -->


