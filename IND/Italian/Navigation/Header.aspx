<%@ Import Namespace="System" %>
<%@ Import Namespace="System.Web" %>
<%@ Import Namespace="System.IO" %>
<%@ Register TagPrefix="ld" TagName="LanguageDetector" Src="MILanguageDetector.ascx" %>

<link rel="icon" type="image/png" href="/ind/english/Images/favicon-32x32.png" sizes="32x32" />
<link rel="icon" type="image/png" href="/ind/english/Images/favicon-16x16.png" sizes="16x16" />
<link rel="stylesheet" href="/Imports/eCookies/jquery.fancybox-1.3.4.css" type="text/css" media="screen" />
<script src="/imports/js/jquery-1.9.1_fromendrosedrepo.min.js"></script>
<script type="text/javascript" src="/imports/ecookies/jquery.fancybox-1.3.4.js"></script>
<div xmlns:xalan-nodeset="org.apache.xalan.xslt.extensions.Nodeset" xmlns:java="http://xml.apache.org/xslt/java"
	xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<link href="/Imports/mobil_ind_Italian.css" rel="stylesheet" type="text/css" media="all">

	<script language="C#" runat="server">
					public string urlpath = String.Empty;
					public string HeaderText = String.Empty;
					public string BackGrdImage = String.Empty;

		void HeaderLoadPage()
		{
			urlpath = Request.ServerVariables.Get("URL");
			string urlpath1_sub = urlpath.Substring((urlpath.LastIndexOf("/") + 1));
			urlpath1_sub = urlpath1_sub.ToLower();
			DateTime dt = new DateTime();
			dt = File.GetLastWriteTime(Server.MapPath(urlpath));
			IFormatProvider culture = new System.Globalization.CultureInfo("en-US", true);

			string[] lastmod = dt.GetDateTimeFormats(culture);
			Response.AddHeader("Last-modified", lastmod[102]);
			//Response.Write("Last-modified: " + lastmod[102]);

			IEnumerator IEn = urlpath1_sub.GetEnumerator();
			Array a = Array.CreateInstance(typeof (char), urlpath1_sub.Length);
			IEn.Reset();
			IEn.MoveNext();
			for (int i = 0; i < urlpath1_sub.Length ; i++)
			{
				a.SetValue(IEn.Current, i);
				IEn.MoveNext();
			}

			char uc = '_';
			Array b = Array.CreateInstance(typeof (char), 1);
			b.SetValue(uc, 0);

			int j = 0;
			for (int i = a.GetLowerBound(0); i <= a.GetUpperBound(0); i++)
			{
				if (a.GetValue(i).Equals(b.GetValue(0)))
					j++;
			}
			if (j != 0) {
				urlpath = urlpath.Substring((urlpath.LastIndexOf("/") + 1), (urlpath.IndexOf("_", urlpath.LastIndexOf("/")) - (urlpath.LastIndexOf("/")) - 1));
			}
			else {
				urlpath = urlpath.Substring((urlpath.LastIndexOf("/") + 1), (urlpath.IndexOf(".") - (urlpath.LastIndexOf("/")) - 1));
			}
			if (urlpath == "default") {
				HomePanel.Visible = true;
				Home_current.CssClass = "gnNavOn";
			}
			else {
				HomePanel_1.Visible = true;
				if (urlpath.ToLower() == "EmailFriend".ToLower() || urlpath == "search") { LanguageSelectorPanel_2.Visible = true; } else { LanguageSelectorPanel_1.Visible = true; } if (urlpath == "products") {
					BackGrdImage = "";
					HeaderText = "prodotti lubrificanti";
					BlueNavPanel_Current_1.Visible = true;
					BlueNavPanel_Current_None.Visible = false;
				}
				if (urlpath == "yourindustry") {
					BackGrdImage = "";
					HeaderText = "il vostro settore";
					BlueNavPanel_Current_2.Visible = true;
					BlueNavPanel_Current_None.Visible = false;
				}
				if (urlpath == "") {
					BackGrdImage = "";
					HeaderText = "dove acquistare";
					BlueNavPanel_Current_3.Visible = true;
					BlueNavPanel_Current_None.Visible = false;
				}
				if (urlpath == "technicalresources") {
					BackGrdImage = "";
					HeaderText = "supporto tecnico";
					BlueNavPanel_Current_4.Visible = true;
					BlueNavPanel_Current_None.Visible = false;
				}
				if (urlpath == "lubricationsolutions") {
					BackGrdImage = "";
					HeaderText = "soluzioni di lubrificazione";
					BlueNavPanel_Current_5.Visible = true;
					BlueNavPanel_Current_None.Visible = false;
				}
				if (urlpath == "Search") {
					UtilityNavPanel_1.CssClass = "gnNavOn";
					BackGrdImage = "";
					HeaderText = "pds";
				}
				if (urlpath == "psims") {
					UtilityNavPanel_2.CssClass = "gnNavOn";
					BackGrdImage = "";
					HeaderText = "msds";
				}
				if (urlpath == "contactus") {
					UtilityNavPanel_3.CssClass = "gnNavOn";
					BackGrdImage = "";
					HeaderText = "supporto tecnico";
				}
				if (urlpath == "contactus") {
					UtilityNavPanel_4.CssClass = "gnNavOn";
					BackGrdImage = "";
					HeaderText = "contattaci";
				}
			}

			if (BackGrdImage == "") { BackGrdImage = "/Corporate/Images/banner_about.jpg"; }

			if (urlpath == "sitemap") { HeaderText = "site map"; }

		}
	</script>
	<script type="text/javascript" src="https://secure.coax7nice.com/js/164357.js"></script>
	<noscript>
		<img alt=""
			src="https://secure.coax7nice.com/164357.png?trk_user=164357&trk_tit=jsdisabled&trk_ref=jsdisabled&trk_loc=jsdisabled"
			height="0px" width="0px" style="display:none;" />
	</noscript>
	<!--stopindex-->
	<!--googleoff: index-->
	<!-- Add Header DIV for screen size <= 600px -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<script type="text/javascript" src="/imports/js/search.js"></script>
	<script type="text/javascript" src="/imports/js/mobile_menu.js"></script>
	<div id="language-select" style="z-index:99;">
		<div class="lauguaeSelectorButton" id="lauguaeSelectorButton" onclick=" toggleLanguage()"></div>
		<div id="selectedLanugage"></div>
		<div class="header_globe_container">
			<a href="http://corporate.exxonmobil.com/#global-websites">
				<div class="header_globe_container_img"></div>
			</a>
		</div>
	</div>
	<!-- panel that contain item menu of language menu-->
	<div id="lauguaeSelectorContainer" class="close"></div>
	<div id="search-nav">
		<div id="menu"></div>
		<div style="display:none;" id="menuContainer">
			<!-- <div id="temp"></div> -->
			<div id="mobileMenuHeaderContainer">
				<div id="mobileMenuBack">
					<span class="mobileIconImg"></span>
				</div>
				<div id="mobileMenuHeadTitle">
					<a href="default.aspx">
						Mobil Industrial Lubricants
					</a></div>
				<div id="mobileMenuClose">
					<span class="mobileIconImg"></span>
				</div>
			</div>
			<ul id="menuItemContainer">
			</ul>
		</div>
		<a onclick="toggleSearch()" id="search-icon" class="close" style="display: none;"></a>
	</div>
	<div id="search-form" class="close">
	</div>
