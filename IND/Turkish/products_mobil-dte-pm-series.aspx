
			
			<%@ Page Language="C#" AutoEventWireup="false" Inherits="XOM.Common.Web.XOMPage" %>
			<%@ Register TagPrefix="XOM" Namespace="XOM.Common.Web" Assembly="XOMCommon" %>
			<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml" xmlns:xalan-nodeset="org.apache.xalan.xslt.extensions.Nodeset" xmlns:java="http://xml.apache.org/xslt/java" xmlns:fo="http://www.w3.org/1999/XSL/Format" xml:lang="tr" lang="tr"><head><meta http-equiv="X-UA-Compatible" content="IE=8"><title>Ka&#287;&#305;t Makinesi Ya&#287;&#305; - Mobil DTE&trade; PM Serisi | Mobil&trade; markal&#305; End�striyel Ya&#287;lar</title><meta name="keywords" content="Mobil DTE PM Serisi, Mobil DTE, Mobil DTE PM, ka&#287;&#305;t makinesi ya&#287;&#305;, ka&#287;&#305;t makinesi ya&#287;lamas&#305;, sirk�lasyon ya&#287;lar&#305;"/><meta name="description" content="Mobil DTE&trade; PM Serisi ya&#287;lar&#305; modern y�ksek �&#305;kt&#305;l&#305; ka&#287;&#305;t makinesi ya&#287;lamas&#305;nda ispatlanm&#305;&#351; performansla ka&#287;&#305;t makineleri i�in �st�n kaliteli sirk�lasyon ya&#287;lar&#305;d&#305;r."/><meta name="date" content="10/2013"/><meta name="language" content="tr"/><meta http-equiv="Content-Language" content="tr"/><link type="text/css" rel="stylesheet" media="all" href="/Imports/mobil_ind.css"/><link type="text/css" rel="stylesheet" media="print" href="/Imports/xom_print.css"/><link type="text/css" title="medium" rel="stylesheet" href="/Imports/xom_web_medium.css"/><link type="text/css" title="large" rel="alternate stylesheet" href="/Imports/xom_web_large.css"/><link type="text/css" title="small" rel="alternate stylesheet" href="/Imports/xom_web_small.css"/><link type="text/css" rel="stylesheet" media="all" href="/Imports/xom_lightview.css"/>
					<link rel="canonical" href="<%=""+Request.ServerVariables.Get("URL")%>" />
					
			<script type="text/javascript" src="/Imports/js/styleswitcher.js"></script>
			<script type="text/javascript" src="/Imports/js/footnotelinks.js"></script>
			<script language="Javascript" src="/Imports/js/xom.js"></script>
			<script type="text/javascript" src="/Imports/js/search.js"></script>
            <script type="text/javascript" src="/Imports/js/prototype.js"></script>
			<script type="text/javascript" src="/Imports/js/scriptaculous.js"></script>
			<script type="text/javascript" src="/Imports/js/lightview.js"></script> <!--[if IE 7.0]>
