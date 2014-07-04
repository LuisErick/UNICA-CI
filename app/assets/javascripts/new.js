$(document).ready(function(){	
	for (var i = 1; i <= 18; i++) {
		var x = $('#'+i+'fac');
		x.click(esconder);
		};	
	function esconder(){
		var texto = $(this).html();
		var textfield = $('#college_faculty_id');
		textfield.attr('value',texto);
	}
});