</div>
<asp:panel id="HomePanel" Runat="server" visible="false">
	<div xmlns:xalan-nodeset="org.apache.xalan.xslt.extensions.Nodeset" xmlns:java="http://xml.apache.org/xslt/java"
		xmlns:fo="http://www.w3.org/1999/XSL/Format" id="globalHeader" class="clrfix">
		<div style="height: 30px;" id="globallang">
			<table>
				<tr>
					<td><img title="Select Language" src="/IND/English/Images/world.gif" border="0" alt="Select Language"></td>
					<td>SELECT LANGUAGE
						<!--<form runat="server"><ld:LanguageDetector CssClass="DropdownClass" runat="server" /></form>-->

						<form name="ctl00" method="post" action="default.aspx" id="ctl00">
							<div>
								<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE"
									value="/wEPDwUINzk4OTcwMjgPZBYEZg8PFgIeB1Zpc2libGVnZBYEAgEPZBYCZg9kFgJmDxAPFgQeCENzc0NsYXNzBQ1Ecm9wZG93bkNsYXNzHgRfIVNCAgJkDxYIZgIBAgICAwIEAgUCBgIHFggQBQdEZXV0c2NoBQlkZS1nZXJtYW5nEAUIRXNwYcOxb2wFCmVzLXNwYW5pc2hnEAUHRW5nbGlzaAUKZW4tZW5nbGlzaGcQBQhUw7xya8OnZQUKdHItdHVya2lzaGcQBQ7QoNGD0YHRgdC60LjQuQUKcnUtcnVzc2lhbmcQBQhJdGFsaWFubwUKaXQtaXRhbGlhbmcQBQlGcmFuw6dhaXMFCWZyLWZyZW5jaGcQBQbkuK3mlocFCnpoLWNoaW5lc2VnZGQCAw8PFgQfAQUHZ25OYXZPbh8CAgJkZAIBD2QWAmYPZBYCAgEPZBYCZg9kFgJmDxAPFgQfAQUNRHJvcGRvd25DbGFzcx8CAgJkDxYIZgIBAgICAwIEAgUCBgIHFggQBQdEZXV0c2NoBQlkZS1nZXJtYW5nEAUIRXNwYcOxb2wFCmVzLXNwYW5pc2hnEAUHRW5nbGlzaAUKZW4tZW5nbGlzaGcQBQhUw7xya8OnZQUKdHItdHVya2lzaGcQBQ7QoNGD0YHRgdC60LjQuQUKcnUtcnVzc2lhbmcQBQhJdGFsaWFubwUKaXQtaXRhbGlhbmcQBQlGcmFuw6dhaXMFCWZyLWZyZW5jaGcQBQbkuK3mlocFCnpoLWNoaW5lc2VnFgECBWRk7xAKn1SlVqwod+flf1eweidghaE=" />
							</div>

							<div>

								<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION"
									value="/wEWCQKP7cU4AufSqPwFAsS6+ukJAqOG4o8FAt+hve0JAuPf+igCtKvbxwsCrrDqkwQC7q6opQqCDw9MOQnJ4DpqHEVCT0CLhHiRVw==" />
							</div> <select name="ctl01$languageCombo" id="ctl01_languageCombo" class="DropdownClass"
								onchange="selectIndexChange(this)">
								<option value="de-german">Deutsch</option>
								<option value="es-spanish">Espa&#241;ol</option>
								<option value="en-english">English</option>
								<option value="tr-turkish">T&#252;rk&#231;e</option>
								<option value="ru-russian">&#1056;&#1091;&#1089;&#1089;&#1082;&#1080;&#1081;</option>
								<option selected="selected" value="it-italian">Italiano</option>
								<option value="fr-french">Fran&#231;ais</option>
								<option value="zh-chinese">&#20013;&#25991;</option>

							</select>

							<script type="text/javascript">
								var dictionary = { 'de-german': { 'url': '/IND/german/default.aspx', 'languageCode': 'de' }, 'es-spanish': { 'url': '/IND/spanish', 'languageCode': 'es' }, 'en-english': { 'url': '/IND/english', 'languageCode': 'en' }, 'tr-turkish': { 'url': '/IND/turkish/default.aspx', 'languageCode': 'tr' }, 'ru-russian': { 'url': '/IND/russian/default.aspx', 'languageCode': 'ru' }, 'it-italian': { 'url': '/IND/italian/default.aspx', 'languageCode': 'it' }, 'fr-french': { 'url': '/IND/french/default.aspx', 'languageCode': 'fr' }, 'zh-chinese': { 'url': '/IND/chinese/default.aspx', 'languageCode': 'zh' } };

								function selectIndexChange(ddl) {
									var expireDate = new Date();
									expireDate.setFullYear(expireDate.getFullYear() + 5);
									document.cookie = 'MISelectedLanguage=' + dictionary[ddl.value]['languageCode'] + ';expires=' + expireDate.toUTCString() + '; path=/';
									window.location.href = dictionary[ddl.value]['url'];
								}
							</script>
						</form>

					</td>
				</tr>
			</table>
		</div>
		<a href="/ind/italian/default.aspx"><img title="" src="Images/headerlogo_86x30_mobil-logo_gbl.jpg" longdesc=""
				id="logo" border="0" alt="Mobil"></a>
		<div style="width:200px; visibility: Visible; height:1.4em;" id="search">
			<form onSubmit="javascript: return CheckInput()" name="frmSimpleSearch" method="get" action="./Search.aspx"
				style="display: none;">
				<label for="searchTerms">search terms</label>
				<input value="Parola Chiave" type="text" onClick="javascript: clearBox();" name="q" maxlength="50" id="qt">
				<input value="mobil" type="hidden" name="site"><input value="/imports/mobil_ind" type="Hidden" name="css">
				<input type="Hidden" name="BCL" value="/IND/Italian/Navigation" />
				<input value="it" type="Hidden" name="la">
				<input value="lang_it" type="Hidden" name="lr">
				<input value="mil_en" type="Hidden" name="km">
				<input value="n" type="Hidden" name="show_km">
				<input value="xml_no_dtd" type="Hidden" name="output">
				<input value="default_frontend" type="Hidden" name="client">
				<input value="description" type="Hidden" name="getfields">
				<input value="inurl:/IND/Italian/" type="Hidden" name="as_q">
				<input value="0" type="Hidden" name="filter">
				<input value="UTF-8" type="Hidden" name="ie">
				<input value="10" type="Hidden" name="num">
				<input value="UTF-8" type="Hidden" name="oe">
				<span class="barbgleftSumbit"><span class="barbgrightSubmit">
						<input value="RICERCA" type="submit" class="middleSubmitBtn">
					</span></span>
			</form>
		</div>
		<div id="globalNav" style="margin-right: 50px;">
			<ul class="clrfix">
				<li>
					<asp:HyperLink id="Home_current" runat="server" NavigateUrl="/IND/Italian/default.aspx">home</asp:HyperLink>
				</li>
				<li><a target="" href="https://www.exxonmobil.com/pds?language=it">pds</a></li>
				<li><a target="" href="http://www.msds.exxonmobil.com/IntApps/psims/psims.aspx">msds</a></li>
				<li><a href="contactus_technical-help-desks.aspx">supporto tecnico</a></li>
				<li><a href="contactus.aspx">contattaci</a></li>
			</ul>
		</div>
	</div>
	<div xmlns:xalan-nodeset="org.apache.xalan.xslt.extensions.Nodeset" xmlns:java="http://xml.apache.org/xslt/java"
		xmlns:fo="http://www.w3.org/1999/XSL/Format" id="mainNav" class="clrfix">
		<div class="mnbk">
			<div class="mnleft">
				<div class="mnright">
					<ul>
						<li><a href="products.aspx">prodotti lubrificanti</a></li>
						<li><a href="yourindustry.aspx">il vostro settore</a></li>
						<li><a target="_new"
								href="https://www.mobil.com/industrial/lubricants-distributors/externallocator?culture=it-IT&amp;renderMap=true&amp;renderButton=false">dove
								acquistare</a></li>
						<li><a href="technicalresources.aspx">supporto tecnico</a></li>
						<li><a href="lubricationsolutions.aspx">soluzioni di lubrificazione</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div xmlns:xalan-nodeset="org.apache.xalan.xslt.extensions.Nodeset" xmlns:java="http://xml.apache.org/xslt/java"
		xmlns:fo="http://www.w3.org/1999/XSL/Format" style="width:912px; height:220px" id="navPanel" class="clrfix">
		<!--#include virtual="../Images/html5/carousel.html"-->
	</div>
