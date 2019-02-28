/* *********************************************************************
		pmungch April 2012:
		All javascript functions that provide the detecting old IE browser FancyBoxAlert
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

window.onload = function(){
	popupAlertIfIEVersionIsLessThanAndEq8();
};

function popupAlertIfIEVersionIsLessThanAndEq8(){
	if($.browser.msie && parseFloat($.browser.version)<=8){
		if (getCookie('accepted') != null){
			$('#modalOldBrowserDialogueTrigger').hide();
			//Set variable to indicate that cookies were accepted
			enableCookies = 'true';
			jQuery.fancybox.close();
		}else{
			$('#modalOldBrowserDialogueTrigger').show();
			enableCookies = 'false';
			initJqueryFancyBoxComponent();
			jQuery("a#modalOldBrowserDialogueTrigger").fancybox().trigger('click');
		}
	}
}

function initJqueryFancyBoxComponent(){
			jQuery("a#modalOldBrowserDialogueTrigger").append("<DIV id='modalOldBrowserDialogue' ><DIV class='modal-oldbrowser-wrapper' ><DIV class='modal-oldbrowser-header' ><div class='modal-oldbrowser-header-title' ><H2>&#20026;&#20102;&#26356;&#22909;&#30340;&#32593;&#31449;&#20307;&#39564;&#65292;&#35831;&#21319;&#32423;&#24744;&#30340;&#27983;&#35272;&#22120;</H2></div></DIV><DIV class='clear'></DIV><DIV class='modal-oldbrowser-content' ><DIV class='modal-oldbrowser-text' ><p>&#25105;&#20204;&#27880;&#24847;&#21040;&#24744;&#27491;&#22312;&#20351;&#29992;&#30340;&#27983;&#35272;&#22120;&#29256;&#26412;&#36739;&#20302;&#65292;&#24314;&#35758;&#24744;&#21319;&#32423;&#27983;&#35272;&#22120;&#20197;&#20415;&#33719;&#24471;&#26356;&#22909;&#30340;&#20307;&#39564;&#12290;</p></DIV><DIV class='modal-oldbrowser-accept' ><A  class='modal-oldbrowser-button curvyIgnore' id='ModalContinueButton' onclick='clickContinueButtonOnFancyBox()' >&#32487;&#32493;</A></DIV></DIV></DIV></DIV>");
			jQuery("a#modalOldBrowserDialogueTrigger").fancybox();

			/* add fancybox effect to the element*/
			jQuery("a#modalOldBrowserDialogueTrigger").fancybox({
			'transitionIn'	:	'elastic',
			'transitionOut'	:	'elastic',
			'speedIn'		:	600,
			'speedOut'		:	200,
			'overlayShow'	:	false
			});

			/* set default style to the modal cookie */
			jQuery('.modal-oldbrowser-wrapper').css('color', '#ffffff');
			jQuery('.modal-oldbrowser-header').css('background-color', ' rgb(102, 106, 109)');
			jQuery('.modal-oldbrowser-content').css('paddding-left', '10px');
			jQuery('.modal-oldbrowser-wrapper').css('background-color', '#A2A6A9');
			jQuery('.modal-oldbrowser-button').css('border-color', '#ffffff');

			//comment temploraly to test on XSL template
			//jQuery("a#modalOldBrowserDialogueTrigger").fancybox().trigger('click');

}

function clickContinueButtonOnFancyBox(){
	enableCookies = 'true';
	setCookie('accepted','yes',1);
	jQuery.fancybox.close();
	jQuery("a#modalOldBrowserDialogueTrigger").hide();
}
