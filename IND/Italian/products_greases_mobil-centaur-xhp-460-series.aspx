
			
			<%@ Page Language="C#" AutoEventWireup="false" Inherits="XOM.Common.Web.XOMPage" %>
			<%@ Register TagPrefix="XOM" Namespace="XOM.Common.Web" Assembly="XOMCommon" %>
			<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml" xmlns:xalan-nodeset="org.apache.xalan.xslt.extensions.Nodeset" xmlns:java="http://xml.apache.org/xslt/java" xmlns:fo="http://www.w3.org/1999/XSL/Format" xml:lang="it" lang="it"><head><meta http-equiv="X-UA-Compatible" content="IE=8"><title>Grassi Industriali - Mobil Centaur&trade; XHP serie 460 |  Mobil&trade; Industrial Lubricants</title><meta name="keywords" content="Mobil Centaur XHP serie 460, Mobil Centaur, Centaur XHP, grasso multiuso, protezione dalla corrosione,  lubrificante ad alte temperature, grasso al solfonato di calcio"/><meta name="description" content="La gamma Mobil Centaur&trade; XHP serie 460 � formulata con una tecnologia avanzata al solfonato di calcio."/><meta name="date" content="09/2014"/><meta name="language" content="it"/><meta http-equiv="Content-Language" content="it"/><link type="text/css" rel="stylesheet" media="all" href="/Imports/mobil_ind.css"/><link type="text/css" rel="stylesheet" media="print" href="/Imports/xom_print.css"/><link type="text/css" title="medium" rel="stylesheet" href="/Imports/xom_web_medium.css"/><link type="text/css" title="large" rel="alternate stylesheet" href="/Imports/xom_web_large.css"/><link type="text/css" title="small" rel="alternate stylesheet" href="/Imports/xom_web_small.css"/><link type="text/css" rel="stylesheet" media="all" href="/Imports/xom_lightview.css"/>
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
				<!-- Set 'expires' in http header, start --><% string cacheExpireDateStr="3/22/2015 10:51:08 AM";
        DateTime cacheExpireDate = Convert.ToDateTime(cacheExpireDateStr); 
        Response.AddHeader("Expires",cacheExpireDate.ToUniversalTime().ToString("ddd, dd MMM yyyy HH:mm:ss 'GMT'")); %><!-- end --></head><body class="article"><a href="#mainContent" class="skip">Skip to Main Content</a><div id="container"><!--#include virtual="Navigation/Header.aspx"--><div id="mainPanel" class="clrfix"><!--#include virtual="Navigation/products_left_navigation.aspx"--><div id="toolbar"><!--#include virtual="Services/Toolbox.aspx"--><div class="related"><div class="relatedimg150X68"><a href="products_mobil-shc.aspx"><img xmlns="" title="Mobil SHC" src="/IND/English/Images/150x68_sidecallouts_mobilSHC.jpg" longdesc="" border="0" alt="Mobil SHC"><p xmlns=""><a title="" target="" href="products_mobil-shc.aspx" class=""></a><br>