</asp:panel>

<asp:panel id="HomePanel_1" Runat="server" visible="false">
	<div xmlns:xalan-nodeset="org.apache.xalan.xslt.extensions.Nodeset" xmlns:java="http://xml.apache.org/xslt/java"
		xmlns:fo="http://www.w3.org/1999/XSL/Format" id="globalHeader" class="clrfix">
		<div style="height: 30px;" id="globallang">
			<asp:panel id="LanguageSelectorPanel_1" Runat="server" visible="false">
				<table>
					<tr>
						<td><img title="Select Language" src="/IND/English/Images/world.gif" border="0" alt="Select Language"></td>
						<td>SELECT LANGUAGE
							<!--<form runat="server"><ld:LanguageDetector CssClass="DropdownClass" runat="server" /></form>-->

							<form name="ctl00" method="post" action="default.aspx" id="ctl00">
								<div>
									<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE"
										value="/wEPDwUINzk4OTcwMjgPZBYEZg8PFgIeB1Zpc2libGVnZBYEAgEPZBYCZg9kFgJmDxAPFgQeCENzc0NsYXNzBQ1Ecm9wZG93bkNsYXNzHgRfIVNCAgJkDxYIZgIBAgICAwIEAgUCBgIHFggQBQdEZXV0c2NoBQlkZS1nZXJtYW5nEAUIRXNwYcOxb2wFCmVzLXNwYW5pc2hnEAUHRW5nbGlzaAUKZW4tZW5nbGlzaGcQBQhUw7xya8OnZQUKdHItdHVya2lzaGcQBQ7QoNGD0YHRgdC60LjQuQUKcnUtcnVzc2lhbmcQBQhJdGFsaWFubwUKaXQtaXRhbGlhbmcQBQlGcmFuw6dhaXMFCWZyLWZyZW5jaGcQBQbkuK3mlocFCnpoLWNoaW5lc2VnZGQCAw8PFgQfAQUHZ25OYXZPbh8CAgJkZAIBD2QWAmYPZBYCAgEPZBYCZg9kFgJmDxAPFgQfAQUNRHJvcGRvd25DbGFzcx8CAgJkDxYIZgIBAgICAwIEAgUCBgIHFggQBQdEZXV0c2NoBQlkZS1nZXJtYW5nEAUIRXNwYcOxb2wFCmVzLXNwYW5pc2hnEAUHRW5nbGlzaAUKZW4tZW5nbGlzaGcQBQhUw7xya8OnZQUKdHItdHVya2lzaGcQBQ7QoNGD0YHRgdC60LjQuQUKcnUtcnVzc2lhbmcQBQhJdGFsaWFubwUKaXQtaXRhbGlhbmcQBQlGcmFuw6dhaXMFCWZyLWZyZW5jaGcQBQbkuK3mlocFCnpoLWNoaW5lc2VnFgECBWRk7xAKn1SlVqwod+flf1eweidghaE=" />
								</div>

								<div>

									<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION"
										value="/wEWCQKP7cU4AufSqPwFAsS6+ukJAqOG4o8FAt+hve0JAuPf+igCtKvbxwsCrrDqkwQC7q6opQqCDw9MOQnJ4DpqHEVCT0CLhHiRVw==" />
								</div> <select name="ctl01$languageCombo" id="ctl01_languageCombo" class="DropdownClass"
									onchange="selectIndexChange(this)">
									<option value="de-german">Deutsch</option>
									<option value="es-spanish">Espa&#241;ol</option>
									<option value="en-english">English</option>
									<option value="tr-turkish">T&#252;rk&#231;e</option>
									<option value="ru-russian">&#1056;&#1091;&#1089;&#1089;&#1082;&#1080;&#1081;</option>
									<option selected="selected" value="it-italian">Italiano</option>
									<option value="fr-french">Fran&#231;ais</option>
									<option value="zh-chinese">&#20013;&#25991;</option>

								</select>

								<script type="text/javascript">
									var dictionary = { 'de-german': { 'url': '/IND/german/default.aspx', 'languageCode': 'de' }, 'es-spanish': { 'url': '/IND/spanish', 'languageCode': 'es' }, 'en-english': { 'url': '/IND/english', 'languageCode': 'en' }, 'tr-turkish': { 'url': '/IND/turkish/default.aspx', 'languageCode': 'tr' }, 'ru-russian': { 'url': '/IND/russian/default.aspx', 'languageCode': 'ru' }, 'it-italian': { 'url': '/IND/italian/default.aspx', 'languageCode': 'it' }, 'fr-french': { 'url': '/IND/french/default.aspx', 'languageCode': 'fr' }, 'zh-chinese': { 'url': '/IND/chinese/default.aspx', 'languageCode': 'zh' } };

									function selectIndexChange(ddl) {
										var expireDate = new Date();
										expireDate.setFullYear(expireDate.getFullYear() + 5);
										document.cookie = 'MISelectedLanguage=' + dictionary[ddl.value]['languageCode'] + ';expires=' + expireDate.toUTCString() + '; path=/';
										window.location.href = dictionary[ddl.value]['url'];
									}
								</script>
							</form>

						</td>
					</tr>
				</table>
			</asp:panel>
			<asp:panel id="LanguageSelectorPanel_2" Runat="server" visible="false">
				<table>
					<tr>
						<td><img title="Select Language" src="/IND/English/Images/world.gif" border="0" alt="Select Language"></td>
						<td style="width:200px;">SELECT LANGUAGE
							<select id="languageSelector" name="languageSelector" class="DropdownClass"
								onChange="window.location.href=this.value"></select>
						</td>
					</tr>
				</table>
			</asp:panel>
		</div><a href="/ind/italian/default.aspx"><img title="" src="Images/headerlogo_86x30_mobil-logo_gbl.jpg" longdesc=""
				id="logo" border="0" alt="Mobil Industrial Lubricants"></a>

		<div style="width:200px; visibility: Visible; height: 1.4em;" id="search">
			<form onSubmit="javascript: return CheckInput()" name="frmSimpleSearch" method="get" action="./Search.aspx"
				style="display:none;">
				<input value="Parola Chiave" type="text" onClick="javascript: clearBox();" name="q" maxlength="50" id="qt">
				<input value="mobil" type="hidden" name="site">
				<input value="/imports/mobil_ind" type="Hidden" name="css">
				<input type="Hidden" name="BCL" value="/IND/Italian/Navigation" />
				<input value="it" type="Hidden" name="la">
				<input value="lang_it" type="Hidden" name="lr">
				<input value="mil_en" type="Hidden" name="km">
				<input value="n" type="Hidden" name="show_km">
				<input value="xml_no_dtd" type="Hidden" name="output">
				<input value="default_frontend" type="Hidden" name="client">
				<input value="description" type="Hidden" name="getfields">
				<input value="inurl:/IND/Italian/" type="Hidden" name="as_q">
				<input value="0" type="Hidden" name="filter">
				<input value="UTF-8" type="Hidden" name="ie">
				<input value="10" type="Hidden" name="num">
				<input value="UTF-8" type="Hidden" name="oe">
				<span class="barbgleftSumbit"><span class="barbgrightSubmit">
						<input value="RICERCA" type="submit" class="middleSubmitBtn"></span></span>
			</form>
		</div>
		<div id="globalNav" style="margin-right: 50px;">
			<ul class="clrfix">
				<li><a href="/IND/Italian/default.aspx">home</a></li>
				<li>
					<asp:HyperLink id="UtilityNavPanel_1" runat="server" NavigateUrl="https://www.exxonmobil.com/pds?language=it">
						pds</asp:HyperLink>
				</li>
				<li>
					<asp:HyperLink id="UtilityNavPanel_2" runat="server"
						NavigateUrl="http://www.msds.exxonmobil.com/IntApps/psims/psims.aspx">msds</asp:HyperLink>
				</li>
				<li>
					<asp:HyperLink id="UtilityNavPanel_3" runat="server" NavigateUrl="contactus_technical-help-desks.aspx">
						supporto tecnico</asp:HyperLink>
				</li>
				<li>
					<asp:HyperLink id="UtilityNavPanel_4" runat="server" NavigateUrl="contactus.aspx">contattaci</asp:HyperLink>
				</li>
			</ul>
		</div>
	</div>
	<div xmlns:xalan-nodeset="org.apache.xalan.xslt.extensions.Nodeset" xmlns:java="http://xml.apache.org/xslt/java"
		xmlns:fo="http://www.w3.org/1999/XSL/Format" id="mainNav" class="clrfix">
		<div class="mnbk">
			<div class="mnleft">
				<div class="mnright">
					<ul>
						<asp:panel id="BlueNavPanel_Current_None" Runat="server" visible="True">
							<li><a href="products.aspx">prodotti lubrificanti</a></li>
							<li><a href="yourindustry.aspx">il vostro settore</a></li>
							<li><a target="_new"
									href="https://www.mobil.com/industrial/lubricants-distributors/externallocator?culture=it-IT&amp;renderMap=true&amp;renderButton=false">dove
									acquistare</a></li>
							<li><a href="technicalresources.aspx">supporto tecnico</a></li>
							<li><a href="lubricationsolutions.aspx">soluzioni di lubrificazione</a></li>
						</asp:panel>
						<asp:panel id="BlueNavPanel_Current_1" Runat="server" visible="False">
							<li><a href="products.aspx" class="mnNavOn">prodotti lubrificanti</a></li>
							<li><a href="yourindustry.aspx">il vostro settore</a></li>
							<li><a target="_new"
									href="https://www.mobil.com/industrial/lubricants-distributors/externallocator?culture=it-IT&amp;renderMap=true&amp;renderButton=false">dove
									acquistare</a></li>
							<li><a href="technicalresources.aspx">supporto tecnico</a></li>
							<li><a href="lubricationsolutions.aspx">soluzioni di lubrificazione</a></li>
						</asp:panel>
						<asp:panel id="BlueNavPanel_Current_2" Runat="server" visible="False">
							<li><a href="products.aspx">prodotti lubrificanti</a></li>
							<li><a href="yourindustry.aspx" class="mnNavOn">il vostro settore</a></li>
							<li><a target="_new"
									href="https://www.mobil.com/industrial/lubricants-distributors/externallocator?culture=it-IT&amp;renderMap=true&amp;renderButton=false">dove
									acquistare</a></li>
							<li><a href="technicalresources.aspx">supporto tecnico</a></li>
							<li><a href="lubricationsolutions.aspx">soluzioni di lubrificazione</a></li>
						</asp:panel>
						<asp:panel id="BlueNavPanel_Current_3" Runat="server" visible="False">
							<li><a href="products.aspx">prodotti lubrificanti</a></li>
							<li><a href="yourindustry.aspx">il vostro settore</a></li>
							<li><a
									href="https://www.mobil.com/industrial/lubricants-distributors/externallocator?culture=it-IT&amp;renderMap=true&amp;renderButton=false"
									class="mnNavOn">dove acquistare</a></li>
							<li><a href="technicalresources.aspx">supporto tecnico</a></li>
							<li><a href="lubricationsolutions.aspx">soluzioni di lubrificazione</a></li>
						</asp:panel>
						<asp:panel id="BlueNavPanel_Current_4" Runat="server" visible="False">
							<li><a href="products.aspx">prodotti lubrificanti</a></li>
							<li><a href="yourindustry.aspx">il vostro settore</a></li>
							<li><a target="_new"
									href="https://www.mobil.com/industrial/lubricants-distributors/externallocator?culture=it-IT&amp;renderMap=true&amp;renderButton=false">dove
									acquistare</a></li>
							<li><a href="technicalresources.aspx" class="mnNavOn">supporto tecnico</a></li>
							<li><a href="lubricationsolutions.aspx">soluzioni di lubrificazione</a></li>
						</asp:panel>
						<asp:panel id="BlueNavPanel_Current_5" Runat="server" visible="False">
							<li><a href="products.aspx">prodotti lubrificanti</a></li>
							<li><a href="yourindustry.aspx">il vostro settore</a></li>
							<li><a target="_new"
									href="https://www.mobil.com/industrial/lubricants-distributors/externallocator?culture=it-IT&amp;renderMap=true&amp;renderButton=false">dove
									acquistare</a></li>
							<li><a href="technicalresources.aspx">supporto tecnico</a></li>
							<li><a href="lubricationsolutions.aspx" class="mnNavOn">soluzioni di lubrificazione</a></li>
						</asp:panel>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div xmlns:xalan-nodeset="org.apache.xalan.xslt.extensions.Nodeset" xmlns:java="http://xml.apache.org/xslt/java"
		xmlns:fo="http://www.w3.org/1999/XSL/Format" id="navPanelBg">
		<div id="navPanel" class="clrfix">
			<div id="navTitle"><%=HeaderText%></div>
		</div>
	</div>
</asp:panel>

<!--startindex-->
<!--googleon: index-->
