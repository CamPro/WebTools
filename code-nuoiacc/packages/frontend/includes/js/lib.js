jQuery(document).ready(function(e) {
    jQuery('#btn-booking').click(function(e){
		var _name = jQuery('#full_name').val();
			_email = jQuery('#email').val()
			_address = jQuery('#address').val();
			_phone = jQuery('#phone').val();
			_fax = jQuery('#fax').val();
			_departure = jQuery('#departure_book').val();
			_adult = jQuery('#adult').val();
		if(!_name || !_email || !_address || !_phone || !_fax || !_departure || !_adult)
		{
			alert('Mời nhập đầy đủ và chính xác thông tin để chúng tôi có thể hỗ trợ bạn tốt nhất!');
		}
		else
		{
			if(check_email(_email))
			{
				var dataString = jQuery("form[name=Booking]").serialize();
				jQuery.ajax({
					url:'booking.php',
					type:'POST',
					data:dataString,
					beforeSend: function(){
						jQuery('.result-booking').html('<i class="fa fa-spin fa-refresh"></i>Đang thực hiện, vui lòng chờ trong giây lát!');
					},
					success: function(result){
						console.log(result);
						setTimeout(function(){
							var results = jQuery.parseJSON(result);
							jQuery('.result-booking').html(results.message).addClass(results.outcome);
							jQuery('#btn-resset').trigger('click');
						},2000);
					}
				});
			}
			else
			{
				alert('Mời nhập đúng email.');
			}
		}
	});
});
function check_email(email){
	var pattern = new RegExp(/^[+a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/i);
		return pattern.test(email);
}
function checkIt(evt) {
	evt = (evt) ? evt : window.event;
	var charCode = (evt.which) ? evt.which : evt.keyCode;
	if (charCode> 31 && (charCode < 48 || charCode> 57)) {
		alert("Vui lòng nhập số!");
		return false;
	}
	return true;
}