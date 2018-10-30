
<%@ Import Namespace="System" %>
<%@ Import Namespace="System.Web" %>
<%@ Import Namespace="System.IO" %>
<%@ Import Namespace="EUCookie" %>

<a id="modalOldBrowserDialogueTrigger" href="#modalOldBrowserDialogue"></a>
<a id="modalCookieDialogueTrigger" href="#modalCookieDialogue"></a>

<link rel="stylesheet" href="/Imports/eCookies/jquery.fancybox-1.3.4.css" type="text/css" media="screen"/>
<link rel="stylesheet" href="/Imports/eCookies/EUCookieStyleMain.css" type="text/css">
<link rel="stylesheet" href="/Imports/eCookies/EUCookieStyleExtend.css" type="text/css">
<script src="/imports/js/jquery-1.9.1_fromEndrosedRepo.min.js"></script>
<script type="text/javascript" src="/Imports/eCookies/jquery.fancybox-1.3.4.js"></script>
<script type="text/javascript" src="/Imports/eCookies/jquery.easing-1.3.pack.js"></script>
<script type="text/javascript" src="/Imports/eCookies/jquery.mousewheel-3.0.4.pack.js"></script>
<script type="text/javascript" src="/Imports/eCookies/EUCookiescripts_forOPT-IN-FancyBox.js"></script>
<style>
			#fancybox-content{
			border-width:0px !important;
			padding:0px !important;
			background-color: rgb(162, 166, 169);
			}
			}
			#fancy-overlay{
				background-color:black !important;
			}
		</style>
		<script language="C#" runat="server">
public CookieInformation solutionInfo
	{	
   get
		{
		return EUCookieOptionChecker.getCookieSolutionInfo(Server.MapPath("/Imports/eCookies/"),"cookies.xml","/MOBIL_SB/Germany-German-LCW");
		}
	set
		{
		solutionInfo = value;
		}
	} 
public string urlpath = String.Empty;

