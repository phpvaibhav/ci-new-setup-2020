
<?php $backend_assets=base_url().'backend_assets/'; ?>
<div class="row">
	<div class="col-sm-12">
		<div class="well well-sm">
			<div class="row">
				<div class="col-sm-12 col-md-6 col-lg-6">
					<div class="well well-light well-sm no-margin no-padding">
						<div class="row">
							<div class="col-sm-12">
								<div id="myCarousel" class="carousel fade profile-carousel">
									<div class="air air-bottom-right padding-10">
									
										<label class="center-block padding-5 label label-<?php echo $userData['status']?'success':'danger'; ?>"> <i class="fa fa-<?php echo $userData['status']?'check':'close'; ?>"></i><?php echo $userData['status']?' Active':' Inactive'; ?></label>
								
								
									</div>
									<div class="air air-top-left padding-10">
										<h4 class="txt-color-white font-md"><?php echo date('M d,Y',strtotime($userData['crd'])); ?></h4>
									</div>

									<div class="carousel-inner">
									
										<div class="item active">
											<img src="<?php echo $backend_assets;?>img/demo/s1.jpg" alt="demo user">
										</div>
										
									</div>
								</div>
							</div>
							<div class="col-sm-12">
								<div class="row">
									<div class="col-sm-4 profile-pic">
										<?php 
											$img = $backend_assets.'img/avatars/sunny-big.png';
											if(!empty($userData['profileImage'])):
												$img = base_url().'uploads/admin/thumb/'.$userData['profileImage'];
											endif;
										?>
										<img src="<?php echo $img;?>" alt="<?php echo $userData['fullName'];?>">
										
									</div>
									<div class="col-sm-8">
										
										<?php $fullName =$userData['fullName'];
											$name = explode(" ",$fullName);
										?>
										
										<h1>
											<?php for ($i=0; $i <sizeof($name) ; $i++) { 
												if($i==0){
													echo $name[$i];
												}else{
													echo '<span class="semi-bold"> '.$name[$i].'</span> ';
												}
											} ?>
											 <!-- <span class="semi-bold">Doe</span> -->
										<br>
										<small><?php switch ($userData['userType']) {
											case 1:
												echo 'Super Admin';
												break;
											case 2:
												echo 'Customer';
												break;
											case 3:
												echo 'Employee';
												break;
											
											default:
												echo 'Unknown';
												break;
										}


										 ?></small></h1>

										<ul class="list-unstyled">
										
											<li>
												<p class="text-muted">
													<i class="fa fa-envelope"></i>&nbsp;&nbsp;<a href="mailto:<?php echo $userData['email']; ?>"><?php echo $userData['email']; ?></a>
												</p>
											</li>
											<li>
												<p class="text-muted">
													<i class="fa fa-phone"></i>&nbsp;&nbsp;<a href="javascript:void(0);"><?php echo $userData['contactNumber']; ?></a>
												</p>
											</li>
										
										</ul>
									
										<br>

									</div>
					

								</div>

							</div>

						</div>

							<!-- <div class="row">

								<div class="col-sm-12">

									<hr>

									<div class="padding-10">

										<ul class="nav nav-tabs tabs-pull-right">
											<li class="active">
												<a href="#a1" data-toggle="tab">Recent Articles</a>
											</li>

										</ul>

										<div class="tab-content padding-top-10">
											<div class="tab-pane fade in active" id="a1">

												<div class="row">

													<div class="col-xs-2 col-sm-1">
														<time datetime="2014-09-20" class="icon">
															<strong>Jan</strong>
															<span>10</span>
														</time>
													</div>

													<div class="col-xs-10 col-sm-11">
														<h6 class="no-margin"><a href="javascript:void(0);">Allice in Wonderland</a></h6>
														<p>
															Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi Nam eget dui.
															Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero,
															sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel.
														</p>
													</div>

													<div class="col-sm-12">

														<hr>

													</div>

													<div class="col-xs-2 col-sm-1">
														<time datetime="2014-09-20" class="icon">
															<strong>Jan</strong>
															<span>10</span>
														</time>
													</div>

													<div class="col-xs-10 col-sm-11">
														<h6 class="no-margin"><a href="javascript:void(0);">World Report</a></h6>
														<p>
															Morning our be dry. Life also third land after first beginning to evening cattle created let subdue you'll winged don't Face firmament.
															You winged you're was Fruit divided signs lights i living cattle yielding over light life life sea, so deep.
															Abundantly given years bring were after. Greater you're meat beast creeping behold he unto She'd doesn't. Replenish brought kind gathering Meat.
														</p>
													</div>

													<div class="col-sm-12">

														<br>

													</div>

												</div>
											</div>
										</div>

									</div>

								</div>

							</div> -->
							<!-- end row -->

						</div>

					</div>
					<div class="col-sm-12 col-md-6 col-lg-6">
						<!-- update -->
						<form action="updateUser" id="smart-form-updateuser" class="smart-form client-form" enctype="multipart/form-data" novalidate="" autocomplete="off">
							<header>
								Update
							</header>
							<fieldset>
								<input type="hidden" name="userauth" value="<?php echo $this->uri->segment(2); ?>">
								<section>
									<label class="input"> <i class="icon-append fa fa-user"></i>
									<input type="text" name="fullName" placeholder="Full name" value="<?php echo $userData['fullName']; ?>" maxlength="30" size="30">
									
									<b class="tooltip tooltip-bottom-right"> Please enter your full name</b> </label>

								</section>

								<section>
								<label class="input"> <i class="icon-append fa fa-envelope"></i>
									<input type="email" name="email" placeholder="Email address" value="<?php echo $userData['email']; ?>" maxlength="30" size="30">
									<b class="tooltip tooltip-bottom-right"> Please enter your registered email address</b> </label>
								</section>
								<section>
									<label class="input"> <i class="icon-append fa fa-phone"></i>
									<input type="text" name="contact" maxlength="20" size="20" class="number-only" placeholder="Contact"  value="<?php echo $userData['contactNumber']; ?>" data-mask="(99999) 999999">
									<b class="tooltip tooltip-bottom-right"> Please enter your contact number</b> </label>
								</section>
							<!-- 	<section>
									<label class="textarea">
									<textarea name="comment" placeholder="Comment" maxlength="500"></textarea>
									</label>
								</section> -->

								<section>
								<!-- <label class="label">Image</label> -->
								<div class="input input-file">
								<span class="button"><input type="file" name="profileImage" id="file" onchange="this.parentNode.nextSibling.value = this.value" accept="image/*">Browse</span><input type="text" readonly="">
								</div>

								</section>
							</fieldset>
						<footer>
						<button type="submit" id="submit" class="btn btn-primary">
						Update
						</button>
					</footer>

						
						</form>
						<!-- update -->
					</div>
				</div>

			</div>


	</div>

</div>

<!-- end row-->