// Toggle Individual Div
function toggleSlide(toggleBar, toggleDiv, toggleClass, toggleDuration){
	Effect.toggle(toggleDiv, 'blind', { beforeSetup: function(){ $(toggleBar).toggleClassName(toggleClass); }, duration: toggleDuration });
}


// Toggle All Divs
function toggleAll(){
	$('toggleContainer').toggleClassName("openAll");
	if ($('toggleContainer').className=="openAll"){															// If opening the divs..
		$($("ccrRiTopViewAll").getElementsByTagName("a")[0]).update("collapse all");						// Toggle expand/collapse button
		$$(".ccrRiRow").each(function(elmt){elmt.addClassName('ccrRiRowActive');});							// Toggle the open/close arrows
		$$(".ccrRiData").each(function(elmt){if(elmt.style.display=="none"){Effect.BlindDown(elmt);}});		// If hidden, display div
	} else {																								// If closing the divs...
		$($("ccrRiTopViewAll").getElementsByTagName("a")[0]).update("expand all");							// Toggle expand/collapse button
		$$(".ccrRiRow").each(function(elmt){elmt.removeClassName('ccrRiRowActive');});						// Toggle the open/close arrows
		$$(".ccrRiData").each(function(elmt){if(elmt.style.display!="none"){Effect.BlindUp(elmt);}});		// If not hidden, hide div
	}
}


// Toggle Between Data (2 sets)
function toggleDataA(){
	$("dataA").className="ccrActive";									// Change A link class to active
	$("dataB").className="";											// Remove B link class 
	$$(".data_a").each(function(elmt){elmt.style.display="block";});	// Show A data
	$$(".data_b").each(function(elmt){elmt.style.display="none";});		// Hide B data
}

function toggleDataB(){
	$("dataA").className="";											// Remove A link class
	$("dataB").className="ccrActive";									// Change B link class to active
	$$(".data_a").each(function(elmt){elmt.style.display="none";});		// Hide A data
	$$(".data_b").each(function(elmt){elmt.style.display="block";});	// Show B data
}


// Toggle Between Data (4 sets)
function toggleDataC(){
	$("dataC").className="ccrActive";									// Change C link class to active
	$("dataD").className="";											// Remove D link class 
	$("dataE").className="";											// Remove E link class 
	$("dataF").className="";											// Remove F link class 
	$$(".data_c").each(function(elmt){ elmt.style.display="block";});	// Show C data
	$$(".data_d").each(function(elmt){ elmt.style.display="none";});	// Hide D data
	$$(".data_e").each(function(elmt){ elmt.style.display="none";});	// Hide E data
	$$(".data_f").each(function(elmt){ elmt.style.display="none";});	// Hide F data
}

function toggleDataD(){
	$("dataC").className="";											// Remove C link class
	$("dataD").className="ccrActive";									// Change D link class to active 
	$("dataE").className="";											// Remove E link class 
	$("dataF").className="";											// Remove F link class 
	$$(".data_c").each(function(elmt){ elmt.style.display="none";});	// Hide C data
	$$(".data_d").each(function(elmt){ elmt.style.display="block";});	// Show D data
	$$(".data_e").each(function(elmt){ elmt.style.display="none";});	// Hide E data
	$$(".data_f").each(function(elmt){ elmt.style.display="none";});	// Hide F data
}

function toggleDataE(){
	$("dataC").className="";											// Remove C link class
	$("dataD").className="";											// Remove D link class 
	$("dataE").className="ccrActive";									// Change E link to active 
	$("dataF").className="";											// Remove F link class 
	$$(".data_c").each(function(elmt){ elmt.style.display="none";});	// Hide C data
	$$(".data_d").each(function(elmt){ elmt.style.display="none";});	// Hide D data
	$$(".data_e").each(function(elmt){ elmt.style.display="block";});	// Show E data
	$$(".data_f").each(function(elmt){ elmt.style.display="none";});	// Hide F data
}

function toggleDataF(){
	$("dataC").className="";											// Remove C link class
	$("dataD").className="";											// Remove D link class 
	$("dataE").className="";											// Remove E link class 
	$("dataF").className="ccrActive";									// Change F link class to active 
	$$(".data_c").each(function(elmt){ elmt.style.display="none";});	// Hide C data
	$$(".data_d").each(function(elmt){ elmt.style.display="none";});	// Hide D data
	$$(".data_e").each(function(elmt){ elmt.style.display="none";});	// Hide E data
	$$(".data_f").each(function(elmt){ elmt.style.display="block";});	// Hide F data
}