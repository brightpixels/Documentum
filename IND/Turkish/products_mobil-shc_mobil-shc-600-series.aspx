
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
				<html xmlns="http://www.w3.org/1999/xhtml" xmlns:xalan-nodeset="org.apache.xalan.xslt.extensions.Nodeset" xmlns:java="http://xml.apache.org/xslt/java" xmlns:fo="http://www.w3.org/1999/XSL/Format" xml:lang="tr" lang="tr"><head><title>Sirk�lasyon ve Di&#351;li Ya&#287;lar&#305; - Mobil SHC 600 Serisi | Mobil&trade; Markal&#305; End�striyel Ya&#287;lar</title><meta http-equiv="X-UA-Compatible" content="IE=edge"/><meta name="keywords" content="Mobil SHC 600 serisi, Mobil SHC 600, SHC 600, sentetik ya&#287;lar, Mobil sentetik ya&#287;lar&#305;, SHC di&#351;li ya&#287;&#305;, di&#351;li ya&#287;&#305;, Mobil di&#351;li ya&#287;&#305;"/><meta name="description" content="Geli&#351;mi&#351; teknolojili Mobil SHC&trade; 600 Serisi sentetik ya&#287;lar&#305; makinalar&#305;n&#305;z&#305;n taleplerini kar&#351;&#305;lamak �zere zorlu ko&#351;ullar alt&#305;nda en �st performans&#305; sa&#287;lar."/><meta name="date" content="10/2013"/><meta name="language" content="tr"/><meta http-equiv="Content-Language" content="tr"/><link type="text/css" rel="stylesheet" media="all" href="/Imports/mobil_ind.css"/><link type="text/css" rel="stylesheet" media="print" href="/Imports/xom_print.css"/><link type="text/css" title="medium" rel="stylesheet" href="/Imports/xom_web_medium.css"/><link type="text/css" title="large" rel="alternate stylesheet" href="/Imports/xom_web_large.css"/><link type="text/css" title="small" rel="alternate stylesheet" href="/Imports/xom_web_small.css"/>	
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
				<!-- Set 'expires' in http header, start --><% string cacheExpireDateStr="5/24/2016 8:59:14 AM";
        DateTime cacheExpireDate = Convert.ToDateTime(cacheExpireDateStr); 
        Response.AddHeader("Expires",cacheExpireDate.ToUniversalTime().ToString("ddd, dd MMM yyyy HH:mm:ss 'GMT'")); %><!-- end --></head><body class="article"><a href="#mainContent" class="skip">Skip to Main Content</a><div id="container"><!--#include virtual="Navigation/Header.aspx"--><div id="mainPanel" class="clrfix"><!--#include virtual="Navigation/products_left_navigation.aspx"--><div id="toolbar"><!--#include virtual="Services/Toolbox.aspx"--><div class="related"><div class="relatedimg150X68"><a href="products_mobil-shc.aspx"><img xmlns="" title="Mobil SHC" src="Images/150x68_sidecallouts_mobilshc.jpg" longdesc="" border="0" alt="Mobil SHC"><p xmlns=""><a title="" target="" href="products_mobil-shc.aspx" class=""></a> Mobil SHC&trade; 600<br><a title="This link will open a new window." target="_new" href="http://www.mobil.com/Turkey-Turkish/Lubes/PDS/GLXXTRINDMOMobil_SHC_600_Series.aspx">�r�n veri sayfas&#305; (PDS)</a><br><a title="This link will open a new window." target="_new" href="http://www.msds.exxonmobil.com/psims/psims.aspx">Malzeme g�venlik veri sayfas&#305; (MSDS)</a></p></a></div></div><div class="related"><div class="relatedimg150X68"><a href="distributorlocator.aspx"><img xmlns="" title="Nereden sat&#305;n al&#305;nabilir" src="Images/150x68_sidecallouts_where_to_buy.jpg" longdesc="" border="0" alt="Nereden sat&#305;n al&#305;nabilir"><p xmlns=""><a title="" target="" href="distributorlocator.aspx" class=""></a>Nereden sat&#305;n al&#305;nabilir<br><a title="" target="" href="distributorlocator.aspx" class="">Size yak&#305;n bir distrib�t�r bulun</a></p></a></div></div><div class="related"><div class="relatedimg150X68"><a href="https://www.mobil.com/en/industrial/lubricants/search"><img xmlns="" title="Looble" src="Images/150x68_sidecallouts_looble1.jpg" longdesc="" border="0" alt="Looble"><p xmlns=""><a title="This link will open a new window." target="_new" href="https://www.mobil.com/en/industrial/lubricants/search"></a>Looble<sup>SM</sup> �r�n se�ici (EN)<br><a title="This link will open a new window." target="_new" href="https://www.mobil.com/en/industrial/lubricants/search">Uygulaman&#305;z i�in do&#287;ru ya&#287;&#305; bulun</a></p></a></div></div></div><div id="mainContent"><br/><div class="img150 left"><img xmlns="" title="SHC 600 ya&#287; kaplama di&#351;lileri" src="Images/article_150x150_gears.jpg" longdesc="" border="0" alt="SHC 600 ya&#287; kaplama di&#351;lileri"></div><p xmlns=""><span style=" font-size: x-large;"><b>Mobil SHC&trade; 600</b></span></p><p xmlns=""><b>Yeni jenerasyon sirk�lasyon ve di&#351;li ya&#287;lar&#305;</b><br>
