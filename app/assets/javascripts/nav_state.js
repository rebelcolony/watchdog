$(document).ready(function() {
 
	// store url for current page as global variable
	current_page = document.location.href

// apply selected states depending on current page
	if (current_page.match(/admin\/posts/)) {
		$("#people").addClass('active');
	} else if (current_page.match(/.com\/$/)) {
		$('#people').addClass('active');
	} else if (current_page.match(/.com$/)) {
		$('#people').addClass('active');
	} else if (current_page.match(/people/)) {
		$('#people').addClass('active');	
	} else if (current_page.match(/3000\/$/)) {
		$('#people').addClass('active');		
	};
});