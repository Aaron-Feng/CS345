 $(document).ready(function(){
    $('[data-toggle="tooltip"]').tooltip(); 
	
	
//before clicking Compute button; when moving cursor out of this input box

	$('input[placeholder]').blur(function(){
		$(this).closest('.form-group').removeClass('has-error');
		$('div.error').remove();
		if($(this).val()===''){// "123"==123 true "123"===123 false
			$(this).closest('.form-group').addClass('has-error');
			$(this).after("<div class='error'>This field is required</div>");
			$(this).focus();
		}
	});

});

function onSubmit(){
var p=parseFloat($('#inputInvestment').val());
var r=parseFloat($('#interestRate').val());
var n=parseInt($('#years').val());
var A=p*Math.pow((1+r),n);
$('#finalValues').val(A.toFixed(2));
return false;
}