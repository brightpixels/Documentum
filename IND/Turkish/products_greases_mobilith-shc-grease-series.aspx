
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
				<html xmlns="http://www.w3.org/1999/xhtml" xmlns:xalan-nodeset="org.apache.xalan.xslt.extensions.Nodeset" xmlns:java="http://xml.apache.org/xslt/java" xmlns:fo="http://www.w3.org/1999/XSL/Format" xml:lang="tr" lang="tr"><head><title>End�striyel Gresler - Mobilith SHC&trade; Grease Serisi | Mobil&trade; End�striyel Ya&#287;lar&#305;</title><meta http-equiv="X-UA-Compatible" content="IE=edge"/><meta name="keywords" content="Mobil markal&#305; gres, Mobilith SHC Serisi, Mobilith SHC gresi, end�striyel gresler, Mobilith SHC, end�striyel ya&#287;lar"/><meta name="description" content="Mobilith SHC&trade; Serisi gresleri �ok �e&#351;itli a&#351;&#305;r&#305; s&#305;cakl&#305;k uygulamas&#305;nda kullan&#305;lmak ve y�ksek performansl&#305; �ok ama�l&#305; end�striyel gres sa&#287;lamak �zere tasarlanm&#305;&#351;t&#305;r."/><meta name="date" content="10/2013"/><meta name="language" content="tr"/><meta http-equiv="Content-Language" content="tr"/><link type="text/css" rel="stylesheet" media="all" href="/Imports/mobil_ind.css"/><link type="text/css" rel="stylesheet" media="print" href="/Imports/xom_print.css"/><link type="text/css" title="medium" rel="stylesheet" href="/Imports/xom_web_medium.css"/><link type="text/css" title="large" rel="alternate stylesheet" href="/Imports/xom_web_large.css"/><link type="text/css" title="small" rel="alternate stylesheet" href="/Imports/xom_web_small.css"/>	
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
				<!-- Set 'expires' in http header, start --><% string cacheExpireDateStr="10/26/2016 3:24:52 AM";
        DateTime cacheExpireDate = Convert.ToDateTime(cacheExpireDateStr); 
        Response.AddHeader("Expires",cacheExpireDate.ToUniversalTime().ToString("ddd, dd MMM yyyy HH:mm:ss 'GMT'")); %><!-- end --></head><body class="article"><a href="#mainContent" class="skip">Skip to Main Content</a><div id="container"><!--#include virtual="Navigation/Header.aspx"--><div id="mainPanel" class="clrfix"><!--#include virtual="Navigation/products_left_navigation.aspx"--><div id="toolbar"><!--#include virtual="Services/Toolbox.aspx"--><div class="related"><div class="relatedimg150X68"><a href="products_mobil-shc.aspx"><img xmlns="" title="Mobil SHC" src="Images/150x68_sidecallouts_mobilshc.jpg" longdesc="" border="0" alt="Mobil SHC"><p xmlns=""><a title="" target="" href="products_mobil-shc.aspx" class=""></a> Mobilith SHC&trade;<br><a title="This link will open a new window." target="_new" href="http://www.mobil.com/Turkey-Turkish/Lubes/PDS/GLXXTRGRSMOMobilith_SHC.aspx">�r�n veri sayfas&#305; (PDS)</a><br><a title="This link will open a new window." target="_new" href="http://www.msds.exxonmobil.com/psims/psims.aspx">Malzeme g�venlik veri sayfas&#305; (MSDS)</a></p></a></div></div><div class="related"><div class="relatedimg150X68"><a href="distributorlocator.aspx"><img xmlns="" title="Nereden sat&#305;n al&#305;nabilir" src="Images/150x68_sidecallouts_where_to_buy.jpg" longdesc="" border="0" alt="Nereden sat&#305;n al&#305;nabilir"><p xmlns=""><a title="" target="" href="distributorlocator.aspx" class=""></a><br>
