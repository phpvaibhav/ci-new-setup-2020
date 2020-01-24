function openSetRole(e){
	$('#setPrivilegeUpdate').trigger("reset");
	var roleId = $(e).data('roleid');
	$('#roleId').val(roleId);
  $('#sethtmlPermission').html("");
	/*ajax*/
	$.ajax({
		type	: "POST",
		url 	: base_url+'privilege/getMenuList',
		data 	: {roleId:roleId },
		headers : { 'authToken':authToken},
		cache 	: false,
		beforeSend: function() {
			preLoadshow(true);
		},     
		success: function (res) {
			preLoadshow(false);
			$('#sethtmlPermission').html(res);
			$('#SetPerRole').modal('show');
			
		}
	});
	/*ajax*/ 
	
}//End open history


// Validation
$(function() {   
  $(document).on('submit', "#setPrivilegeUpdate", function (event) {
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