
				<%@ Page Language="C#"%>
				<script runat=server>
					protected String GetDomain()
					{
						string hostname = Request.ServerVariables.Get("SERVER_NAME");
						string domain = string.Empty;
						if (hostname.Contains("www.mobilindustrial.com") || hostname.Contains("acptwip.mobil.com") )
							{		
								domain = "";
								
							
								
							} 
						else   
							{
								domain = "";
							}
						return domain;
					}
				</script>			
				<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
				<html xmlns="http://www.w3.org/1999/xhtml" xmlns:xalan-nodeset="org.apache.xalan.xslt.extensions.Nodeset" xmlns:java="http://xml.apache.org/xslt/java" xmlns:fo="http://www.w3.org/1999/XSL/Format" xml:lang="tr" lang="tr"><head><title>Lityum Kompleksli  Gres-  Mobilgrease XHP&trade;  220 Serisi | Mobil End�striyel Ya&#287;lar&#305;</title><meta http-equiv="X-UA-Compatible" content="IE=edge"/><meta name="keywords" content="Lityum kompleksli gres, lityum gres, Mobilgrease XHP, Mobil grease XHP, lityum kompleksi �retim, Mobilgrease XHP 220 Serisi, mobilgrease �r�nleri"/><meta name="description" content="Mobilgrease XHP&trade;  220 Serisi gresi �zel lityum kompleksi �retim teknolojisi uygulanmas&#305;yla konvansiyonel �r�nlere g�re daha iyi performans g�stermek �zere tasarlanm&#305;&#351;t&#305;r."/><meta name="date" content="10/2013"/><meta name="language" content="tr"/><meta http-equiv="Content-Language" content="tr"/><link type="text/css" rel="stylesheet" media="all" href="/Imports/mobil_ind.css"/><link type="text/css" rel="stylesheet" media="print" href="/Imports/xom_print.css"/><link type="text/css" title="medium" rel="stylesheet" href="/Imports/xom_web_medium.css"/><link type="text/css" title="large" rel="alternate stylesheet" href="/Imports/xom_web_large.css"/><link type="text/css" title="small" rel="alternate stylesheet" href="/Imports/xom_web_small.css"/>	
						<script type="text/javascript" src="/Imports/js/styleswitcher.js"></script>
						<script type="text/javascript" src="/Imports/js/footnotelinks.js"></script>
						<script language="Javascript" src="/Imports/js/xom.js"></script>
						<script type="text/javascript" src="/Imports/js/swfobject.js"></script>
						<script type="text/javascript" src="/Imports/js/search.js"></script> <!--[if IE 7.0]>
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
				<!-- Set 'expires' in http header, start --><% string cacheExpireDateStr="5/16/2016 9:38:40 AM";
        DateTime cacheExpireDate = Convert.ToDateTime(cacheExpireDateStr); 
        Response.AddHeader("Expires",cacheExpireDate.ToUniversalTime().ToString("ddd, dd MMM yyyy HH:mm:ss 'GMT'")); %><!-- end --></head><body class="article"><a href="#mainContent" class="skip">Skip to Main Content</a><div id="container"><!--#include virtual="Navigation/Header.aspx"--><div id="mainPanel" class="clrfix"><!--#include virtual="Navigation/products_left_navigation.aspx"--><div id="toolbar"><!--#include virtual="Services/Toolbox.aspx"--><div class="related"><div class="relatedimg150X68"><a href="products_mobil-shc.aspx"><img xmlns="" title="Mobil SHC" src="Images/150x68_sidecallouts_mobilshc.jpg" longdesc="" border="0" alt="Mobil SHC"><p xmlns=""><a title="" target="" href="products_mobil-shc.aspx" class=""></a> Mobilgrease XHP&trade; 220<br><a title="This link will open a new window." target="_new" href="http://www.mobil.com/Turkey-Turkish/Lubes/PDS/GLXXTRGRSMOMobilgrease_XHP_220.aspx">�r�n veri sayfas&#305; (PDS)</a><br><a title="This link will open a new window." target="_new" href="http://www.msds.exxonmobil.com/psims/psims.aspx">Malzeme g�venlik veri sayfas&#305; (MSDS)</a></p></a></div></div><div class="related"><div class="relatedimg150X68"><a href="distributorlocator.aspx"><img xmlns="" title="Nereden sat&#305;n al&#305;nabilir" src="Images/150x68_sidecallouts_where_to_buy.jpg" longdesc="" border="0" alt="Nereden sat&#305;n al&#305;nabilir"><p xmlns=""><a title="" target="" href="distributorlocator.aspx" class=""></a><br>