Nereden sat&#305;n al&#305;nabilir<br><a title="" target="" href="distributorlocator.aspx" class="">Size yak&#305;n bir distrib�t�r bulun</a></p></a></div></div><div class="related"><div class="relatedimg150X68"><a href="https://www.mobil.com/en/industrial/lubricants/search"><img xmlns="" title="Looble" src="Images/150x68_sidecallouts_looble1.jpg" longdesc="" border="0" alt="Looble"><p xmlns=""><a title="This link will open a new window." target="_new" href="https://www.mobil.com/en/industrial/lubricants/search"></a><br>
Looble<sup>SM</sup> �r�n se�ici (EN)<br><a title="This link will open a new window." target="_new" href="https://www.mobil.com/en/industrial/lubricants/search">Uygulaman&#305;z i�in do&#287;ru ya&#287;&#305; bulun</a></p></a></div></div></div><div id="mainContent"><br/><div class="img150 left"><img xmlns="" title="Mobilith SHC Gresleri serisi ya&#287; di&#351;li yata&#287;&#305;na y�klenmi&#351;" src="Images/article_150x150_mobil-shc-grease-series.jpg" longdesc="" border="0" alt="Mobilith SHC Gresleri serisi ya&#287; di&#351;li yata&#287;&#305;na y�klenmi&#351;"></div><p xmlns=""><span style=" font-size: x-large;"><b>Mobilith SHC&trade; Gres Serisi</b></span></p><p xmlns=""><span style=" font-size: large;"><b>�st�n performansl&#305; �ok ama�l&#305; gres</b></span></p><p xmlns="">Mobilith SHC Serisi gresleri �ok �e&#351;itli a&#351;&#305;r&#305; s&#305;cakl&#305;k uygulamalar&#305; i�in tasarlanm&#305;&#351;lard&#305;r. Ola&#287;an�st� kalite, g�venilirlik ve �ok y�nl�l�kleri ile tan&#305;nd&#305;klar&#305; i�in d�nya �ap&#305;nda bir�ok end�stride kullan&#305;l&#305;rlar.</p><p xmlns=""><b>�ok �e&#351;itli derece se�ene&#287;i</b><br>
Mobilith SHC Serisi gresleri baz ya&#287; viskozitesi olarak ISO VG 100 ile 1500 ve NLGI derecesi olarak 00 ile 2 aras&#305;nda yedi derecede bulunabilir. Bu geni&#351; aral&#305;k d�&#351;�k h&#305;zl&#305; ve a&#287;&#305;r y�kl� yataklar&#305;n m�kemmel &#351;ekilde korunmas&#305; ve ayr&#305;ca g�venilir d�&#351;�k s&#305;cakl&#305;k performans&#305; i�in se�enekler sunar.</p><p xmlns=""><a title="This link will open a new window." target="_new" href="/ind/english/files/multi-purpose-grease-mobilith-shc-series.pdf">Mobilith SHC&trade; veri sayfas&#305;<img src="/Images/Icons/icon_pdf_whitespace.jpg" border="0" alt=""></a>&nbsp;(EN)<br></p><div id="tabbed_table"><table style="width: 454px   " id="tblTabs" cellspacing="0px" cellpadding="0" border="0"><tr id="tabNav"><td style="height:1px; padding-bottom:-10px; " colspan="5"><div style="z-index:100; " id="divTabs"><ul><li onmouseover="if(this.className!='current')this.className='highlight';" onmouseout="if(this.className!='current')this.className=''" class="current" id="Faydalar"><a href="#" onclick="javascript:showTab('Faydalar');">Faydalar</a></li><li onmouseover="if(this.className!='current')this.className='highlight'" onmouseout="if(this.className!='current')this.className=''" id="Teknik veriler"><a href="#" onclick="javascript:showTab('Teknik veriler');">Teknik veriler</a></li><li onmouseover="if(this.className!='current')this.className='highlight'" onmouseout="if(this.className!='current')this.className=''" id="Kullan&#305;m Yerleri"><a href="#" onclick="javascript:showTab('Kullan&#305;m Yerleri');">Kullan&#305;m Yerleri</a></li></ul></div></td></tr><tr id="trTabContent">
											<td valign="top" style="width: 10px; background-image:url('<%=GetDomain()%>/Images/Tabs/box_Left.png'); background-repeat: repeat-y; background-color: #ffffff;">
												<img class="leftUpperImg" src="<%=GetDomain()%>/Images/Tabs/box_LeftUpper.png" alt=""/>
											</td>									
										<td valign="top" class="midBorder" style="width: 435px; background-image:url('<%=GetDomain()%>/Images/Tabs/boxNoFade_Upper.png'); background-repeat: repeat-x; background-color: #ffffff;">
										<div style="width:434px; white-space:normal; padding-top:10px;display:block " class="divTabContent" id="Faydalar Content"><p xmlns="">Mobil SHC Serisi marka ya&#287;lar ve gresler d�nya �ap&#305;nda yenilik�i �zellikleri ve benzersiz performanslar&#305; ile kabul g�rmekte ve onaylanmaktad&#305;r. Mobilith SHC serisi, ExxonMobil&rsquo;in benzersiz �r�n sa&#287;lamak i�in ileri teknoloji kullan&#305;m&#305;nda g�sterdi&#287;i bug�ne kadar s�regelen kararl&#305;l&#305;&#287;&#305;n&#305; simgelemektedir. Mobilith SHC Serisi �r�nlerin geli&#351;tirilmesindeki temel fakt�r, s�rekli geli&#351;mekte olan end�striyel ekipman tasar&#305;m&#305; i�in m�kemmel performans sa&#287;layacak �r�n �nerilerimizi g�vence alt&#305;na alan bilim adamlar&#305;m&#305;z ve uygulama uzmanlar&#305;m&#305;z&#305;n OEM ekipman �reticileri ile aralar&#305;ndaki yak&#305;n temast&#305;r.</p><p xmlns="">Ekipman imalat�&#305;lar&#305; ile y�r�t�len ortak �al&#305;&#351;malar, Mobilith SHC Serisi ya&#287;lay&#305;c&#305;lar&#305;n benzersiz performans&#305;n&#305; sergileyen kendi laboratuar testlerimizin teyit edilmesinde katk&#305; sa&#287;lam&#305;&#351;t&#305;r. Bu faydalar aras&#305;nda, daha uzun gres �mr�, y�kseltilmi&#351; yatak koruyuculu&#287;u ve yatak �mr�, �ok daha geni&#351; bir s&#305;cakl&#305;k aral&#305;&#287;&#305;nda uygulanabilirlik ve geli&#351;tirilmi&#351; mekanik verimlilik ve enerji tasarrufu yer almaktad&#305;r.</p><p xmlns="">Ya&#287;lar&#305;n y�ksek &#305;s&#305;l ko&#351;ullara kar&#351;&#305; dayan&#305;kl&#305;l&#305;k �zelliklerinin art&#305;r&#305;lmas&#305; konusunda �r�n form�lasyon uzmanlar&#305;m&#305;z, Mobilith SHC i�in �zel olarak sentetik esasl&#305; ya&#287; tercihi yapm&#305;&#351;lard&#305;r; ��nk� bunlar y�ksek &#305;s&#305;da oksidasyona kar&#351;&#305; benzersiz diren� potansiyeline sahiptir. Bilim adamlar&#305;m&#305;z en son teknolojiye uygun lityum kompleks kal&#305;nla&#351;t&#305;r&#305;c&#305; teknolojisi geli&#351;tirmi&#351;ler ve Mobil SHC serisi greslerinin performans&#305;n&#305; art&#305;racak �zel kat&#305;klar kullanm&#305;&#351;lard&#305;r. Mobilith SHC a&#351;a&#287;&#305;da verilen �zellik ve faydalar&#305; sa&#287;lamaktad&#305;r:</p><table xmlns="" width="100%" summary="" class="standard" cellspacing="0" border="0"><tr><th scope="col" class="standard">�zellikler</th><th scope="col" class="standard">Avantajlar&#305; ve Sa&#287;layabilece&#287;i Faydalar</th></tr><tr><td class="standard">Benzersiz y�ksek s&#305;cakl&#305;k ve d�&#351;�k s&#305;cakl&#305;k performans&#305;</td><td class="standard">Geni&#351; uygulama s&#305;cakl&#305;&#287;&#305; aral&#305;&#287;&#305; i�inde y�ksek s&#305;cakl&#305;kta m�kemmel koruma, d�&#351;�k s&#305;cakl&#305;kta d�&#351;�k tork ve rahat ilk �al&#305;&#351;ma sa&#287;lar</td></tr><tr><td class="tr_blue">A&#351;&#305;nma, pas ve korozyona kar&#351;&#305; m�kemmel koruma</td><td class="tr_blue">A&#351;&#305;nma pas ve korozyonunu d�&#351;�r�r, duru&#351; ve bak&#305;m maliyetlerini azalt&#305;r</td></tr><tr><td class="standard">M�kemmel &#305;s&#305;l kararl&#305;l&#305;k ve oksidasyon direnci</td><td class="standard">Ya&#287;lama aralar&#305;n&#305; ve servis s�resini uzat&#305;r, yatak �mr�n� artt&#305;r&#305;r</td></tr><tr><td class="tr_blue">D�&#351;�k �ekme katsay&#305;s&#305;</td><td class="tr_blue">Mekanik �mr� iyile&#351;tirme ve daha d�&#351;�k enerji t�ketimi potansiyeli</td></tr><tr><td class="standard">Y�ksek VI' ye sahip y�ksek viskozite s&#305;n&#305;flar&#305;, wax i�ermeyen baz ya&#287;</td><td class="standard">D�&#351;�k devir ve a&#287;&#305;r y�k alt&#305;ndaki yataklarda d�&#351;�k s&#305;cakl&#305;k performans&#305; ve benzersiz koruma</td></tr><tr><td class="tr_blue">Sulu ortamlarda �st�n yap&#305;sal kararl&#305;l&#305;k</td><td class="tr_blue">A&#351;&#305;r&#305; sulu ortamlarda m�kemmel gres performans&#305; sa&#287;lar</td></tr><tr><td class="standard">D�&#351;�k buharla&#351;ma</td><td class="standard">Ya&#287;lama aral&#305;klar&#305; ve yatak �mr�n�n uzat&#305;lmas&#305;n&#305; sa&#287;layacak &#351;ekilde y�ksek s&#305;cakl&#305;kta viskozite art&#305;&#351;&#305;n&#305; engeller</td></tr></table><p xmlns="">&nbsp;</p></div><div style="width:415px; white-space:normal; padding-top:10px;display:none " class="divTabContent" id="Teknik veriler Content"><table xmlns="" width="100%" summary="" class="standard" cellspacing="0" border="0"><tr><th scope="col" class="standard"><b>Mobilith SHC Grease</b></th><th scope="col" class="standard"><p><div align="center"><b>100</b></div></p></th><th scope="col" class="standard"><p><div align="center"><b>220</b></div></p></th><th scope="col" class="standard"><p><div align="center"><b>221</b></div></p></th><th scope="col" class="standard"><p><div align="center"><b>460</b></div></p></th><th scope="col" class="standard"><p><div align="center"><b>1000 Special</b></div></p></th><th scope="col" class="standard"><p><div align="center"><b>1500</b></div></p></th></tr><tr><td class="standard">NLGI S&#305;n&#305;f&#305;</td><td class="standard"><p><div align="center">2</div></p></td><td class="standard"><p><div align="center">2</div></p></td><td class="standard"><p><div align="center">1</div></p></td><td class="standard"><p><div align="center">1.5</div></p></td><td class="standard"><p><div align="center">2</div></p></td><td class="standard"><p><div align="center">1.5</div></p></td></tr><tr><td class="tr_blue">Kal&#305;nla&#351;t&#305;r&#305;c&#305; Sabun Tipi</td><td class="tr_blue">Lityum Kompleks</td><td class="tr_blue">Lityum Kompleks</td><td class="tr_blue">Lityum Kompleks</td><td class="tr_blue">Lityum Kompleks</td><td class="tr_blue">Lityum Kompleks</td><td class="tr_blue">Lityum Kompleks</td></tr><tr><td class="standard">Renk</td><td class="standard"><p><div align="center">K&#305;rm&#305;z&#305;</div></p></td><td class="standard"><p><div align="center">K&#305;rm&#305;z&#305;</div></p></td><td class="standard"><p><div align="center">A�&#305;k Ten</div></p></td><td class="standard"><p><div align="center">K&#305;rm&#305;z&#305;</div></p></td><td class="standard"><p><div align="center">Gri-Siyah</div></p></td><td class="standard"><p><div align="center">K&#305;rm&#305;z&#305;</div></p></td></tr><tr><td class="tr_blue">Damlama Noktas&#305;, �C, ASTM D2265</td><td class="tr_blue"><p><div align="center">265</div></p></td><td class="tr_blue"><p><div align="center">265</div></p></td><td class="tr_blue"><p><div align="center">265</div></p></td><td class="tr_blue"><p><div align="center">265</div></p></td><td class="tr_blue"><p><div align="center">265</div></p></td><td class="tr_blue"><p><div align="center">265</div></p></td></tr><tr><td class="standard">Baz Ya&#287; Viskozitesi, ASTM D445, cSt @ 40 �C</td><td class="standard"><p><div align="center">100</div></p></td><td class="standard"><p><div align="center">220</div></p></td><td class="standard"><p><div align="center">220</div></p></td><td class="standard"><p><div align="center">460</div></p></td><td class="standard"><p><div align="center">1000</div></p></td><td class="standard"><p><div align="center">1500</div></p></td></tr></table><p xmlns="">&nbsp;<br>