<link href="/Imports/mobil_ind_ie7.css" rel="stylesheet" type="text/css" media="all" />
<![endif]--> 	<!--[if lte IE 6]>
				<link href="/Imports/mobil_ind_ie.css" rel="stylesheet" type="text/css" media="all" />
				<![endif]-->	<!--[if gte IE 5.1]>
				<script type="text/javascript">
					try 
					{
						document.execCommand("BackgroundImageCache", false, true);
					} 
					catch(err) {}
				</script><![endif]--><script type="text/javascript">
                    function showTab(id)
                    {
                        var currentID = '';
                        var tabsdiv = document.getElementById("divTabs");
                        var tabs;
        
                        if(tabsdiv.childNodes.length == 1)
                        {
                            tabs = tabsdiv.childNodes[0];
                        }else
                        {
                            tabs = tabsdiv.childNodes[1];
                        }
                        for(var i=0;i<tabs.childNodes.length;i++)
                        {
                            if(tabs.childNodes[i].className == 'current')
                            {
                                tabs.childNodes[i].className = '';
                                currentID = tabs.childNodes[i].id;
                            }
                        }
                        document.getElementById(id).className='current';
                        document.getElementById(currentID + " Content").style.display='none';
                        document.getElementById(id + " Content").style.display='block';
                    }
                </script>
				<script> 
					//March 2013 - updated Tabs JS to fix scrolling up when changing tabs
					// Register event 'click' and associated call back to stop the refresh of the page when user changes tabs
					Event.observe(document, 'click', stopRefresh);

					// Callback function to handle the event.
					function stopRefresh(event){
						var target;
						//Get the tab, based on different browsers
						if(window.event){
							target = event.srcElement;
						}else{
							target = event.target;
						}
						var htmlCode = getHTML(target);
						if ((htmlCode.indexOf('<A onclick="javascript:showTab') !== -1) || (htmlCode.indexOf('<a href="#" onclick="javascript:showTab') !== -1))
							event.preventDefault();
					}
										
					function getHTML(who){
						 //Get the html based on the browser options
						 if(!who || !who.tagName) return '';
						 if(who.outerHTML) return who.outerHTML;
						 var txt, el= document.createElement("div");
						 el.appendChild(who.cloneNode(true));
						 txt= el.innerHTML;
						 el= null;
						 return txt;
					}
				</script>
				<!-- Set 'expires' in http header, start --><% string cacheExpireDateStr="6/30/2014 5:27:37 PM";
        DateTime cacheExpireDate = Convert.ToDateTime(cacheExpireDateStr); 
        Response.AddHeader("Expires",cacheExpireDate.ToUniversalTime().ToString("ddd, dd MMM yyyy HH:mm:ss 'GMT'")); %><!-- end --></head><body class="article"><a href="#mainContent" class="skip">Skip to Main Content</a><div id="container"><!--#include virtual="Navigation/Header.aspx"--><div id="mainPanel" class="clrfix"><!--#include virtual="Navigation/products_left_navigation.aspx"--><div id="toolbar"><!--#include virtual="Services/Toolbox.aspx"--><div class="related"><div class="relatedimg150X68"><a href="products_mobil-shc.aspx"><img xmlns="" title="Mobil SHC" src="/IND/English/Images/150x68_sidecallouts_mobilshc.jpg" longdesc="" border="0" alt="Mobil SHC"><p xmlns=""><a title="" target="" href="products_mobil-shc.aspx" class=""></a> Mobil DTE&trade; PM Serisi<br><a title="This link will open a new window." target="_new" href="http://www.mobil.com/Turkey-Turkish/Lubes/PDS/GLXXTRINDMOMobilDTEPMSeries.aspx">�r�n veri sayfas&#305; (PDS)</a><br><a title="This link will open a new window." target="_new" href="http://www.msds.exxonmobil.com/psims/psims.aspx">Malzeme g�venlik veri sayfas&#305; (MSDS)</a></p></a></div></div><div class="related"><div class="relatedimg150X68"><a href="distributorlocator.aspx"><img xmlns="" title="Nereden sat&#305;n al&#305;nabilir" src="/IND/English/Images/150x68_sidecallouts_where_to_buy.jpg" longdesc="" border="0" alt="Nereden sat&#305;n al&#305;nabilir"><p xmlns=""><a title="" target="" href="distributorlocator.aspx" class=""></a>Nereden sat&#305;n al&#305;nabilir<br><a title="" target="" href="distributorlocator.aspx" class="">Size yak&#305;n bir distrib�t�r bulun</a></p></a></div></div><div class="related"><div class="relatedimg150X68"><a href="/Apps/ILS/Default_EN.aspx"><img xmlns="" title="Looble" src="/IND/English/Images/150x68_sidecallouts_looble1.jpg" longdesc="" border="0" alt="Looble"><p xmlns=""><a title="This link will open a new window." target="_new" href="/Apps/ILS/Default_EN.aspx"></a>Looble<sup>SM</sup> �r�n se�ici (EN)<br><a title="This link will open a new window." target="_new" href="/Apps/ILS/Default_EN.aspx">Uygulaman&#305;z i�in do&#287;ru ya&#287;&#305; bulun</a></p></a></div></div></div><div id="mainContent"><div class="img150 left"><img xmlns="" title="Mobil DTE&trade; PM Serisi ya&#287;&#305; ka&#287;&#305;t makinesi k�resel rulmanlar&#305;" src="/IND/English/Images/article_150x150_mobil-dte-pm-series.jpg" longdesc="" border="0" alt="Mobil DTE&trade; PM Serisi ya&#287;&#305; ka&#287;&#305;t makinesi k�resel rulmanlar&#305;"></div><p xmlns=""><span style=" font-size: x-large;"><b>Mobil DTE&trade; PM Serisi</b></span></p><p xmlns=""><span style=" font-size: large;"><b>Ka&#287;&#305;t makineleri i�in �st�n kaliteli sirk�lasyon ya&#287;lar&#305;</b></span></p><p xmlns="">Mobil DTE PM Serisindeki �st�n ya&#287;lar �zellikle y�ksek �&#305;kt&#305;l&#305; ka&#287;&#305;t makineleri ve takvimlerde y�ksek buhar bas&#305;n�lar&#305; ve s&#305;cakl&#305;klar ve makine h&#305;zlar&#305; ve k���k rezervuar b�y�kl�kleri i�in tasarlanm&#305;&#351;t&#305;r.</p><p xmlns="">Bu seri ka&#287;&#305;t makine yataklar&#305; ve di&#351;li sistemlerinin kuru u� ya&#287;lamas&#305; i�in Voith ve Metso gerekliliklerini ve ayr&#305;ca kuru u� sirk�lasyon yataklar&#305; i�in SKF ve FAG gerekliliklerini kar&#351;&#305;lar. Mobil DTE PM Serisi ya&#287;lar&#305; performans kapasitesi modern y�ksek �&#305;kt&#305;l&#305; ka&#287;&#305;t makinesi ya&#287;lamas&#305;nda ispatlanm&#305;&#351;t&#305;r.</p><p xmlns=""></p><div id="tabbed_table"><table style="width: 454px   " id="tblTabs" cellspacing="0px" cellpadding="0" border="0"><tr id="tabNav"><td style="height:1px; padding-bottom:-10px; " colspan="5"><div style="z-index:100; " id="divTabs"><ul><li onmouseover="if(this.className!='current')this.className='highlight';" onmouseout="if(this.className!='current')this.className=''" class="current" id="Faydalar"><a href="#" onclick="javascript:showTab('Faydalar');">Faydalar</a></li><li onmouseover="if(this.className!='current')this.className='highlight'" onmouseout="if(this.className!='current')this.className=''" id="Teknik veriler"><a href="#" onclick="javascript:showTab('Teknik veriler');">Teknik veriler</a></li><li onmouseover="if(this.className!='current')this.className='highlight'" onmouseout="if(this.className!='current')this.className=''" id="Kullanim Yerleri"><a href="#" onclick="javascript:showTab('Kullanim Yerleri');">Kullanim Yerleri</a></li></ul></div></td></tr><tr id="trTabContent"><td valign="top" style="width: 10px; background-image:url('/Images/Tabs/box_Left.png'); background-repeat: repeat-y; background-color: #ffffff;"><img src="/Images/Tabs/box_LeftUpper.png" class="leftUpperImg" alt=""/></td><td valign="top" style="width: 435px; background-image:url('/Images/Tabs/boxNoFade_Upper.png'); background-repeat: repeat-x; background-color: #ffffff;" class="midBorder"><div style="width:434px; white-space:normal; padding-top:10px;display:block " class="divTabContent" id="Faydalar Content"><p xmlns="">Mobil DTE PM Serisi ya&#287;lar&#305;n modern ve y�ksek verimli ka&#287;&#305;t makineleri ya&#287;lamas&#305;nda performans yeteneklerini kan&#305;tlanm&#305;&#351; durumdad&#305;r. Bu ya&#287;lar&#305;n a&#351;&#305;nmaya kar&#351;&#305; koruma, geli&#351;mi&#351; oksidasyon ve kimyasal kararl&#305;l&#305;&#287;&#305;, pas ve korozyondan etkili koruma, renk kararl&#305;l&#305;&#287;&#305; ve filtre edilebilirlik alanlar&#305;ndaki kan&#305;tlanm&#305;&#351; m�kemmel performans kapasiteleri yaln&#305;zca bak&#305;m �al&#305;&#351;ma aral&#305;klar&#305;n&#305; uzatmakla kalmaz, ayn&#305; zamanda makine performans&#305;n&#305; artt&#305;r&#305;r ve �retim kapasitelerini y�kseltir. Bunun sonucunda daha az bak&#305;m, ekipman �mr�n�n uzat&#305;lmas&#305; ve �retim kapasitesinin art&#305;r&#305;lmas&#305; sa&#287;lan&#305;r.&nbsp;</p><p xmlns="">&bull; Yatak ve di&#351;li performans&#305;n&#305; art&#305;r&#305;r<br>