Nereden sat&#305;n al&#305;nabilir<br><a title="" target="" href="distributorlocator.aspx" class="">Size yak&#305;n bir distrib�t�r bulun</a></p></a></div></div><div class="related"><div class="relatedimg150X68"><a href="/Apps/ILS/Default_EN.aspx"><img xmlns="" title="Looble" src="Images/150x68_sidecallouts_looble1.jpg" longdesc="" border="0" alt="Looble"><p xmlns=""><a title="This link will open a new window." target="_new" href="/Apps/ILS/Default_EN.aspx"></a><br>
Looble<sup>SM</sup> �r�n se�ici (EN)<br><a title="This link will open a new window." target="_new" href="/Apps/ILS/Default_EN.aspx">Uygulaman&#305;z i�in do&#287;ru ya&#287;&#305; bulun</a></p></a></div></div></div><div id="mainContent"><br/><div class="img150 left"><img xmlns="" title="Mobilgrease XHP 220 serisi gres yata&#287;&#305; altta damlat&#305;yor" src="Images/article_150x150_mobil-xhp-220-series.jpg" longdesc="" border="0" alt="Mobilgrease XHP 220 serisi gres yata&#287;&#305; altta damlat&#305;yor"></div><p xmlns=""><span style=" font-size: x-large;"><b>Mobilgrease XHP&trade; 220 Serisi</b></span></p><p xmlns=""><span style=" font-size: large;"><b>�ok ama�l&#305; lityum kompleksli gres</b></span></p><p xmlns="">Mobilgrease XHP 220 gresi �ok �e&#351;itli uygulamalar ve a&#287;&#305;r �al&#305;&#351;ma ko&#351;ullar&#305; i�in form�le edilmi&#351;tir. Bu ola&#287;an�st� gresler en son teknolojiye sahip, �ok �zel, lityum kompleksi �retim teknolojisi uygulayarak geleneksel �r�nlerden daha y�ksek performans g�stermek �zere tasarlanm&#305;&#351;lard&#305;r.</p><p xmlns=""><b>�ok y�nl� performans</b><br>
Mobilgrease XHP 220 gresleri end�striyel, otomotiv, in&#351;aat ve denizcilik gibi �ok �e&#351;itli end�strilerde geni&#351; bir uygulama aral&#305;&#287;&#305; i�in tasarlanm&#305;&#351;t&#305;r. NLGI derece 00, 0, 1, 2 ve 3 ve ISO VG 220 baz ya&#287; viskozitesi ile sa&#287;lanabilirler. D�nya �ap&#305;nda yenilik�ilik ve m�kemmel performansla tan&#305;nm&#305;&#351; Mobilgrease marka �r�nlerin �nde gelen �yeleridirler.</p><p xmlns=""><a title="This link will open a new window." target="_new" href="/ind/english/files/heavy-duty-mobilgrease-xhp-series.pdf">Mobilgrease&trade; XHP veri sayfas&#305;<img src="/Images/Icons/icon_pdf_whitespace.jpg" border="0" alt=""></a> (EN)</p><p xmlns=""></p><div id="tabbed_table"><table style="width: 454px   " id="tblTabs" cellspacing="0px" cellpadding="0" border="0"><tr id="tabNav"><td style="height:1px; padding-bottom:-10px; " colspan="5"><div style="z-index:100; " id="divTabs"><ul><li onmouseover="if(this.className!='current')this.className='highlight';" onmouseout="if(this.className!='current')this.className=''" class="current" id="�zellikleri ve Faydalar&#305;"><a href="#" onclick="javascript:showTab('�zellikleri ve Faydalar&#305;');">�zellikleri ve Faydalar&#305;</a></li><li onmouseover="if(this.className!='current')this.className='highlight'" onmouseout="if(this.className!='current')this.className=''" id="Tipik �zellikler"><a href="#" onclick="javascript:showTab('Tipik �zellikler');">Tipik �zellikler</a></li><li onmouseover="if(this.className!='current')this.className='highlight'" onmouseout="if(this.className!='current')this.className=''" id="Kullan&#305;m Yerleri"><a href="#" onclick="javascript:showTab('Kullan&#305;m Yerleri');">Kullan&#305;m Yerleri</a></li></ul></div></td></tr><tr id="trTabContent">
											<td valign="top" style="width: 10px; background-image:url('<%=GetDomain()%>/Images/Tabs/box_Left.png'); background-repeat: repeat-y; background-color: #ffffff;">
												<img class="leftUpperImg" src="<%=GetDomain()%>/Images/Tabs/box_LeftUpper.png" alt=""/>
											</td>									
										<td valign="top" class="midBorder" style="width: 435px; background-image:url('<%=GetDomain()%>/Images/Tabs/boxNoFade_Upper.png'); background-repeat: repeat-x; background-color: #ffffff;">
										<div style="width:434px; white-space:normal; padding-top:10px;display:block " class="divTabContent" id="�zellikleri ve Faydalar&#305; Content"><p xmlns="">Mobilgrease XHP 220 Serisi gresleri, Mobilgrease marka �r�nler aras&#305;nda �nc� niteli&#287;indedir, yenilik ve m�kemmel performans a�&#305;s&#305;ndan tan&#305;nm&#305;&#351; ve kabul g�rm�&#351;t�r. Bu gresler form�lasyon konusunda teknoloji geli&#351;tiren elemanlar&#305;m&#305;z taraf&#305;ndan tasarlanan y�ksek performans �r�nleridir ve d�nya genelinde teknik destek personelimiz taraf&#305;ndan kullan&#305;ma sunulmaktad&#305;rlar. Mobilgrease XHP 220 Serisi greslerin m�kemmel yap&#305;&#351;ma ve tutunma �zellikleri yan&#305; s&#305;ra y�ksek damlama noktas&#305; sa&#287;layan temel fakt�rler aras&#305;nda ara&#351;t&#305;rma tesislerimizde geli&#351;tirilmi&#351; ve modern imalat tesislerinde uygulamaya sokulmu&#351; �zel imalat teknolojilerinin yer almas&#305;d&#305;r. Bu �r�nler, m�kemmel oksidasyon kararl&#305;l&#305;&#287;&#305;, pas ve korozyon kontrolu, su kirlili&#287;ine kar&#351;&#305; direncin yan&#305; s&#305;ra, ayn&#305; zamanda a&#351;&#305;nma �nleme ve EP korumas&#305; a�&#305;s&#305;ndan m�kemmel �zellikler sa&#287;layan se�kin kat&#305;klarla ile �retilmi&#351;tir. Mobilgrease XHP 220 Serisi �r�nler, a&#351;a&#287;&#305;da verilen �zellik ve potansiyel faydalar&#305; sa&#287;lar:</p><table xmlns="" width="100%" summary="" class="standard" cellspacing="0" border="0"><tr><th scope="col" class="standard">�zellikleri</th><th scope="col" class="standard">Avantajlar&#305; ve Sa&#287;layaca&#287;&#305; Faydalar&#305;</th></tr><tr><td class="standard">Su taraf&#305;ndan y&#305;kanma ve p�sk�rtme ile ta&#351;&#305;nmaya kar&#351;&#305; m�kemmel diren�</td><td class="standard">En zor &#351;artlar alt&#305;ndaki sulu ortamlarda bile uygun ya&#287;lama ve koruma sa&#287;lamaya yard&#305;mc&#305; olur</td></tr><tr><td class="tr_blue">Y�ksek d�zeyde yap&#305;&#351;ma ve tutunma �zelli&#287;i</td><td class="tr_blue">M�kemmel gres kararl&#305;l&#305;&#287;&#305;na sahiptir, ka�aklar&#305; azaltarak ve yeniden ya&#287;lama aral&#305;klar&#305;n&#305; uzatarak bak&#305;m gereksinimlerinin azalt&#305;lmas&#305;na yard&#305;mc&#305; olur</td></tr><tr><td class="standard">Pas ve korozyona kar&#351;&#305; m�kemmel diren�</td><td class="standard">En zor sulu ortamlarda ya&#287;lanan par�alar&#305;n korunmas&#305;n&#305; sa&#287;lar</td></tr><tr><td class="tr_blue">Y�ksek s&#305;cakl&#305;klarda &#305;s&#305;l, oksidasyon ve yap&#305;sal bozunmaya kar&#351;&#305; y�ksek diren�</td><td class="tr_blue">Y�ksek s&#305;cakl&#305;k uygulamalar&#305;nda gres �mr�n� uzatmaya ve rulman korumas&#305;n&#305; art&#305;rmaya yard&#305;mc&#305; olur, daha az bak&#305;m ve de&#287;i&#351;im maliyeti imkan&#305; sa&#287;lar</td></tr><tr><td class="standard">A&#351;&#305;nmaya kar&#351;&#305; �ok iyi koruma ve EP performans&#305;</td><td class="standard">Ya&#287;lanan ekipmanlar&#305;n y�ksek kayma ko&#351;ullar&#305;nda g�venilir korunmas&#305;n&#305; sa&#287;lar, ekipman �mr�n� uzatma ve beklenmeyen duru&#351;lar&#305; azaltma potansiyeline sahiptir</td></tr><tr><td class="tr_blue">�ok geni&#351; uygulama alan&#305;</td><td class="tr_blue">Envanteri sadele&#351;tirme imkan&#305; ve d�&#351;�k envanter maliyeti sa&#287;lar</td></tr></table><p xmlns="">&nbsp;</p></div><div style="width:415px; white-space:normal; padding-top:10px;display:none " class="divTabContent" id="Tipik �zellikler Content"><table xmlns="" width="100%" summary="" class="standard" cellspacing="0" border="0"><tr><th scope="col" class="standard">Mobilgrease XHP 220</th><th scope="col" class="standard">&nbsp;</th></tr><tr><td class="standard">NLGI S&#305;n&#305;f&#305;</td><td class="standard">0</td></tr><tr><td class="tr_blue">Kal&#305;nla&#351;t&#305;r&#305;c&#305; Sabun Tipi</td><td class="tr_blue">LityumKompleks</td></tr><tr><td class="standard">Renk</td><td class="standard">Koyu Mavi</td></tr><tr><td class="tr_blue">Baz Ya&#287; Viskozitesi, ASTM D 445</td><td class="tr_blue">&nbsp;</td></tr><tr><td class="standard">cSt @ 40� C</td><td class="standard">220</td></tr><tr><td class="tr_blue">Damlama Noktas&#305;, �C, ASTM D 2265</td><td class="tr_blue">270</td></tr></table><p xmlns="">&nbsp;</p></div><div style="width:415px; white-space:normal; padding-top:10px;display:none " class="divTabContent" id="Kullan&#305;m Yerleri Content"><ul xmlns=""><li>Mobilgrease XHP 220 Serisi gresleri, end�striyel, otomotiv, in&#351;aat ve denizcilik uygulamalar&#305;n&#305; da i�eren �ok �e&#351;itli ekipmanlarda kullan&#305;l&#305;r. Mavi rengi, uygulama noktas&#305;n&#305;n tespit edilmesini kolayla&#351;t&#305;r&#305;r.</li><li>Mobilgrease XHP 005 ve 220 daha yumu&#351;ak ve y�ksek s&#305;cakl&#305;&#287;a dayan&#305;kl&#305; bir gres olup, ExxonMobil taraf&#305;ndan merkezi gres uygulama sistemlerinde, di&#351;li ya&#287;lamas&#305;nda ve a&#351;&#305;r&#305; so&#287;uklarda pompalanabilmenin �nemli oldu&#287;u durumlar i�in tavsiye edilir.</li><li>Mobilgrease XHP 221, ExxonMobil taraf&#305;ndan end�striyel ve denizcilik uygulamalar&#305;, &#351;a&#351;i aksamlar&#305; ve tar&#305;m makinelerinde kullan&#305;lmak �zere tavsiye edilir. M�kemmel d�&#351;�k s&#305;cakl&#305;k performans&#305; sa&#287;lar.</li><li>Mobilgrease XHP 222, ExxonMobil taraf&#305;ndan end�striyel ve denizcilik uygulamalar&#305;, &#351;asi aksamlar&#305; ve tar&#305;m makineleri i�in tavsiye edilir. Yap&#305;&#351;kan form�lasyonu sayesinde uygulama alan&#305;nda daha uzun s�re kal&#305;r.</li><li>Mobilgrease XHP 223, ExxonMobil taraf&#305;ndan y�ksek s&#305;cakl&#305;k ve s&#305;zd&#305;rmazl&#305;k �zelliklerinin iyi olmas&#305;n&#305; gerektiren uygulamalar i�in tavsiye edilir. Bu gres, �zellikle zorlu kamyon tekerlek rulmanlar&#305; uygulamalar&#305;nda veya titre&#351;imli &#351;artlara maruz kalan rulmanlarda ya da y�ksek h&#305;za dayal&#305; olarak, rulman elemanlar&#305;n&#305; ya&#287;s&#305;z b&#305;rakmayacak &#351;ekilde kanallama �zelliklerini sa&#287;layacak daha sert bir gresin kullan&#305;lmas&#305;n&#305; gerektiren durumlar i�in tavsiye edilir.</li><li>Mobilgrease XHP 222 Special, %0,75 molibden dis�lfit i�erir ve gri renklidir. Bu gres, ExxonMobil taraf&#305;ndan orta zorlukdaki end�striyel uygulamalar&#305;, &#351;a&#351;i bile&#351;enleri ve tar&#305;m makinelerinde kullan&#305;lmak �zere tavsiye edilir. Ayr&#305;ca, king pimi, istavroz mafsal, be&#351;inci teker ve kova pimi gibi yerlerde de kullan&#305;labilir.</li></ul></div></td>
										<td valign="top" class="rightBorder" style="width: 10px; background-image:url('<%=GetDomain()%>/Images/Tabs/box_Right.png'); background-repeat: repeat-y; background-color: #ffffff;">
											<img src="<%=GetDomain()%>/Images/Tabs/boxNoFade_RightUpper.png" alt=""/>
										</td>
										</tr><tr id="tabsLower">
										<td id="tabsLowerLeft" valign="top" style="width: 10px; height: 10px;">
											<img src="<%=GetDomain()%>/Images/Tabs/box_LeftLower.png" alt=""/>
										</td>
										<td id="tabsLowerMiddle" valign="top" style="width: 435px; background-image:url('<%=GetDomain()%>/Images/Tabs/box_Lower.png'); background-repeat: repeat-x;">
											<xsl:text disable-output-escaping="yes">&#160;</xsl:text>
										</td>
										<td id="tabsLowerRight" valign="top" style="width: 10px; height: 10px;">
											<img src="<%=GetDomain()%>/Images/Tabs/box_RightLower.png" alt=""/>
										</td>
										</tr></table></div></div></div><!--#include virtual="Navigation/Footer.aspx"--></div><script type="text/javascript">	
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