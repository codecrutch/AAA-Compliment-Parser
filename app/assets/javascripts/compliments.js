$(document).ready(function() {
	$(".compliment").each(function(index){
	  if(index % 3 === 0 && index !== 0) {
	    $(this).addClass("page-break")
	    console.log(index);
	  }
	})

	$(".compliment").hover(function() {
		$(this).addClass("compliment-selected");
	},
	function() {

		$(this).removeClass("compliment-selected");
	})
});