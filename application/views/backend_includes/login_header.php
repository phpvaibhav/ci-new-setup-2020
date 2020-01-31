<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title><?php echo (isset(company_detail()['companyName']) ? company_detail()['companyName']:SITE_NAME).' | '.$title; ?></title>
    <?php
        $backend_assets =  base_url().'backend_assets/';
    ?>
    <link href="<?php echo $backend_assets; ?>css/bootstrap.min.css" rel="stylesheet">
    <link href="<?php echo $backend_assets; ?>font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="<?php echo $backend_assets; ?>css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="<?php echo $backend_assets; ?>css/animate.css" rel="stylesheet">
    <!-- Toastr style -->
    <link href="<?php echo $backend_assets; ?>css/plugins/toastr/toastr.min.css" rel="stylesheet">
    <link href="<?php echo $backend_assets; ?>css/style.css" rel="stylesheet">
    
    <!-- custom -->
    <link rel="stylesheet" type="text/css" href="<?php echo $backend_assets; ?>custom/css/custom.css">
</head>

<body class="gray-bg" data-base-url="<?php echo base_url(); ?>">
<!-- loader -->
<div class="dialog-background" id="pre-load-dailog" style="display: none;">
<div class="dialog-loading-wrapper">
    <span class="dialog-loading-icon"><img src="<?= base_url();?>backend_assets/img/ajax-loader.gif" alt="Loading..."></span>
</div>
</div> 
<!-- loader -->