*D�&#351;�k s&#305;cakl&#305;k iddialar&#305;, s&#305;ras&#305;yla ilk �al&#305;&#351;t&#305;rmada azami10.000/1.000 gcm ve 1 saat olarak ASTM 1478 sonu�lar&#305;na dayan&#305;r.</p></div><div style="width:415px; white-space:normal; padding-top:10px;display:none " class="divTabContent" id="Kullan&#305;m Yerleri Content"><p xmlns=""><div align="justify">&bull; Mobilith SHC&trade; 100 esas olarak d�&#351;�k s�rt�nme, d�&#351;�k a&#351;&#305;nma ve uzun servis �mr�n�n istendi&#287;i elektrik motoru gibi y�ksek devirli uygulamalar i�in �nerilen a&#351;&#305;nma �nleyici ve a&#351;&#305;r&#305; bas&#305;n� gresidir. Sentetik baz ya&#287;l&#305; NLGI 2 S&#305;n&#305;f&#305; / ISO VG 100 gresidir. Uygulama s&#305;cakl&#305;klar&#305; -40�C* ila 150�C aras&#305;ndad&#305;r.<br>
&bull; Mobilith SHC&trade; 220 �ok ama�l&#305;, a&#287;&#305;r hizmet otomotiv ve end�striyel uygulamalar i�in �nerilen NLGI 2 a&#351;&#305;r&#305; bas&#305;n� gresidir. &#304;�inde ISO VG 220 sentetik esasl&#305; s&#305;v&#305; olan Mobilith SHC 220 i�in �nerilen s&#305;cakl&#305;k aral&#305;klar&#305; -40�C* ila 150�C aras&#305;ndad&#305;r.<br>
&bull; Mobilith SHC&trade; 221 �ok ama�l&#305;, �zellikle merkezi gres sistemlerinin kullan&#305;ld&#305;&#287;&#305; a&#287;&#305;r hizmet otomotiv ve end�striyel uygulamalar i�in �nerilen a&#351;&#305;r&#305; bas&#305;n� gresidir. &#304;�inde ISO VG 220 sentetik bazya&#287; olan Mobilith SHC 221 i�in �nerilen �al&#305;&#351;ma aral&#305;&#287;&#305; -40�C ila 150�C aras&#305;ndad&#305;r.<br>
&bull; Mobilith SHC&trade; 460 NLGI 1.5 S&#305;n&#305;f&#305;nda ISO VG 460 sentetik s&#305;v&#305; esasl&#305; grestir. Zor end�striyel ve denizcilik uygulamalar&#305; i�in tavsiye edilen a&#351;&#305;r&#305; bas&#305;n� (EP) �zelli&#287;ine sahiptir. Su mukavemetinin kritik fakt�r oldu&#287;u uygulamalarda, a&#287;&#305;r y�k ve orta h&#305;zlarda �al&#305;&#351;an yataklarda benzersiz koruyuculuk sa&#287;lar. Mobilith SHC&trade; 460 haddehaneler, ka&#287;&#305;t fabrikalar&#305; ve denizcilik uygulamalar&#305;nda benzersiz bir performans sergiler. �nerilen uygulama s&#305;cakl&#305;k aral&#305;&#287;&#305; -30�C* ile 150�C aras&#305;ndad&#305;r.<br>
&bull; Mobilith SHC&trade; 1000 Special, ISO VG 1000 sentetik bazya&#287;a sahip ve s&#305;n&#305;r ya&#287;lama &#351;artlar&#305;nda �al&#305;&#351;an d�z veya rulmanl&#305; yataklar i�in azami koruma sa&#287;lamak �zere % 11 grafit ve % 1 molibden disulfit i�eren kat&#305; ya&#287;lay&#305;c&#305;larla takviye edilmi&#351; NLGI 2 s&#305;n&#305;f&#305;nda bir gresdir. Bu �r�n y�ksek s&#305;cakl&#305;k, kayma temasl&#305;, ve �ok d�&#351;�k h&#305;z gibi &#351;artlar alt&#305;nda �al&#305;&#351;an yataklar&#305;n �mr�n� uzatmak i�in tasarland&#305;. Mobilith SHC 1000 Special'&#305;n -30�C* ile 150 �C &#305;s&#305;lar aras&#305;nda ve uygun bir yeniden gresleme aral&#305;&#287;&#305;nda �al&#305;&#351;t&#305;r&#305;lmas&#305; tavsiye edilir.<br>
&bull; Mobilith SHC&trade; 1500 sentetik esasl&#305; NLGI 1.5 S&#305;n&#305;f&#305; / ISO VG 1500 gresidir. Esas olarak �ok d�&#351;�k h&#305;zlar, a&#287;&#305;r y�kler ve y�ksek s&#305;cakl&#305;klarda �al&#305;&#351;an kaymal&#305; ve bilyeli yataklar i�in �nerilir. Mobilith SHC 1500 i�in �nerilen s&#305;cakl&#305;k aral&#305;&#287;&#305; uygun ya&#287;lama aral&#305;klar&#305; dikkate al&#305;narak -30�C* ile 150�C aras&#305;ndad&#305;r. Mobilith SHC 1500 ile s�rekli ya&#287;lama, a&#287;&#305;r hadde y�kleri uygulamalar&#305;ndaki yatak �mr�n�n uzat&#305;lmas&#305;nda �ok etkili olmu&#351;tur. Mobilith SHC 1500 ayn&#305; zamanda d�ner f&#305;r&#305;n rulmanlar&#305; ve c�ruf transfer arabalar&#305; tekerlek rulmanlar&#305;nda m�kemmel performans sergiler.<br>
&bull; Mobilith SHC&trade; 007 sentetik esasl&#305; NLGI 00 S&#305;n&#305;f&#305; / ISO VG 460 gresidir. �nerilen s&#305;cakl&#305;k aral&#305;&#287;&#305; uygun ya&#287;lama s&#305;kl&#305;&#287;&#305; dikkate al&#305;nd&#305;rarak -50�C ile 150�C aras&#305;ndad&#305;r. --Birincil kullan&#305;m yerleri, konvansiyonel yar&#305; s&#305;v&#305; gres ya&#287;lar&#305;n&#305;n ya&#287;lama �mr�n�n k&#305;sal&#305;&#287;&#305; nedeniyle kabul edilemeyece&#287;i gresle ya&#287;lanan y�ksek s&#305;cakl&#305;klara maruz di&#351;li kutular&#305; ve de a&#287;&#305;r vas&#305;ta kamyon treyler tekerlek poryalar&#305;d&#305;r.</div></p></div></td>
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
