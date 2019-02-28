/* *********************************************************************
		hgoszi March 2012:
		All javascript functions that provide the logic to apply OPT-IN
		& OPT-OUT for eCookies law
********************************************************************* */


function setCookie(name,value,days) {
  if (days) {
    var date = new Date();
    date.setTime(date.getTime()+(days*24*60*60*1000));
    var expires = "; expires="+date.toGMTString();
  }
  else expires = "";
  document.cookie = name+"="+value+expires+"; path=/";
}

function getCookie(name) {
  var nameEQ = name + "=";
  var ca = document.cookie.split(';');
  for(var i=0;i < ca.length;i++) {
    var c = ca[i];
    while (c.charAt(0)==' ') c = c.substring(1,c.length);
    if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length,c.length);
  }
  return null;
}


//Enables cookied when they are accepted in OPT-IN 
function clickAcptCookiesButton(checkBoxId, errorMsgId) {
		var checkBox = document.getElementById(checkBoxId);
		//Validate the checkbox
		if (checkBox.checked) {
			var banner = document.getElementById('EUCookieBannerOptIn');
			//Hide OPT-IN banner
			banner.style.display = "none";
			//Set variable and cookie
			enableCookies = 'true';
			setCookie('accepted_'+languageCookieName,'yes',365);
			//Reload page for webtrends tagging
			window.location.reload();
		}
		else{
			//Need to tick checkbox
			var errorMsg = document.getElementById(errorMsgId);
			errorMsg.style.display = "block";
		}
}

//Validation to see if the OPT-IN has been accepted
function checkIfAcceptsCookies(bannerId){
	var banner = document.getElementById(bannerId);
	//Check cookie
	if (getCookie('accepted_'+languageCookieName) != null){
		banner.style.display = "none";
		//Set variable to indicate that cookies were accepted
		enableCookies = 'true';
	}
	else{
		banner.style.display = "block";
		enableCookies = 'false';
	}

}

//Validate if its the first time for OPT-OUT site. 
function optOutInitCheck(bannerId){
	//OPT-OUT always use cookies. User should disable them.
	enableCookies = 'true';
	var banner = document.getElementById(bannerId);
	//First time. Show banner & set cookie
	if (areCookiesEnabled() && getCookie('firstTime_'+languageCookieName) == null){
		banner.style.display = "block";
		setCookie('firstTime_'+languageCookieName,'yes',365);
	}
	else{
		banner.style.display = "none";
	}

}

//Validate if its the first time for OPT-HYB site. 
function optHybInitCheck(bannerId){

	var firstClick = true;

	//Get the previous and the actual page
	var previousPage = document.referrer;
	var actualPage = window.location.href;

	//Compare to see if it is the first click on the page
	if(previousPage != 'undefined' && previousPage != '' && previousPage != null){
		previousPage = previousPage.split('/');
		actualPage = actualPage.split('/');
		
		if((previousPage[2] == actualPage[2]) && (previousPage[3] == actualPage[3])){
			firstClick = false;
		}
	}
	
	//OPT-HYB do not always use cookies on start-up
	var banner = document.getElementById(bannerId);
	//First time (First Click and NO cookie). Show banner & disable cookies
	if (areCookiesEnabled() && getCookie('hybAccepted_'+languageCookieName) == null && firstClick == true){
		banner.style.display = "block";
		enableCookies = 'false';
	}
	else{
		//Not first click or cookie already existing. Accept cookies and do not display banner and inject cookie if it was not injected.
		banner.style.display = "none";
		enableCookies = 'true';
		if(areCookiesEnabled() && getCookie('hybAccepted_'+languageCookieName) == null){
			setCookie('hybAccepted_'+languageCookieName,'yes',365);
		}
	}
}

//Init the cookies settings if needed for site
function cookiesLawInit(){
	//Logic for each selection
	if(cookiesOption == 'OPT-IN'){
		checkIfAcceptsCookies('EUCookieBannerOptIn');
	}
	if(cookiesOption == 'OPT-OUT'){
		optOutInitCheck('EUCookieBannerOptOut');
	}
	if(cookiesOption == 'OPT-HYB'){
		optHybInitCheck('EUCookieBannerOptHyp');
	}
}

//Final the cookies settings if needed for site
function cookiesLawFinal(){
	//Logic for each selection	
	if(cookiesOption == 'OPT-HYB'){
		optHybFinalCheck();
	}
}

//OPT-OUT banner dismissed
function clickDismissBannerButton(){
	//var banner = document.getElementById('EUCookieBannerOptOut');
	//banner.style.display = "none";
	window.location.reload();
}

function clickDismissHybBannerButton(){
	//var banner = document.getElementById('EUCookieBannerOptHyp');
	//banner.style.display = "none";
	enableCookies = 'true';
	setCookie('hybAccepted_'+languageCookieName,'yes',365);
	window.location.reload();
}

//OPT-OUT banner. Show more information
function getReadMoreText(readMoreMsgId,readMoreBtnId,collapseBtnId){
	var text = document.getElementById(readMoreMsgId);
	text.style.display = "block";
	var button = document.getElementById(readMoreBtnId);
	button.style.display = "none";
	button = document.getElementById(collapseBtnId);
	button.style.display = "inline";
}

//OPT-OUT banner. Hide more information
function collapseReadMoreText(readMoreMsgId,readMoreBtnId,collapseBtnId){
	var text = document.getElementById(readMoreMsgId);
	text.style.display = "none";
	var button = document.getElementById(readMoreBtnId);
	button.style.display = "inline";
	button = document.getElementById(collapseBtnId);
	button.style.display = "none";
}

//Check if cookies are enabled for user browser.
function areCookiesEnabled()
{
	var cookieEnabled = (navigator.cookieEnabled) ? true : false;

	if (typeof navigator.cookieEnabled == "undefined" && !cookieEnabled)
	{ 
		document.cookie="CookieCheck";
		cookieEnabled = (document.cookie.indexOf("CookieCheck") != -1) ? true : false;
	}
	return (cookieEnabled);
}
