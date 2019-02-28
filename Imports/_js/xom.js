//==========================================================================================================================
// Created: May 2009 - for LCW Redesign - EMIT WCM Team
//    many undocumented updates. later used for Mobil Industrial redesign.
// Updated: July 19, 2013 - Brian D. Elley (WCM)
//   Updated all the "x_click" share functions with code from LCW.
//==========================================================================================================================

function xomInit(){
	styleswitcherInit();
	footnoteLinksInit();
	shareHover();
}

function addbookmark()
				{
					title = document.title; 
					url = window.location.href;
					if (window.sidebar) { // Mozilla Firefox Bookmark
					window.sidebar.addPanel(title, url,"")
					} else if( window.external ) { // IE Favorite
					window.external.AddFavorite(url,title)
					}
					else if(window.opera && window.print) { // Opera Hotlist
					return true;}
				}
				
function xomFinal(){
	styleswitcherFinal();
}

//setup of onload and onunload events from any other scripts consolidated here:
window.onload = xomInit;
window.onunload = xomFinal;
shareHover = function() {
	if(document.getElementById("share")){
	var shareels = document.getElementById("share").getElementsByTagName("li");
	for (var i=0; i<shareels.length; i++) {
		shareels[i].onmouseover=function() {
			this.className+=" hover";
		}
		shareels[i].onmouseout=function() {
			this.className=this.className.replace(new RegExp(" hover\\b"), "");
		}
	}
	}
}
function showHideTools(id){
	document.getElementById("shareBox").className = id;
}
function facebook_click()
{
	window.open("http://www.facebook.com/share.php?u="+encodeURIComponent(window.location.href)+"&t="+encodeURIComponent(document.title));
	return false;
}
function digg_click()
{
	window.open("http://digg.com/submit?url="+encodeURIComponent(window.location.href)+"&title="+encodeURIComponent(document.title));
	return false;
}
function twitter_click()
{
	window.open("http://twitter.com/intent/tweet?url="+encodeURIComponent(window.location.href)+"&text="+encodeURIComponent(document.title));
	return false;
}
function tumblr_click()
{
	window.open("http://www.tumblr.com/share/link?url="+encodeURIComponent(window.location.href)+"&name="+encodeURIComponent(document.title));
	return false;
}
function stumbleupon_click()
{
	window.open("http://www.stumbleupon.com/submit?url="+encodeURIComponent(window.location.href)+"&title="+encodeURIComponent(document.title));
	return false;
}
function linkedin_click()
{
	window.open("http://www.linkedin.com/shareArticle?mini=true&url="+encodeURIComponent(window.location.href)+"&title="+encodeURIComponent(document.title));
	return false;
}
function vkontakte_click()
{
	window.open("http://vkontakte.ru/share.php?url="+encodeURIComponent(window.location.href));
	return false;
}