string isCurrent(string url){
	//remove query string
	if (url.Contains("?")){
		url = url.Substring(0, url.LastIndexOf("?"));
	}
	
	//remove # and after
	if (url.Contains("#")){
		url = url.Substring(0, url.LastIndexOf("#"));
	}
	
	if (url.Contains("..")){
		url = url.Substring(0, url.LastIndexOf("..")+1);
	}
	
	urlpath = Request.ServerVariables.Get("URL");
	if(urlpath.Contains(url)){
		return "class=\"gnNavOn\"";
	}else{
		return "";
	}
}
</script>
<!-- googleoff: index -->
<asp:panel id="eCookiesPanel" Runat="server"><%=solutionInfo.Banner%><script>var enableCookies = 'true';var cookiesOption = '<%=solutionInfo.SolutionType%>';var languageCookieName = '<%=solutionInfo.CookieName%>';cookiesLawInit();</script></asp:panel>
<div id="container">
    <div id="globalHeader" class="clrfix">
        <a onclick="trackClick(this);" href="/Germany-German-LCW/default.aspx"><img title="" src="/Shared-Images-LCW/headerlogo_86x30_mobil-logo_gbl.jpg" longdesc="" id="logo" border="0" alt="Mobil logo 1"></a>
        <div id="globalCountry">
            <ul>
                <li style="padding-right: 10px;">
                    <span>Deutschland</span>
                </li>
                <li style="border: medium none ;">
                    <a onclick="trackClick(this);" href="http://www.mobil.com/glp/Default.aspx?page=flags" class="iconleft world">Ort ausw�hlen</a>
                </li>
            </ul>
        </div>
        <div style="visibility: Visible;display:none;" id="search">
            <form onsubmit="javascript: return CheckInput()" name="frmSimpleSearch" method="get" action="/Search/Search.aspx">
                <div>
                    <span style="padding-right:30px" class="barbgleftSumbit"><span class="barbgrightSubmit"><input value="login" type="button" onclick="location.href='/Germany-German-LCW/login.aspx'" class="middleSubmitBtn"></span></span><label for="searchTerms">SUCHE</label><input value="Schl�sselw�rter" type="text" onClick="javascript: clearBox();" name="q" maxlength="50" id="qt"><input value="mobil|ledr" type="hidden" name="site"><input value="/imports/lcw_xom" type="Hidden" name="css"><input type="hidden" name="BCL" value="/Germany-German-LCW/Navigation"><input value="global" type="Hidden" name="km"><input value="de" type="hidden" name="la"><input value="lang_de" type="hidden" name="lr"><input value="xml_no_dtd" type="Hidden" name="output"><input value="default_frontend" type="Hidden" name="client"><input value="description" type="Hidden" name="getfields"><input value="n" type="Hidden" name="show_km"><input value="inurl:mobil inurl:/Germany-German-LCW OR inurl:/Germany-German/Lubes/PDS" type="hidden" name="as_q"><input value="0" type="Hidden" name="filter"><input value="10" type="Hidden" name="num"><input value="UTF-8" type="Hidden" name="ie"><input value="UTF-8" type="Hidden" name="oe"><span class="barbgleftSumbit"><span class="barbgrightSubmit"><input value="SUCHE" type="submit" class="middleSubmitBtn"></span></span>
                </div>
            </form>
        </div>
        <div id="globalNav">
            <ul class="clrfix">
                <li><a onclick="trackClick(this);" target="" <% =isCurrent("/Germany-German-LCW/default.aspx") %> href="/Germany-German-LCW/default.aspx">home</a></li>
                <li><a onclick="trackClick(this);" target="" <% =isCurrent("http://www.exxonmobil.com/Germany-German/PA/news.aspx") %> href="http://www.exxonmobil.com/Germany-German/PA/news.aspx">News &amp; Publikationen</a></li>
                <li><a onclick="trackClick(this);" target="" <% =isCurrent("http://ir.exxonmobil.com/") %> href="http://ir.exxonmobil.com/">Investoren</a></li>
                <li><a onclick="trackClick(this);" target="" <% =isCurrent("http://www.exxonmobil.com/Germany-German/PA/careers.aspx") %> href="http://www.exxonmobil.com/Germany-German/PA/careers.aspx">Karriere</a></li>
                <li><a onclick="trackClick(this);" target="" <% =isCurrent("http://www.mobil.com/contact-us?lang=de-DE") %> href="http://www.mobil.com/contact-us?lang=de-DE">Kontakt</a></li>
            </ul>
        </div>
    </div>
    <div>
        <div style="z-index:450;"></div>
        <div id="mainNav" class="clrfix">
            <div id="BlueNavPanel_Current_2">
                <div class="navBarLeft">
                    <img src="/Imports/LCW_Images/Navigation/HeaderOFF_LEFT.gif"></div>
                <div class="navBarLeft">
                    <ul>
                        <li>
                            <a target="" onclick="trackClick(this);" href="/Germany-German-LCW/carengineoils.aspx" id="carengineoils">PKW Motoren�le</a>
                        </li>
                        <li>
                            <a target="" onclick="trackClick(this);" href="/Germany-German-LCW/vanengineoils.aspx" id="vanengineoils">Motoren�le f�r Kleintransporter</a>
                        </li>
                        <li>
                            <a target="" onclick="trackClick(this);" href="/Germany-German-LCW/heavydutyengineoils.aspx" id="heavydutyoils">Nutzfahrzeug �le</a>
                        </li>
                        <li>
                            <a target="" onclick="trackClick(this);" href="/Germany-German-LCW/which-oil.aspx" id="whichoil">�lwegweiser</a>
                        </li>
                        <li>
                            <a target="" onclick="trackClick(this);" href="/Germany-German-LCW/industrialspecialty.aspx" id="industrialspecialty">Industrie- / Spezialschmierstoffe</a>
                        </li>
                        <li>
                            <a target="" onclick="trackClick(this);" href="/Germany-German-LCW/fuels.aspx" id="fuels">Kraftstoffe</a>
                        </li>
                        <li>
                            <a target="" onclick="trackClick(this);" href="/Germany-German-LCW/buy.aspx" id="wheretobuy">Vertrieb</a>
                        </li>
                        <li>
                            <a target="" onclick="trackClick(this);" href="/Germany-German-LCW/mobil-brands.aspx" id="mobilbrands">Mobil Marken</a>
                        </li>
                    </ul>
                </div>
                <div class="navBarRight">
                    <img src="/Imports/LCW_Images/Navigation/HeaderOFF_RIGHT.gif"></div>
            </div>
        </div>
        <div class="clrfix">
            <div id="navPanel">
                <div id="navTitle"></div>
            </div>
        </div>
    </div>
</div>
				<!-- googleon: index -->
				<!-- Add Header DIV for screen size <= 600px -->
				<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
				<script type="text/javascript" src="/Imports/js/search.js"></script>
				<script type="text/javascript" src="/Imports/js/LCW_mobile.js"></script>
				<div id="language-select" style="z-index:99;">
					<div class="header_globe_container">
						<a href="http://corporate.exxonmobil.com/#global-websites">
							<div class="header_globe_container_img"></div>
						</a>
					</div>		
				</div>
				<!-- panel that contain item menu of language menu-->
				<div id="search-nav">
					<div id="menu"></div>
					<div style="display:none;" id="menuContainer">
						<div id="temp"></div>
						<div id="mobileMenuHeaderContainer">
							<div id="mobileMenuBack">
								<span class="mobileIconImg"></span>
							</div>
							<div id="mobileMenuHeadTitle">
								<a href="default.aspx">Mobil&#8482;</a>
							</div>
							<div id="mobileMenuClose">
								<span class="mobileIconImg"></span>
							</div>
						</div>
						<ul id="menuItemContainer">
						</ul>
					</div>
					<a onclick="toggleSearch()" id="search-icon" class="close" style="display:none;"></a>
				</div>
				<div id="search-form" class="close">
				</div>
			
