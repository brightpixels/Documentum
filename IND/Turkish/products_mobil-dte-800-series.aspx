
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
				<html xmlns="http://www.w3.org/1999/xhtml" xmlns:xalan-nodeset="org.apache.xalan.xslt.extensions.Nodeset" xmlns:java="http://xml.apache.org/xslt/java" xmlns:fo="http://www.w3.org/1999/XSL/Format" xml:lang="tr" lang="tr"><head><title>T�rbin Ya&#287;&#305; - Mobil DTE&trade; 800 Serisi | Mobil&trade; markal&#305; End�striyel Ya&#287;lar</title><meta http-equiv="X-UA-Compatible" content="IE=edge"/><meta name="keywords" content="Mobil DTE&trade; 800 Serisi, Mobil DTE, t�rbin ya&#287;&#305;, Mobil t�rbin ya&#287;&#305;, Mobil DTE ya&#287;&#305;, DTE ya&#287;&#305;, gaz t�rbini, buhar t�rbini, kombine d�ng� gaz t�rbini"/><meta name="description" content="Mobil DTE&trade; 800 Serisi t�rbin ya&#287;&#305; zorlu �al&#305;&#351;ma ko&#351;ullar&#305; alt&#305;nda buhar t�rbinleri, gaz t�rbinleri ve kombine d�ng� gaz t�rbini uygulamalar&#305; i�in tasarlanm&#305;&#351;lard&#305;r."/><meta name="date" content="10/2013"/><meta name="language" content="tr"/><meta http-equiv="Content-Language" content="tr"/><link type="text/css" rel="stylesheet" media="all" href="/Imports/mobil_ind.css"/><link type="text/css" rel="stylesheet" media="print" href="/Imports/xom_print.css"/><link type="text/css" title="medium" rel="stylesheet" href="/Imports/xom_web_medium.css"/><link type="text/css" title="large" rel="alternate stylesheet" href="/Imports/xom_web_large.css"/><link type="text/css" title="small" rel="alternate stylesheet" href="/Imports/xom_web_small.css"/>	
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
				<!-- Set 'expires' in http header, start --><% string cacheExpireDateStr="4/26/2016 10:48:50 AM";
        DateTime cacheExpireDate = Convert.ToDateTime(cacheExpireDateStr); 
        Response.AddHeader("Expires",cacheExpireDate.ToUniversalTime().ToString("ddd, dd MMM yyyy HH:mm:ss 'GMT'")); %><!-- end --></head><body class="article"><a href="#mainContent" class="skip">Skip to Main Content</a><div id="container"><!--#include virtual="Navigation/Header.aspx"--><div id="mainPanel" class="clrfix"><!--#include virtual="Navigation/products_left_navigation.aspx"--><div id="toolbar"><!--#include virtual="Services/Toolbox.aspx"--><div class="related"><div class="relatedimg150X68"><a href="products_mobil-shc.aspx"><img xmlns="" title="Mobil SHC" src="Images/150x68_sidecallouts_mobilshc.jpg" longdesc="" border="0" alt="Mobil SHC"><p xmlns=""><a title="" target="" href="products_mobil-shc.aspx" class=""></a> Mobil DTE&trade; 800 Serisi<br><a title="This link will open a new window." target="_new" href="http://www.mobil.com/Turkey-Turkish/Lubes/PDS/GLXXTRINDMOMobil_DTE_800.aspx">�r�n veri sayfas&#305; (PDS)</a><br><a title="This link will open a new window." target="_new" href="http://www.msds.exxonmobil.com/psims/psims.aspx">Malzeme g�venlik veri sayfas&#305; (MSDS)</a></p></a></div></div><div class="related"><div class="relatedimg150X68"><a href="distributorlocator.aspx"><img xmlns="" title="Nereden sat&#305;n al&#305;nabilir" src="Images/150x68_sidecallouts_where_to_buy.jpg" longdesc="" border="0" alt="Nereden sat&#305;n al&#305;nabilir"><p xmlns=""><a title="" target="" href="distributorlocator.aspx" class=""></a>Nereden sat&#305;n al&#305;nabilir<br><a title="" target="" href="distributorlocator.aspx" class="">Size yak&#305;n bir distrib�t�r bulun</a></p></a></div></div><div class="related"><div class="relatedimg150X68"><a href="https://www.mobil.com/en/industrial/lubricants/search"><img xmlns="" title="Looble" src="Images/150x68_sidecallouts_looble1.jpg" longdesc="" border="0" alt="Looble"><p xmlns=""><a title="This link will open a new window." target="_new" href="https://www.mobil.com/en/industrial/lubricants/search"></a>Looble<sup>SM</sup> �r�n se�ici (EN)<br><a title="This link will open a new window." target="_new" href="https://www.mobil.com/en/industrial/lubricants/search">Uygulaman&#305;z i�in do&#287;ru ya&#287;&#305; bulun</a></p></a></div></div></div><div id="mainContent"><br/><div class="img150 left"><img xmlns="" title="Mobil DTE&trade; 800 Serisi t�rbin &nbsp;ya&#287;&#305; yakma t�rbin di&#351;lisinden d&#305;&#351;ar&#305; s&#305;�r&#305;yor" src="Images/article_150x150_mobil-dte-800-series.jpg" longdesc="" border="0" alt="Mobil DTE&trade; 800 Serisi t�rbin &nbsp;ya&#287;&#305; yakma t�rbin di&#351;lisinden d&#305;&#351;ar&#305; s&#305;�r&#305;yor"></div><p xmlns=""><span style=" font-size: x-large;"><b>Mobil DTE&trade; 800 Serisi</b></span></p><p xmlns=""><b>Y�ksek performansl&#305; t�rbin ya&#287;&#305;</b></p><p xmlns="">Mobil DTE 800 Serisi t�rbin ya&#287;lar&#305; en zorlu �al&#305;&#351;ma ko&#351;ullar&#305; alt&#305;nda buhar t�rbinleri, gaz t�rbinleri ve kombine d�ng� gaz t�rbini (CCGT) uygulamalar&#305; i�in tasarlanm&#305;&#351;lard&#305;r. Bu ola&#287;an�st� ya&#287;lar m�kemmel ekipman korumas&#305;, g�venilir �al&#305;&#351;ma ve uzun ya&#287; �mr� sunar.</p><p xmlns=""><b>En ileri �r�n esnekli&#287;i</b></p><p xmlns="">Mobil DTE 800 Serisi y�ksek performansl&#305; ya&#287;lar kullan&#305;c&#305; i�in en ileri esnekli&#287;i sa&#287;lar ��nk� t�m t�rbin tiplerinde kullan&#305;labilirler: buhar, gaz ve di&#351;li t�rbinler. Mobil DTE&trade; markal&#305; mineral bazl&#305; �r�nler y�zy&#305;l&#305; a&#351;k&#305;n s�redir d�nya �ap&#305;nda t�rbin operat�rlerinin tercihi olmu&#351;tur. &#350;irketimizin ara&#351;t&#305;rmac&#305;lar&#305; t�rbin ekipman&#305; �reticileri ve operat�rleriyle �ok yak&#305;ndan ili&#351;ki i�inde kalarak yeni t�rbin tasar&#305;mlar&#305;n&#305;n gerekliliklerinin ya&#287;lar&#305;m&#305;z taraf&#305;ndan kar&#351;&#305;lanmas&#305; veya bunlar&#305;n a&#351;&#305;lmas&#305;n&#305; sa&#287;lam&#305;&#351;lard&#305;r.</p><p xmlns=""></p><div id="tabbed_table"><table style="width: 454px   " id="tblTabs" cellspacing="0px" cellpadding="0" border="0"><tr id="tabNav"><td style="height:1px; padding-bottom:-10px; " colspan="5"><div style="z-index:100; " id="divTabs"><ul><li onmouseover="if(this.className!='current')this.className='highlight';" onmouseout="if(this.className!='current')this.className=''" class="current" id="�zellikleri ve Faydalar&#305;"><a href="#" onclick="javascript:showTab('�zellikleri ve Faydalar&#305;');">�zellikleri ve Faydalar&#305;</a></li><li onmouseover="if(this.className!='current')this.className='highlight'" onmouseout="if(this.className!='current')this.className=''" id="Tipik �zellikler"><a href="#" onclick="javascript:showTab('Tipik �zellikler');">Tipik �zellikler</a></li><li onmouseover="if(this.className!='current')this.className='highlight'" onmouseout="if(this.className!='current')this.className=''" id="Kullan&#305;m Yerleri"><a href="#" onclick="javascript:showTab('Kullan&#305;m Yerleri');">Kullan&#305;m Yerleri</a></li></ul></div></td></tr><tr id="trTabContent">
											<td valign="top" style="width: 10px; background-image:url('<%=GetDomain()%>/Images/Tabs/box_Left.png'); background-repeat: repeat-y; background-color: #ffffff;">
												<img class="leftUpperImg" src="<%=GetDomain()%>/Images/Tabs/box_LeftUpper.png" alt=""/>
											</td>									
										<td valign="top" class="midBorder" style="width: 435px; background-image:url('<%=GetDomain()%>/Images/Tabs/boxNoFade_Upper.png'); background-repeat: repeat-x; background-color: #ffffff;">
										<div style="width:434px; white-space:normal; padding-top:10px;display:block " class="divTabContent" id="�zellikleri ve Faydalar&#305; Content"><p xmlns="">Mobil DTE marka mineral esasl&#305; �r�nler y�z y&#305;ldan daha uzun bir zamand&#305;r d�nyan&#305;n �nde gelen t�rbin imalat�&#305;lar&#305;n&#305;n tercihi olmaktad&#305;r. Bu d�nem boyunca &#351;irketimizin bilim adamlar&#305; t�rbin ekipmanlar&#305; imalat�&#305;lar&#305; ve i&#351;letmecileri ile yak&#305;n �al&#305;&#351;ma i�inde olmu&#351;lar ve s�rekli olarak ya&#287;lar&#305;m&#305;z&#305;n yeni t�rbin tasar&#305;mlar&#305;n&#305;n gereksinimlerini kar&#351;&#305;lamas&#305;n&#305; veya a&#351;mas&#305;n&#305; sa&#287;lam&#305;&#351;lard&#305;r. Bu durum Mobil t�rbin ya&#287;lar&#305;n&#305;n s�rekli yenilenmesini ve en uygun modern baz ya&#287; ve kat&#305;k teknolojisinin uygulanmas&#305;n&#305; beraberinde getirmi&#351;tir.</p><p xmlns="">Y�ksek g�� �retimi &#351;artlar&#305;nda �al&#305;&#351;an modern sabit gaz t�rbinleri i�in &#305;s&#305;l/oksitlenme etkilerine ve tortu olu&#351;umuna kar&#351;&#305; ola&#287;an�st� koruma sa&#287;lanmas&#305; ka�&#305;n&#305;lmaz gerekliliktir. Zor ko&#351;ullar alt&#305;nda �al&#305;&#351;ma, ya&#287;lar �zerinde &#305;s&#305;l gerilimlere neden olmakta, bu da filtre t&#305;kanmas&#305;, servo-valflarda tortu olu&#351;umu ve ya&#287; �mr�n�n k&#305;salmas&#305;na yol a�maktad&#305;r. Modern buhar t�rbinlerinde buhar ka�aklar&#305; s�z konusu oldu&#287;unda y�ksek d�zeyde oksitlenme direnci yan&#305; s&#305;ra iyi sudan ayr&#305;lma �zelli&#287;i gerekmektedir. Kombine �evrimli i&#351;letmeler i�inse ya&#287;lar&#305;n her iki tip t�rbin i�in gerekli �zellikleri sa&#287;lamas&#305; beklenmektedir.</p><p xmlns="">Mobil DTE 800 Serisi ya&#287;lar a&#351;a&#287;&#305;da verilen �zellik ve olas&#305; yararlar&#305; sa&#287;lamaktad&#305;r:</p><table xmlns="" width="100%" summary="" class="standard" cellspacing="0" border="0"><tr><th scope="col" class="standard"><b>�zellikleri</b></th><th scope="col" class="standard"><b>Avantajlar&#305; ve Sa&#287;layabilece&#287;i Faydalar</b></th></tr><tr><td class="standard">�nde gelen imalat�&#305;lar&#305;n talep etti&#287;i gaz ve buhar t�rbin gereksinimlerini ayn&#305; anda kar&#351;&#305;lar ve a&#351;ar</td><td class="standard">Yanl&#305;&#351; ya&#287; uygulama olas&#305;l&#305;&#287;&#305;n&#305; �nler, masrafl&#305; ya&#287; de&#287;i&#351;imlerini azalt&#305;r</td></tr><tr><td class="tr_blue">&nbsp;</td><td class="tr_blue">Stok maliyetlerini azalt&#305;r</td></tr><tr><td class="standard">M�kemmel &#305;s&#305;l/oksidasyon kararl&#305;l&#305;&#287;&#305;</td><td class="standard">Duru&#351;lar&#305; azalt&#305;r, daha g�venilir i&#351;letme sa&#287;lar</td></tr><tr><td class="tr_blue">&nbsp;</td><td class="tr_blue">Ya&#287; de&#287;i&#351;me aral&#305;&#287;&#305;n&#305; art&#305;r&#305;r, �retim maliyetlerini d�&#351;�r�r</td></tr><tr><td class="standard">A&#351;&#305;nmaya kar&#351;&#305; m�kemmel koruma</td><td class="standard"><br>