&bull; Ya&#287; �mr�n� uzat&#305;r<br>
&bull; Filtre de&#287;i&#351;tirme maliyetini azalt&#305;r<br>
&bull; Daha temiz sistemler sa&#287;lar<br>
&bull; Sistemde tortular&#305; azalt&#305;r<br>
&bull; Sistemden suyun kolayl&#305;kla ayr&#305;lmas&#305;na imkan verir<br>
&bull; Sistem i�inde em�lsiyon olu&#351;umunu azalt&#305;r<br>
&bull; Yatak ve di&#351;lilerde malzeme yorulmas&#305; ar&#305;zalar&#305;n&#305; azalt&#305;r<br>
&bull; Ya&#287; hatlar&#305; ve ak&#305;&#351; kontrol mekanizmalar&#305;nda tortu olu&#351;umunu �nler<br>
&bull; Ya&#287; ak&#305;&#351; ve so&#287;uma performanslar&#305;n&#305; art&#305;r&#305;r<br>
&bull; Filtre de&#287;i&#351;tirme maliyetini d�&#351;�r�r<br>
&bull; Di&#351;li ve yataklar&#305; &#305;slak ortamlarda korur<br>
&bull; Normal olarak ya&#287;lanm&#305;&#351; y�zeylerin d&#305;&#351;&#305;nda kalan yatak ve di&#351;li y�zeylerde i�in buhar ortam&#305; korumas&#305; sa&#287;lar</p></div><div style="width:415px; white-space:normal; padding-top:10px;display:none " class="divTabContent" id="Teknik veriler Content"><table xmlns="" width="100%" summary="" class="standard" cellspacing="0" border="0"><tr><th scope="col" class="standard">Mobil DTE PM Serisi</th><th scope="col" class="standard">100</th><th scope="col" class="standard">150</th><th scope="col" class="standard">220</th><th scope="col" class="standard">320</th></tr><tr><td class="standard">ISO Viskozite S&#305;n&#305;f&#305;</td><td class="standard">100</td><td class="standard">150</td><td class="standard">220</td><td class="standard">320</td></tr><tr><td class="tr_blue">Viskozite, ASTM D 445</td><td class="tr_blue">&nbsp;</td><td class="tr_blue">&nbsp;</td><td class="tr_blue">&nbsp;</td><td class="tr_blue">&nbsp;</td></tr><tr><td class="standard">cSt @ 40� C</td><td class="standard">100</td><td class="standard">150</td><td class="standard">220</td><td class="standard">320</td></tr><tr><td class="tr_blue">cSt @ 100� C</td><td class="tr_blue">11.4</td><td class="tr_blue">14.7</td><td class="tr_blue">19.0</td><td class="tr_blue">25.4</td></tr><tr><td class="standard">Viskozite Indeksi, ASTM D 2270, min</td><td class="standard">95</td><td class="standard">95</td><td class="standard">95</td><td class="standard">95</td></tr><tr><td class="tr_blue">Akma Noktasi, �C, ASTM D 97</td><td class="tr_blue">-6</td><td class="tr_blue">-6</td><td class="tr_blue">-6</td><td class="tr_blue">-6</td></tr><tr><td class="standard">Parlama Noktasi, �C, ASTM D 92</td><td class="standard">240</td><td class="standard">250</td><td class="standard">260</td><td class="standard">250</td></tr></table><p xmlns="">&nbsp;</p></div><div style="width:415px; white-space:normal; padding-top:10px;display:none " class="divTabContent" id="Kullanim Yerleri Content"><p xmlns="">&bull; End�striyel ka&#287;&#305;t makineleri merkezi ya&#287;lama sistemleri<br>
&bull; Geni&#351; bir s&#305;cakl&#305;k aral&#305;&#287;&#305; i�inde �al&#305;&#351;an merkezi ya&#287;lama sistemleri uygulamalar&#305;<br>
&bull; �al&#305;&#351;t&#305;r&#305;ld&#305;ktan sonra h&#305;zl&#305; olarak devreye girmesi istenen sistemler<br>
&bull; Di&#351;li ve rulman merkezi ya&#287;lama sistemleri</p></div></td><td valign="top" style="width: 10px; background-image:url('/Images/Tabs/box_Right.png'); background-repeat: repeat-y; background-color: #ffffff;" class="rightBorder"><img src="/Images/Tabs/boxNoFade_RightUpper.png" alt=""/></td></tr><tr id="tabsLower"><td valign="top" style="width: 10px; height: 10px;" id="tabsLowerLeft"><img src="/Images/Tabs/box_LeftLower.png" alt=""/></td><td valign="top" style="width: 435px; background-image:url('/Images/Tabs/box_Lower.png'); background-repeat: repeat-x;" id="tabsLowerMiddle">�</td><td valign="top" style="width: 10px; height: 10px;" id="tabsLowerRight"><img src="/Images/Tabs/box_RightLower.png" alt=""/></td></tr></table></div></div></div><!--#include virtual="Navigation/Footer.aspx"--></div><script type="text/javascript">	
				var tabsdiv = document.getElementById("divTabs");
				var tabs, tabId;
 
				//Get parameter
				var parameters = location.search;
				var index = parameters.indexOf('tabIndex=');
				if (index != -1){
					
					var tabIndex = parameters.charAt(index+9);
					if(tabsdiv.childNodes.length == 1)
					{
						tabs = tabsdiv.childNodes[0];
					}else
					{
						tabs = tabsdiv.childNodes[1];
					}
					if(tabs.childNodes.length >= tabIndex)
					{
						tabId = tabs.childNodes[tabIndex-1].id;
						showTab(tabId);				
						location.href = location.href+"#"+ tabId;
					}
				}
			</script></body></html>