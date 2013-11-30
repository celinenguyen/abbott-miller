//= require_tree .

$(document).ready(function() {

	$("#intro").waypoint(function(direction) {
		if (direction == "down") {
			// #summary off
			$("#summary h3").animate({ opacity: 0 });
      $("#summary li span:first-child").animate({ opacity: 0 });
      $("#summary li span").animate({ opacity: 0 });
		}
	});

  $("#summary").waypoint(function(direction) {
  	if (direction === "down") { 
  		// #summary on
  		$("#summary h3").animate({ opacity: 1 });
      $("#summary li span:first-child").delay(200).animate({ opacity: 1 });
      $("#summary li span").delay(500).animate({ opacity: 1 });
  	}
  });

  $("#abbott-and-ellen").waypoint(function(direction) {
  	if (direction == "down") {
  		// #summary off
  		$("#summary h3").animate({ opacity: 0 });
      $("#summary li span").animate({ opacity: 0 });
  	}
  	else {
  		// #summary on
  		$("#summary h3").delay(700).animate({ opacity: 1 });
      $("#summary li span").delay(700).animate({ opacity: 1 });
  	}
  });

});