Devir d�&#351;�r�c�l� t�rbinler (gaz ve buhar) i�in m�kemmel koruma sa&#287;lar, bak&#305;m ve de&#287;i&#351;me maliyetlerini d�&#351;�r�r</td></tr><tr><td class="tr_blue">&nbsp;</td><td class="tr_blue">Ekipman �mr�n� uzat&#305;r, par�a de&#287;i&#351;im maliyetini d�&#351;�r�r</td></tr><tr><td class="standard">M�kemmel sudan ayr&#305;lma �zelli&#287;i</td><td class="standard">Sistemin verimli �al&#305;&#351;mas&#305;n&#305; ve bak&#305;m maliyetlerinde azalma sa&#287;lar</td></tr></table><p xmlns="">&nbsp;</p></div><div style="width:415px; white-space:normal; padding-top:10px;display:none " class="divTabContent" id="Tipik �zellikler Content"><table xmlns="" width="100%" summary="" class="standard" cellspacing="0" border="0"><tr><th scope="col" class="standard">Mobil DTE 800 Serisi</th><th scope="col" class="standard">832</th><th scope="col" class="standard">846</th></tr><tr><td class="standard">ISO Viskozite S&#305;n&#305;f&#305;</td><td class="standard">32</td><td class="standard">46</td></tr><tr><td class="tr_blue">Viskozite, ASTM D 445</td><td class="tr_blue">&nbsp;</td><td class="tr_blue">&nbsp;</td></tr><tr><td class="standard">cSt @ 40� C</td><td class="standard">29.6</td><td class="standard">42.4</td></tr><tr><td class="tr_blue">cSt @ 100� C</td><td class="tr_blue">5.4</td><td class="tr_blue">6.2</td></tr><tr><td class="standard">Viskozite &#304;ndeksi, ASTM D 2270</td><td class="standard">110</td><td class="standard">106</td></tr><tr><td class="tr_blue">Akma Noktas&#305;, �C, ASTM D 97</td><td class="tr_blue">-30</td><td class="tr_blue">-30</td></tr><tr><td class="standard">Parlama Noktas&#305;, �C, ASTM D 92</td><td class="standard">224</td><td class="standard">244</td></tr></table><p xmlns="">&nbsp;</p></div><div style="width:415px; white-space:normal; padding-top:10px;display:none " class="divTabContent" id="Kullan&#305;m Yerleri Content"><p xmlns="">Mobil DTE 832 ve 846 direk ba&#287;lant&#305;l&#305; veya devir d�&#351;�r�c�l� buhar ve gaz t�rbinleri ya&#287; sistemlerinde, t�rbin devir kontrol mekanizmalar&#305;nda kullan&#305;lmak �zere tasarlanm&#305;&#351; �st�n performansl&#305; t�rbin ya&#287;lar&#305;d&#305;r. �zel uygulamalar aras&#305;nda &#351;unlar bulunur:</p><p xmlns="">&bull; Buhar ve gaz t�rbinleri i�in ortak merkezi ya&#287;lama sistemi olan Kombine �evrimli (CCGT) elektrik g�� �retimi uygulamalar&#305;.<br>
&bull; Elektrik g�� �retimi, do&#287;al gaz boru hatt&#305; iletimi, �retim tesisleri ve enerji geri kazanma tesislerinde kullan&#305;lan buhar ve gaz t�rbinlerinin ya&#287;lamas&#305;.<br>
&nbsp;</p></div></td>
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
