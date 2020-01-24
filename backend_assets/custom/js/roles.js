/*listing job */
var jobtype_list = $('#role_list').DataTable({ 
                    "processing"  : true, //Feature control the processing indicator.
                    "serverSide"  : true, //Feature control DataTables' servermside processing mode.
                    "order"       : [], //Initial no order.
                    "lengthChange": false,
                    "oLanguage"   : {
                      "sEmptyTable" : '<center>No Role found</center>',
                      "sSearch"     : '<span class="input-group-addon"><i class="glyphicon glyphicon-search"></i></span>' 
                    },
                    "oLanguage"   : {
                      "sZeroRecords"  : '<center>No Role found</center>',
                      "sSearch"       : '<span class="input-group-addon"><i class="glyphicon glyphicon-search"></i></span>' 
                    },
                    initComplete  : function () {
                      $('.dataTables_filter input[type="search"]').css({ 'height': '32px'});
                    },
                    // Load data for the table's content from an Ajax source
                    "ajax": {
                        "url"     : base_url+"adminapi/role/roleList",
                        "type"    : "POST",
                        "dataType": "json",
                        "headers" : { 'authToken':authToken},
                        "dataSrc" : function (jsonData) {
                           
                            return jsonData.data;
                        }
                    },
                    //Set column definition initialisation properties.
                    "columnDefs": [
                      { orderable : false, targets : -1 },    
                    ]
                  });
        /*listing customer_list*/
//job status      
function roleStatus(e){
   toastr.clear();
  swal({
    title               : "Are you sure?",
    text                :  $(e).data('message'),
    type                : "warning",
    showCancelButton    : true,
    confirmButtonClass  : "btn-danger",
    confirmButtonText   : "Yes",
    cancelButtonText    : "No",
    closeOnConfirm      : true,
    closeOnCancel       : true,
   // showLoaderOnConfirm: true
  },
  function(isConfirm) {
    if (isConfirm) {
      /*ajax*/
      $.ajax({
              type        : "POST",
              url         : base_url+'adminapi/role/roleStatus',
              data        : {use:$(e).data('useid'), status:$(e).data('status') },
              headers     : { 'authToken':authToken},
              cache       : false,
              beforeSend  : function() {
                preLoadshow(true);
              },     
              success     : function (res) {
                preLoadshow(false);
                if(res.status=='success'){
                    toastr.success(res.message, 'Success', {timeOut: 3000});
                    //  swal("Success", "Your process  has been successfully done.", "success");
                    setTimeout(function(){window.location.reload(); },2000);
                  }else{
                    toastr.error(res.message, 'Alert!', {timeOut: 5000});
                }        
              }
            });
      /*ajax*/   
    } else {
      //swal("Cancelled", "Your Process has been Cancelled", "error");
    }
  });
}
/***************************************************/
$("#roleAddUpdate").validate({// Rules for form validation
    errorClass    : errorClass,
    errorElement  : errorElement,
    highlight     : function(element) {
      $(element).parent().removeClass('state-success').addClass("state-error");
      $(element).removeClass('valid');
    },
    unhighlight   : function(element) {
      $(element).parent().removeClass("state-error").addClass('state-success');
      $(element).addClass('valid');
    },
    rules       : {
                  userType : {
                    required : true
                  }
    },
    // Messages for form validation
    messages : {
      userType : {
        required : 'Please enter your user type'
      }
  },
  // Ajax form submition
  submitHandler : function(form) {
    toastr.clear();
    $('#submit').prop('disabled', true);
    $.ajax({
            type      : "POST",
            url       : base_url+'adminapi/'+$(form).attr('action'),
            headers   : { 'authToken':authToken},
            data      : $(form).serialize(),
            cache     : false,
            beforeSend: function() {
              preLoadshow(true);
              $('#submit').prop('disabled', true);  
            },     
            success: function (res) {
              preLoadshow(false);
              setTimeout(function(){  $('#submit').prop('disabled', false); },4000);
              if(res.status=='success'){
                toastr.success(res.message, 'Success', {timeOut: 3000});
                setTimeout(function(){ window.location = base_url+'roles'; },4000);
              }else{
                toastr.error(res.message, 'Alert!', {timeOut: 4000});
              }
            }
          });
    return false; // required to block normal submit since you used ajax
  },
   onfocusout: injectTrim($.validator.defaults.onfocusout),
  // Do not change code below
  errorPlacement : function(error, element) {
    error.insertAfter(element.parent());
  }
});
  
/*roleType*/
function openRole(){
  $('#roleAddUpdate').trigger("reset");

  $('#roleId').val(0);
  $('#AURole').modal('show');
}//End open history
function editRole(e){
  $('#roleAddUpdate').trigger("reset");

  $('#roleId').val($(e).data('rid'));
  $('#userType').val($(e).data('utype'));
  $('#AURole').modal('show');
}//End open history

function roleDelete(e){
   toastr.clear();
  swal({
    title               : "Are you sure?",
    text                :  $(e).data('message'),
    type                : "warning",
    showCancelButton    : true,
    confirmButtonClass  : "btn-danger",
    confirmButtonText   : "Yes",
    cancelButtonText    : "No",
    closeOnConfirm      : true,
    closeOnCancel       : true,
   // showLoaderOnConfirm: true
  },
  function(isConfirm) {
    if (isConfirm) {
      /*ajax*/
      $.ajax({
              type      : "POST",
              url       : base_url+'adminapi/role/roleDelete',
              data      : {use:$(e).data('useid')},
              headers   : { 'authToken':authToken},
              cache     : false,
              beforeSend: function() {
                preLoadshow(true);
              },     
              success   : function (res) {
                preLoadshow(false);
                if(res.status=='success'){
                  toastr.success(res.message, 'Success', {timeOut: 3000});
                  //  swal("Success", "Your process  has been successfully done.", "success");
                  setTimeout(function(){  window.location = base_url+'roles'; },3000);
                }else{
                  toastr.error(res.message, 'Alert!', {timeOut: 5000});
                }         
              }
            });
      /*ajax*/
   
    } else {
      //swal("Cancelled", "Your Process has been Cancelled", "error");
    }
  });
}