Mobil Centaur&trade; XHP serie 460<br><a title="This link will open a new window." target="_new" href="http://www.mobil.com/Italy-Italian/Lubes/PDS/GLXXITGRSMOMobil_Centaur_XHP_460.aspx">Schede tecniche dei prodotti (PDS)</a><br><a title="This link will open a new window." target="_new" href="http://www.msds.exxonmobil.com/psims/psims.aspx">Schede &nbsp;di igiene e sicurezza dei prodotti (MSDS)</a></p></a></div></div><div class="related"><div class="relatedimg150X68"><a href="distributorlocator.aspx"><img xmlns="" title="Dove acquistare" src="/IND/English/Images/150x68_sidecallouts_where_to_buy.jpg" longdesc="" border="0" alt="Dove acquistare"><p xmlns=""><a title="" target="" href="distributorlocator.aspx" class=""></a><br>
Dove acquistare<br><a title="" target="" href="distributorlocator.aspx" class="">Trovate l&rsquo;Authorized Distributor della ExxonMobil pi� vicino a voi</a></p></a></div></div><div class="related"><div class="relatedimg150X68"><a href="/Apps/ILS/default_EN.aspx"><img xmlns="" title="Looble" src="/IND/English/Images/150x68_sidecallouts_looble1.jpg" longdesc="" border="0" alt="Looble"><p xmlns=""><a title="This link will open a new window." target="_new" href="/Apps/ILS/default_EN.aspx"></a><br>
Selettore prodotti Looble<sup>SM</sup> (EN)<br><a title="This link will open a new window." target="_new" href="/Apps/ILS/default_EN.aspx">Trovate il lubrificante giusto per le vostre esigenze</a></p></a></div></div></div><div id="mainContent"><div class="img150 left"><img xmlns="" title=" Mobil Centaur XHP serie 460, grasso di qualit� al solfonato di calcio &nbsp;" src="/IND/English/Images/article_150x150_mobil-centaur-xhp-460.jpg" longdesc="" border="0" alt=" Mobil Centaur XHP serie 460, grasso di qualit� al solfonato di calcio &nbsp;"></div><p xmlns=""><span style=" font-size: x-large;"><b>Mobil Centaur&trade; XHP</b></span></p><p xmlns=""><span style=" font-size: x-large;"><b>serie 460</b></span></p><p xmlns=""><span style=" font-size: large;"><b>Grasso premium multiuso</b></span><br><br>
La formula dei grassi industriali Mobil Centaur XHP serie 460 comprende una tecnologia &nbsp;avanzata al solfonato di calcio. Combinando la resistenza al lavaggio, alla spruzzatura con acqua e l&rsquo;eccellente protezione dalla corrosione, i grassi Mobil Centaur XHP serie 460 sono formulati per rispondere alle esigenze dei requisiti di lubrificazione dei macchinari di acciaierie e dell&rsquo;industria della carta.</p><p xmlns=""><b><span style=" font-size: medium;">Per applicazioni impegnative</span></b><br>
Questa gamma di prodotti � formulata secondo le pi� rigide norme sulla qualit�. I grassi Mobil Centaur XHP serie 460 si sono conquistati un&rsquo;eccezionale reputazione per affidabilit� oltre che per la loro capacit� di gestire applicazioni impegnative.</p><p xmlns=""></p><div id="tabbed_table"><table style="width: 454px   " id="tblTabs" cellspacing="0px" cellpadding="0" border="0"><tr id="tabNav"><td style="height:1px; padding-bottom:-10px; " colspan="5"><div style="z-index:100; " id="divTabs"><ul><li onmouseover="if(this.className!='current')this.className='highlight';" onmouseout="if(this.className!='current')this.className=''" class="current" id="Prerogative e benefici"><a href="#" onclick="javascript:showTab('Prerogative e benefici');">Prerogative e benefici</a></li><li onmouseover="if(this.className!='current')this.className='highlight'" onmouseout="if(this.className!='current')this.className=''" id="Caratteristiche tipiche"><a href="#" onclick="javascript:showTab('Caratteristiche tipiche');">Caratteristiche tipiche</a></li><li onmouseover="if(this.className!='current')this.className='highlight'" onmouseout="if(this.className!='current')this.className=''" id="Applicazioni"><a href="#" onclick="javascript:showTab('Applicazioni');">Applicazioni</a></li></ul></div></td></tr><tr id="trTabContent"><td valign="top" style="width: 10px; background-image:url('/Images/Tabs/box_Left.png'); background-repeat: repeat-y; background-color: #ffffff;"><img src="/Images/Tabs/box_LeftUpper.png" class="leftUpperImg" alt=""/></td><td valign="top" style="width: 435px; background-image:url('/Images/Tabs/boxNoFade_Upper.png'); background-repeat: repeat-x; background-color: #ffffff;" class="midBorder"><div style="width:434px; white-space:normal; padding-top:10px;display:block " class="divTabContent" id="Prerogative e benefici Content"><p xmlns="">I grassi Mobil Centaur XHP Serie 460 fanno parte del marchio Mobil&trade; di prodotti lubrificanti riconosciuti per l&rsquo;elevata qualit� e affidabilit�, e in grado di fornire elevate prestazioni. Questa famiglia di prodotti � realizzata secondo i pi� severi standard qualitativi. Una caratteristica fondamentale di questa famiglia di prodotti � la sua reputazione di affidabilit�, cos� come la sua capacit� di gestire applicazioni impegnative. I Mobil Centaur XHP 460 sono formulati con un&rsquo;addensante al solfonato di calcio ad alte prestazioni e sono specificamente studiati per applicazioni in acciaierie e cartiere. I Mobil Centaur XHP 460 offrono i seguenti benefici:</p><ul xmlns=""><li>Eccellente protezione dalle estreme pressioni (EP) e capacit� di resistenza ai carichi per la protezione dei macchinari in presenza di carichi gravosi e d&rsquo;urto</li><li>Eccellente controllo del rilascio di olio ad alte temperature</li><li>Innovativa additivazione polimerica resistente al dilavamento</li><li>Capacit� di assorbire acqua libera, senza perdita di consistenza dell&rsquo;addensante</li></ul><p xmlns="">&nbsp;</p></div><div style="width:415px; white-space:normal; padding-top:10px;display:none " class="divTabContent" id="Caratteristiche tipiche Content"><table xmlns="" width="100%" summary="" class="standard" cellspacing="0" border="0"><tr><th scope="col" class="standard">I Mobil Centaur XHP 460</th><th scope="col" class="standard">461</th><th scope="col" class="standard">462</th></tr><tr><td class="standard">Grado NLGI</td><td class="standard">1</td><td class="standard">2</td></tr><tr><td class="tr_blue">Tipo di addensante</td><td class="tr_blue">Solfonato di calcio</td><td class="tr_blue">Solfonato di calcio</td></tr><tr><td class="standard">Colore, aspetto</td><td class="standard">Arancione</td><td class="standard">Arancione</td></tr><tr><td class="tr_blue">Punto di goccia, C, ASTM D 2265</td><td class="tr_blue">275</td><td class="tr_blue">275</td></tr><tr><td class="standard">Viscosit� dell'olio componente, ASTM D 445</td><td class="standard">&nbsp;</td><td class="standard">&nbsp;</td></tr><tr><td class="tr_blue">cSt @ 40 C</td><td class="tr_blue">460</td><td class="tr_blue">460</td></tr></table><p xmlns="">&nbsp;</p></div><div style="width:415px; white-space:normal; padding-top:10px;display:none " class="divTabContent" id="Applicazioni Content"><p xmlns="">I grassi Mobil Centaur XHP Serie 460 sono consigliati per le applicazioni negli ambienti con carichi gravosi e saturi d&rsquo;acqua di acciaierie e cartiere. Esempi specifici di tali applicazioni comprendono:</p><ul xmlns=""><li>Cuscinetti siviera torretta</li><li>Colata continua</li><li>Cuscinetti a rulli per lavori di laminazione a caldo</li><li>Colli dei cilindri</li><li>Cilindri zona umida cartiera &nbsp;</li></ul></div></td><td valign="top" style="width: 10px; background-image:url('/Images/Tabs/box_Right.png'); background-repeat: repeat-y; background-color: #ffffff;" class="rightBorder"><img src="/Images/Tabs/boxNoFade_RightUpper.png" alt=""/></td></tr><tr id="tabsLower"><td valign="top" style="width: 10px; height: 10px;" id="tabsLowerLeft"><img src="/Images/Tabs/box_LeftLower.png" alt=""/></td><td valign="top" style="width: 435px; background-image:url('/Images/Tabs/box_Lower.png'); background-repeat: repeat-x;" id="tabsLowerMiddle">�</td><td valign="top" style="width: 10px; height: 10px;" id="tabsLowerRight"><img src="/Images/Tabs/box_RightLower.png" alt=""/></td></tr></table></div></div></div><!--#include virtual="Navigation/Footer.aspx"--></div><script type="text/javascript">	
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