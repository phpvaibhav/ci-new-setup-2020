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
    <link href="<?php echo $backend_assets; ?>css/style.css" rel="stylesheet">
     <link href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css" rel="stylesheet">
      <!-- custom -->
    <link rel="stylesheet" type="text/css" href="<?php echo $backend_assets; ?>custom/css/custom.css">
</head>

<body class="gray-bg" data-base-url="<?php echo base_url(); ?>">