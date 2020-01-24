<?php $backend_assets =  base_url().'backend_assets/'; ?>
 <!-- Mainly scripts -->
    <script src="<?php echo $backend_assets; ?>js/jquery-3.1.1.min.js"></script>
    <script src="<?php echo $backend_assets; ?>js/bootstrap.min.js"></script>
    <script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>
    <!-- iCheck -->
    <script src="<?php echo $backend_assets; ?>js/plugins/iCheck/icheck.min.js"></script>
    <script>
        $(document).ready(function(){
            $('.i-checks').iCheck({
                checkboxClass: 'icheckbox_square-green',
                radioClass: 'iradio_square-green',
            });
        });
    </script>
        <!-- JQUERY VALIDATE -->
    <script src="<?php echo $backend_assets; ?>js/plugins/validate/jquery.validate.min.js"></script>
    <script src="<?php echo $backend_assets; ?>admin/js/login.js"></script>
    <script src="<?php echo $backend_assets; ?>custom/js/custom.js"></script>
  </body>
</html>