A&#287;&#305;r y�klerden a&#351;&#305;r&#305; s&#305;cakl&#305;k de&#287;i&#351;ikliklerine kadar end�striyel di&#351;li kutular&#305; �ok zorlu ko&#351;ullarda �al&#305;&#351;&#305;r. Geli&#351;mi&#351; teknolojili Mobil SHC 600 Serisi sentetik ya&#287;lar&#305; bu ko&#351;ullar alt&#305;nda bile makinalar&#305;n&#305;z&#305;n taleplerini kar&#351;&#305;lamak �zere en �st performans&#305; sa&#287;lar.</p><p xmlns=""><b>%3,6'ya kadar azalm&#305;&#351; enerji t�ketimi*</b><br>
Bir di&#351;li kutusu ve sirk�lasyon ya&#287; sisteminde Mobil SHC 600 Serisi ya&#287;lar&#305;n d�&#351;�k s�r�kleme ve y�ksek viskozite indeksi birle&#351;ip mineral ya&#287;lara g�re g�� t�ketimini ve enerji maliyetini �nemli �l��de azalt&#305;r. Bu azalm&#305;&#351; t�ketim emisyon d�zenlemelerini kar&#351;&#305;laman&#305;za yard&#305;mc&#305; olacak &#351;ekilde CO2 azalmas&#305; anlam&#305;na gelebilir.</p><p xmlns="">500'den fazla b�y�k ekipman �reticisi taraf&#305;ndan 1800 uygulamada kullan&#305;lmas&#305; �nerilen Mobil SHC 600 Serisi ya&#287;lar&#305; OEM'ler taraf&#305;ndan m�kemmel performans&#305; devam ettirirken temel alanlarda geli&#351;meler sa&#287;lad&#305;&#287;&#305; &#351;imdiden anla&#351;&#305;lm&#305;&#351;t&#305;r.</p><p xmlns=""><a title="This link will open a new window." target="_new" href="http://www.youtube.com/watch?v=Wx1pHkpkf0A">Mobil End�striyel Ya&#287;lar Enerji Tasarruf �r�nleri: Mobil SHC 600 Serisi ve Mobil SHC Gear</a> (EN)</p><p xmlns=""><a title="This link will open a new window." target="_new" href="/IND/English/files/SHC_600.pdf">Mobil SHC&trade; 600 Di&#351;li veri sayfas&#305;<img src="/Images/Icons/icon_pdf_whitespace.jpg" border="0" alt=""></a>&nbsp;(EN)&nbsp;<br>
&nbsp;</p><p xmlns="">&nbsp;</p><p xmlns="">&nbsp;</p><div id="tabbed_table"><table style="width: 454px   " id="tblTabs" cellspacing="0px" cellpadding="0" border="0"><tr id="tabNav"><td style="height:1px; padding-bottom:-10px; " colspan="5"><div style="z-index:100; " id="divTabs"><ul><li onmouseover="if(this.className!='current')this.className='highlight';" onmouseout="if(this.className!='current')this.className=''" class="current" id="�zellikleri ve Faydalar&#305;"><a href="#" onclick="javascript:showTab('�zellikleri ve Faydalar&#305;');">�zellikleri ve Faydalar&#305;</a></li><li onmouseover="if(this.className!='current')this.className='highlight'" onmouseout="if(this.className!='current')this.className=''" id="Tipik �zellikler"><a href="#" onclick="javascript:showTab('Tipik �zellikler');">Tipik �zellikler</a></li><li onmouseover="if(this.className!='current')this.className='highlight'" onmouseout="if(this.className!='current')this.className=''" id="Kullan&#305;m Yerleri"><a href="#" onclick="javascript:showTab('Kullan&#305;m Yerleri');">Kullan&#305;m Yerleri</a></li></ul></div></td></tr><tr id="trTabContent">
											<td valign="top" style="width: 10px; background-image:url('<%=GetDomain()%>/Images/Tabs/box_Left.png'); background-repeat: repeat-y; background-color: #ffffff;">
												<img class="leftUpperImg" src="<%=GetDomain()%>/Images/Tabs/box_LeftUpper.png" alt=""/>
											</td>									
										<td valign="top" class="midBorder" style="width: 435px; background-image:url('<%=GetDomain()%>/Images/Tabs/boxNoFade_Upper.png'); background-repeat: repeat-x; background-color: #ffffff;">
										<div style="width:434px; white-space:normal; padding-top:10px;display:block " class="divTabContent" id="�zellikleri ve Faydalar&#305; Content"><p xmlns="">Mobil SHC marka ya&#287;lar, ilerici ve �st�n performanslar&#305; sayesinde d�nya �ap&#305;nda tan&#305;nan ve be&#287;enilen �r�nlerdir. &#304;lk kez ara&#351;t&#305;rma g�revlilerimiz taraf&#305;ndan molek�ler olarak tasarlanan ve geli&#351;tirilen bu sentetik �r�nler, m�kemmel �r�nler sunmak amac&#305;yla ileri teknolojinin kullan&#305;lmas&#305; konusundaki kararl&#305;l&#305;&#287;&#305; temsil etmektedir. Yenilenen Mobil SHC 600 Serisi ya&#287;lar&#305;n geli&#351;tirilmesinde rol oynayan temel fakt�rlerin ba&#351;&#305;nda, s�rekli geli&#351;mekte olan end�striyel ekipman tasar&#305;mlar&#305; i�in �st�n performans sa&#287;lamak amac&#305;yla bilim adamlar&#305;m&#305;z ve uygulama uzmanlar&#305;m&#305;z ile �nde gelen ekipman �reticileri aras&#305;nda ger�ekle&#351;tirilen yak&#305;n �al&#305;&#351;ma gelmektedir.</p><p xmlns="">Kilit ekipman �reticileri ile yap&#305;lan �al&#305;&#351;malar, Mobil SHC 600 Serisi ya&#287;lar&#305;n benzersiz performansa sahip oldu&#287;unu g�steren laboratuar ve ekipman testleri ile elde edilen sonu�lar&#305; teyit etmektedir. Ekipman �reticileri ile yap&#305;lan ortak �al&#305;&#351;malarda elde edilen bir ba&#351;ka bulgu da, mineral ya&#287;lara g�re enerji verimlili&#287;inde %3,6'ya varan iyile&#351;tirme sa&#287;lanabildi&#287;idir.(*) Bu faydalar, y�ksek devirli sonsuz vida di&#351;lilerde oldu&#287;u gibi, y�ksek seviyede mekanik kay&#305;p ya&#351;ayan ekipmanlarda �zellikle belirgin olarak ortaya �&#305;kar.</p><p xmlns="">�r�n form�lasyonundan sorumlu bilim adamlar&#305;m&#305;z, geli&#351;tirilen Mobil SHC 600 Serisi ya&#287;lar i�in en son Mobil SHC teknolojisini geli&#351;tirmek amac&#305;yla benzersiz &#305;s&#305;l/oksidasyon dayan&#305;kl&#305;l&#305;&#287;&#305; potansiyeli sa&#287;layacak olan �zel baz ya&#287;lar se�mi&#351;lerdir. Form�lasyon sorumlular&#305;m&#305;z ayr&#305;ca baz ya&#287;lar&#305;n&#305;n sahip oldu&#287;u m�kemmel ya&#287; �mr� ve tortu kontrol� ile, &#305;s&#305;l/oksidasyon ve kimyasal bozunmaya dayan&#305;kl&#305;l&#305;&#287;a en �st d�zeyde yarar sa&#287;layacak �zel kat&#305;klar kullanm&#305;&#351;lard&#305;r. Bu form�l yakla&#351;&#305;m&#305; sayesinde pek �ok mineral bazl&#305; �r�nden daha iyi d�&#351;�k s&#305;cakl&#305;kta ak&#305;&#351;kanl&#305;k �zelli&#287;i elde edilmekte ve uzak noktalardaki d�&#351;�k ortam s&#305;cakl&#305;&#287;&#305;na sahip uygulamalar i�in kilit faydalar sa&#287;lanmaktad&#305;r. Geli&#351;tirilen Mobil SHC 600 Serisi ya&#287;lar a&#351;a&#287;&#305;da verilen potansiyel faydalar&#305; sa&#287;lamaktad&#305;r:</p><table xmlns="" width="100%" summary="" class="standard" cellspacing="0" border="0"><tr><th scope="col" class="standard">�zellikleri</th><th scope="col" class="standard">Avantajlar&#305; ve Sa&#287;layabilece&#287;i Faydalar</th></tr><tr><td class="standard">Y�ksek s&#305;cakl&#305;kta �st�n termal/oksidasyon dayan&#305;kl&#305;l&#305;&#287;&#305;</td><td class="standard">Ekipman&#305;n y�ksek s&#305;cakl&#305;klardaki �al&#305;&#351;ma kapasitesini artt&#305;r&#305;r<br>
