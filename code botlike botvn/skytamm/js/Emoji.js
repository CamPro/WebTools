toastr.options = {
  "closeButton": true,
  "debug": false,
  "newestOnTop": true,
  "progressBar": false,
  "positionClass": "toast-top-right",
  "preventDuplicates": true,
  "onclick": null,
  "showDuration": "300",
  "hideDuration": "1000",
  "timeOut": "5000",
  "extendedTimeOut": "1000",
  "showEasing": "swing",
  "hideEasing": "linear",
  "showMethod": "fadeIn",
  "hideMethod": "fadeOut"
}
/*
	 copy emoticon
	 */
function executeCopy(text) {
	var input = document.getElementById("hiddenTextArea");
	input.value = text;
	input.focus();
	input.select();
	document.execCommand('Copy');
	toastr.success("Đã copy Text của biểu tượng cảm xúc")
}
function loaded(){
	//emoticons
	var emojiElem = document.getElementsByClassName("emoji");

	//event listeners for emoji clicks
	for (var counter = 0; emojiElem[counter]; counter++) {
		emojiElem[counter].addEventListener('click', function(e) {
			var data_c = e.srcElement.getAttribute('data-c');
			document.getElementById("copyText").value += data_c;
		});
	}
	//main form to be submitted
	document.getElementById("mainForm").addEventListener('submit', function(e) {
		e.preventDefault();
	});
	//copy text button
	document.getElementById("copyTextButton").addEventListener('click', function(e) {
		executeCopy(document.getElementById("copyText").value);
	});
	//clear text button
	document.getElementById("clearTextButton").addEventListener('click', function(e) {
		document.getElementById("copyText").value = "";
		toastr.success("Đã xóa Text");
	});
	$('.emoji').click(function(){
		var message='Biểu tượng cảm xúc đã được thêm';
		toastr.info(message);
	});
}
window.onload=loaded;
