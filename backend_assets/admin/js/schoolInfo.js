$("#smart-form-schoolinfo").validate({// Rules for form validation
  errorClass    : errorClass,
  errorElement  : errorElement,
  highlight: function(element) {
    $(element).parent().removeClass('state-success').addClass("state-error");
    $(element).removeClass('valid');
  },
  unhighlight: function(element) {
    $(element).parent().removeClass("state-error").addClass('state-success');
    $(element).addClass('valid');
  },
  rules : {
    schoolName : {
      required : true
    },
    schoolEmail : {
      required : true,
      email : true
    }

  },
  // Messages for form validation
  messages : {
        schoolName : {
          required : 'Please enter your school name'
        },
        schoolEmail : {
          required : 'Please enter your email address',
          email : 'Please enter a valid email address'
        }
  },
  // onfocusout: injectTrim($.validator.defaults.onfocusout),
  // Do not change code below
  errorPlacement : function(error, element) {
    error.insertAfter(element.parent());
  }
});
// Validation
$(function() {   
  $(document).on('submit', "#smart-form-schoolinfo", function (event) {
    toastr.clear();
    event.preventDefault();
    var formData = new FormData(this);
    $.ajax({
        type: "POST",
        url: base_url+'adminapi/'+$(this).attr('action'),
        headers: { 'authToken': authToken },
        data: formData, //only input
        processData: false,
        contentType: false,
        cache: false,
        beforeSend: function () {
          preLoadshow(true);
          $('#submit').prop('disabled', true);
        },
        success: function (res) {
          preLoadshow(false);
          setTimeout(function(){  $('#submit').prop('disabled', false); },4000);
          if(res.status=='success'){
            toastr.success(res.message, 'Success', {timeOut: 3000});
            setTimeout(function(){window.location.reload(); },4000);
          }else{
            toastr.error(res.message, 'Alert!', {timeOut: 4000});
          }
        }
    });
  });
  //fromsubmit
});