Ya&#287; �mr�n� uzat&#305;r, ya&#287; de&#287;i&#351;im ihtiya�lar&#305;n&#305; ve maliyetlerini azalt&#305;r<br>
Ar&#305;zas&#305;z �al&#305;&#351;ma ve daha uzun filtre �mr� i�in �amur ve tortu olu&#351;umunu azalt&#305;r</td></tr><tr><td class="tr_blue">Y�ksek Viskozite &#304;ndeksi</td><td class="tr_blue">Viskozite ve ya&#287; film kal&#305;nl&#305;&#287;&#305;n&#305; y�ksek &#305;s&#305;larda ayn&#305; seviyede tutar<br>
Benzersiz d�&#351;�k s&#305;cakl&#305;k ve ilk �al&#305;&#351;t&#305;rma performans&#305; sa&#287;lar</td></tr><tr><td class="standard">D�&#351;�k s�r�kleme katsay&#305;s&#305;</td><td class="standard">Di&#351;li tak&#305;mlar&#305; gibi kayan mekanizmalarda s�rt�nmeyi azalt&#305;r ve verimlili&#287;i art&#305;rarak, daha d�&#351;�k enerji t�ketimi potansiyeli ve daha d�&#351;�k �al&#305;&#351;ma s&#305;cakl&#305;klar&#305; sa&#287;lar.<br>
Rulmanl&#305; yataklarda mikro-kayma etkisini �nlemeye yard&#305;mc&#305; olur ve rulman �mr�n� uzat&#305;r</td></tr><tr><td class="tr_blue">Y�ksek y�k ta&#351;&#305;ma kapasitesi</td><td class="tr_blue">Ekipman&#305;n korunmas&#305;na ve �mr�n�n uzat&#305;lmas&#305;na yard&#305;mc&#305; olur; beklenmedik duru&#351;lar&#305; azalt&#305;r ve servis �mr�n� uzat&#305;r</td></tr><tr><td class="standard">Dengeli kat&#305;k bile&#351;imi</td><td class="standard">Pas ve korozyona kar&#351;&#305; koruma, su ay&#305;rma, k�p�k olu&#351;umu kontrol� ve havay&#305; b&#305;rakma performanslar&#305; ile, geni&#351; bir yelpazede end�striyel uygulamalar i�in ar&#305;zas&#305;z �al&#305;&#351;ma sa&#287;lar ve i&#351;letme maliyetlerini d�&#351;�r�r</td></tr></table><p xmlns="">(*) Enerji verimlili&#287;i sadece Mobil SHC 600' �n performans&#305;n&#305;n sirk�lasyon ve di&#351;li uygulamalar&#305;nda ayn&#305; viskozite s&#305;n&#305;f&#305;na sahip geleneksel (mineral) ya&#287;larla kar&#351;&#305;la&#351;t&#305;r&#305;ld&#305;&#287;&#305;ndaki performans&#305;yla ilgilidir. Kullan&#305;lan teknoloji sayesinde, kontroll� ko&#351;ullar alt&#305;nda sonsuz vida di&#351;li kutusunda yap&#305;lan testlerde referansa g�re %3,6'ya varan verimlilik art&#305;&#351;&#305; sa&#287;lanm&#305;&#351;t&#305;r. Verimlilikteki iyile&#351;meler, �al&#305;&#351;ma ko&#351;ullar&#305;na ve uygulamaya ba&#287;l&#305; olarak farkl&#305;l&#305;k g�sterir.</p></div><div style="width:415px; white-space:normal; padding-top:10px;display:none " class="divTabContent" id="Tipik �zellikler Content"><table xmlns="" width="100%" summary="" class="standard" cellspacing="0" border="0"><tr><th scope="col" class="standard"><p><b>Mobil SHC 600</b></p></th><th scope="col" class="standard"><p><b>624</b></p></th><th scope="col" class="standard"><p><b>625</b></p></th><th scope="col" class="standard"><p><b>626</b></p></th><th scope="col" class="standard"><p><b>627</b></p></th><th scope="col" class="standard"><p><b>629</b></p></th><th scope="col" class="standard"><p><b>630</b></p></th><th scope="col" class="standard"><p><b>632</b></p></th><th scope="col" class="standard"><p><b>634</b></p></th><th scope="col" class="standard"><p><b>636</b></p></th><th scope="col" class="standard"><p><b>639</b></p></th></tr><tr><td class="standard"><p>Viskozite, ASTM D 445</p></td><td class="standard"><p>&nbsp;</p></td><td class="standard"><p>&nbsp;</p></td><td class="standard"><p>&nbsp;</p></td><td class="standard"><p>&nbsp;</p></td><td class="standard"><p>&nbsp;</p></td><td class="standard"><p>&nbsp;</p></td><td class="standard"><p>&nbsp;</p></td><td class="standard"><p>&nbsp;</p></td><td class="standard"><p>&nbsp;</p></td><td class="standard"><p>&nbsp;</p></td></tr><tr><td class="tr_blue"><p>cSt @ 40�C</p></td><td class="tr_blue"><p>32</p></td><td class="tr_blue"><p>46</p></td><td class="tr_blue"><p>68</p></td><td class="tr_blue"><p>100</p></td><td class="tr_blue"><p>150</p></td><td class="tr_blue"><p>220</p></td><td class="tr_blue"><p>320</p></td><td class="tr_blue"><p>460</p></td><td class="tr_blue"><p>680</p></td><td class="tr_blue"><p>1000</p></td></tr><tr><td class="standard"><p>cSt @ 100�C</p></td><td class="standard"><p>6.3</p></td><td class="standard"><p>8.5</p></td><td class="standard"><p>11.6</p></td><td class="standard"><p>15.3</p></td><td class="standard"><p>21.1</p></td><td class="standard"><p>28.5</p></td><td class="standard"><p>38.5</p></td><td class="standard"><p>50.7</p></td><td class="standard"><p>69.0</p></td><td class="standard"><p>98.8</p></td></tr><tr><td class="tr_blue"><p>Viskozite &#304;ndeksi, ASTM D 2270</p></td><td class="tr_blue"><p>148</p></td><td class="tr_blue"><p>161</p></td><td class="tr_blue"><p>165</p></td><td class="tr_blue"><p>162</p></td><td class="tr_blue"><p>166</p></td><td class="tr_blue"><p>169</p></td><td class="tr_blue"><p>172</p></td><td class="tr_blue"><p>174</p></td><td class="tr_blue"><p>181</p></td><td class="tr_blue"><p>184</p></td></tr><tr><td class="standard"><p>Akma Noktas&#305;, �C, ASTM D 97</p></td><td class="standard"><p>-57</p></td><td class="standard"><p>-54</p></td><td class="standard"><p>-51</p></td><td class="standard"><p>-45</p></td><td class="standard"><p>-42</p></td><td class="standard"><p>-42</p></td><td class="standard"><p>-42</p></td><td class="standard"><p>-39</p></td><td class="standard"><p>-39</p></td><td class="standard"><p>-33</p></td></tr><tr><td class="tr_blue"><p>Parlama Noktas&#305;, �C, ASTM D 92</p></td><td class="tr_blue"><p>236</p></td><td class="tr_blue"><p>225</p></td><td class="tr_blue"><p>225</p></td><td class="tr_blue"><p>235</p></td><td class="tr_blue"><p>220</p></td><td class="tr_blue"><p>220</p></td><td class="tr_blue"><p>225</p></td><td class="tr_blue"><p>228</p></td><td class="tr_blue"><p>225</p></td><td class="tr_blue"><p>222</p></td></tr></table><p xmlns="">&nbsp;</p></div><div style="width:415px; white-space:normal; padding-top:10px;display:none " class="divTabContent" id="Kullan&#305;m Yerleri Content"><p xmlns="">Mobil SHC 600 Serisi, mineral baz ya&#287;l&#305; �r�nlerle uyumludur, ancak yap&#305;lacak kar&#305;&#351;&#305;mlar performans&#305;n&#305; d�&#351;�rebilir. Bu nedenle, Mobil SHC 600 Serisi ile de&#287;i&#351;tirilmesinden �nce, sistemin t�m�yle temizlenmesi ve ar&#305;nd&#305;r&#305;lmas&#305;, en �st d�zeyde performans sa&#287;lamas&#305; a�&#305;s&#305;ndan zorunludur. Mobil SHC 600 Serisi ya&#287;lar&#305;, pek �ok NBR, FKM ve mineral ya&#287;larla kullan&#305;lan di&#287;er elastomer esasl&#305; ke�e materyallerinin �o&#287;uyla uyumludur. Elastomerlerde geni&#351; varyasyon potansiyeli vard&#305;r. En iyi sonu�lar&#305; elde etmek i�in uyumlulu&#287;u do&#287;rulamak amac&#305;yla ekipman sa&#287;lay&#305;c&#305;n&#305;za, ke�e �reticinize veya yerel &#351;irket temsilcinize dan&#305;&#351;&#305;n&#305;z.</p><p xmlns="">Mobil SHC 600 Serisi ya&#287;lar&#305;n&#305;n y�ksek ve d�&#351;�k s&#305;cakl&#305;klar&#305;n s�z konusu oldu&#287;u, �al&#305;&#351;ma s&#305;cakl&#305;klar&#305;n&#305;n veya ya&#287; tank s&#305;cakl&#305;klar&#305;n&#305;n geleneksel ya&#287;lay&#305;c&#305;lar a�&#305;s&#305;ndan uygun olmad&#305;&#287;&#305; veya verimlilik art&#305;&#351;&#305;n&#305;n gerekli oldu&#287;u durumlarda geni&#351; bir yelpazede yer alan di&#351;li ve yatak uygulamalar&#305;nda kullan&#305;lmas&#305; �nerilmektedir. �zellikle par�a de&#287;i&#351;tirme, sistem temizli&#287;i ve ya&#287; de&#287;i&#351;tirme maliyetlerinin y�ksek oldu&#287;u uygulamalarda verimlilik art&#305;&#351;&#305; sa&#287;lamaktad&#305;rlar. �zel uygulamalarda uygun viskozite s&#305;n&#305;f&#305;n&#305;n se�ilmesi gerekmektedir ve bunlar &#351;unlard&#305;r:</p><p xmlns="">&bull; "Filled -for-life" di&#351;li kutular&#305;, y�ksek devirli/d�&#351;�k verimlikli sonsuz di&#351;liler<br>
&bull; Ya&#287; de&#287;i&#351;iminin zor yap&#305;ld&#305;&#287;&#305; zor ula&#351;&#305;lan yerlerde bulunan di&#351;li kutular&#305;<br>
&bull; D�nemsel ya&#287; de&#287;i&#351;imlerinden ka�&#305;n&#305;labilen kayak pisti telesiyeji gibi d�&#351;�k &#305;s&#305;l&#305; uygulamalar<br>
&bull; Y�ksek &#305;s&#305;larla kar&#351;&#305;la&#351;&#305;lan kar&#305;&#351;t&#305;r&#305;c&#305; rulmanl&#305; yataklar&#305; ve silindir boyun yataklar&#305;<br>
&bull; Plastik Kalenderleri<br>
&bull; Denizcilik alan&#305; santrif�jleri dahil olmak �zere a&#287;&#305;r santrif�j uygulamalar&#305;<br>
&bull; Demiryolu A/C �ekme Tahrikleri<br>
&bull; Mobil SHC&trade; 626, 627, 629 ve 630 do&#287;al gaz, saha gazlar&#305; toplama, CO2 ve do&#287;al gaz end�strisinde kullan&#305;lan di&#287;er i&#351;lem gazlar&#305; basan Ya&#287; Banyolu Vidal&#305; Rotari Kompres�rler i�in uygundur.<br>
&bull; Mobil SHC&trade; 629, 630, 632, 634, 636 ve 639, Siemens AG taraf&#305;ndan Flender di&#351;li kutular&#305;nda kullan&#305;lmak �zere onaylanm&#305;&#351;t&#305;r.</p><p xmlns="">Mobil SHC 600 Serisi �r�nleri Havac&#305;l&#305;k i�in Uygun De&#287;ildir, di&#287;er bir deyi&#351;le u�ak bile&#351;enlerinin ya&#287;lanmas&#305; i�in tasarlanmam&#305;&#351; olup, bu ama�la �nerilmemektedir.</p></div></td>
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
										</tr></table></div><div class="imgns left"><img xmlns="" title="energy efficiency" src="Images/95x93_energy_efficiency.jpg" longdesc="" border="0" alt="energy efficiency"></div><p xmlns="">&nbsp;&nbsp;<span style=" font-size: 8px;">*Enerji verimlili&#287;i tasar&#305;m Exxon Mobil Corporation'&#305;n ticari bir markas&#305;d&#305;r. Enerji verimlili&#287;i sadece sirk�lasyon ve di&#351;li uygulamalar&#305;nda ayn&#305; viskozite derecesine sahip konvansiyonel mineral referans ya&#287;lar&#305;yla kar&#351;&#305;la&#351;t&#305;r&#305;ld&#305;&#287;&#305;nda s&#305;v&#305; performans&#305;yla ili&#351;kilidir. Kullan&#305;lan teknoloji bir sonsuz di&#351;li kutusu i�inde kontroll� ko&#351;ullar alt&#305;nda test edildi&#287;inde referansa g�re %3,6'ya kadar verimlili&#287;i m�mk�n k&#305;lar. Verimlilik art&#305;&#351;lar&#305; �al&#305;&#351;ma ko&#351;ullar&#305; ve uygulamalara g�re de&#287;i&#351;ecektir.</span></p></div></div><!--#include virtual="Navigation/Footer.aspx"--></div><script type="text/javascript">	
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
