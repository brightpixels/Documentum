
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
				<html xmlns="http://www.w3.org/1999/xhtml" xmlns:xalan-nodeset="org.apache.xalan.xslt.extensions.Nodeset" xmlns:java="http://xml.apache.org/xslt/java" xmlns:fo="http://www.w3.org/1999/XSL/Format" xml:lang="fr" lang="fr"><head><title>Huiles pour turbines : Mobil DTE&trade; 800 |  Mobil&trade;Industrial Lubricants</title><meta http-equiv="X-UA-Compatible" content="IE=edge"/><meta name="keywords" content="Mobil DTE 800, Mobil DTE, huile turbine, huile turbine Mobil, huile Mobil DTE, huile DTE, turbine � gaz, turbine � vapeur, turbine � gaz � cycle combin�"/><meta name="description" content="Les huiles Mobil DTE&trade; 800 sont con�ues pour les applications sur des turbines � vapeur, des turbines � gaz et � cycle combin�s fonctionnant dans des conditions de service s�v�res."/><meta name="date" content="10/2013"/><meta name="language" content="fr"/><meta http-equiv="Content-Language" content="fr"/><link type="text/css" rel="stylesheet" media="all" href="/Imports/mobil_ind.css"/><link type="text/css" rel="stylesheet" media="print" href="/Imports/xom_print.css"/><link type="text/css" title="medium" rel="stylesheet" href="/Imports/xom_web_medium.css"/><link type="text/css" title="large" rel="alternate stylesheet" href="/Imports/xom_web_large.css"/><link type="text/css" title="small" rel="alternate stylesheet" href="/Imports/xom_web_small.css"/>	
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
				<!-- Set 'expires' in http header, start --><% string cacheExpireDateStr="9/14/2016 6:19:28 AM";
        DateTime cacheExpireDate = Convert.ToDateTime(cacheExpireDateStr); 
        Response.AddHeader("Expires",cacheExpireDate.ToUniversalTime().ToString("ddd, dd MMM yyyy HH:mm:ss 'GMT'")); %><!-- end --></head><body class="article"><a href="#mainContent" class="skip">Skip to Main Content</a><div id="container"><!--#include virtual="Navigation/Header.aspx"--><div id="mainPanel" class="clrfix"><!--#include virtual="Navigation/products_left_navigation.aspx"--><div id="toolbar"><!--#include virtual="Services/Toolbox.aspx"--><div class="related"><div class="relatedimg150X68"><a href="products_mobil-shc.aspx"><img xmlns="" title="Mobil SHC" src="Images/150x68_sidecallouts_mobilshc.jpg" longdesc="" border="0" alt="Mobil SHC"><p xmlns=""><a title="" target="" href="products_mobil-shc.aspx" class=""></a> Mobil DTE&trade; 800<br><a title="This link will open a new window." target="_new" href="http://www.mobil.com/France-French/Lubes/PDS/GLXXFRINDMOMobil_DTE_800.aspx">Fiche technique produits (FTP)</a><br><a title="This link will open a new window." target="_new" href="http://www.msds.exxonmobil.com/psims/psims.aspx">Fiche de donn�es de s�curit� (FDS)</a></p></a></div></div><div class="related"><div class="relatedimg150X68"><a href="distributorlocator.aspx"><img xmlns="" title="Lubrifiants Synth�tiques Mobil SHC " src="Images/150x68_sidecallouts_where_to_buy.jpg" longdesc="" border="0" alt="Lubrifiants Synth�tiques Mobil SHC "><p xmlns=""><a title="" target="" href="distributorlocator.aspx" class=""></a>Points de vente<br><a title="" target="" href="distributorlocator.aspx" class="">Trouvez le distributeur le plus proche de chez vous</a></p></a></div></div><div class="related"><div class="relatedimg150X68"><a href="/ind/english/productselector.aspx"><img xmlns="" title="Productivit� " src="Images/150x68_sidecallouts_looble1.jpg" longdesc="" border="0" alt="Productivit� "><p xmlns=""><a title="This link will open a new window." target="_new" href="/ind/english/productselector.aspx"></a></p><p xmlns="">Guide de s�lection de produits Looble<sup>SM</sup>(EN)<br><a title="This link will open a new window." target="_new" href="/ind/english/productselector.aspx">Trouvez les lubrifiants les plus appropri�s � vos applications industrielles</a></p></a></div></div></div><div id="mainContent"><br/><div class="img150 left"><img xmlns="" title="Huiles turbine de la gamme Mobil DTE 800 " src="Images/article_150x150_mobil-dte-800-series.jpg" longdesc="" border="0" alt="Huiles turbine de la gamme Mobil DTE 800 "></div><p xmlns=""><span style=" font-size: x-large;"><b>Gamme Mobil DTE&trade; 800</b></span></p><p xmlns=""><span style=" font-size: large;"><b>Huiles hautes performances pour turbines</b></span></p><p xmlns="">Les huiles turbine Mobil DTE 800 sont con�ues pour les applications des turbines � vapeur, des turbines � gaz et des turbines � gaz � cycle combin� (CCGT) fonctionnant dans des conditions de service tr�s s�v�res. Ces lubrifiants exceptionnels offrent aux �quipements une protection optimale, un fonctionnement fiable et une longue dur�e de vie des charges.</p><p xmlns=""><b>Polyvalence optimale du produit</b></p><p xmlns="">Les huiles hautes performances Mobil DTE 800 apportent aux utilisateurs une polyvalence optimale, car elles peuvent �tre utilis�es dans tous les types de turbines: turbines � gaz, � vapeur et � engrenages. Les huiles min�rales Mobil DTE&trade; sont devenues des lubrifiants de choix pour les utilisateurs de turbine � travers le monde depuis plus d&rsquo;un si�cle. Les ing�nieurs de notre entreprise travaillent en �troite collaboration avec les constructeurs d&rsquo;�quipements et les utilisateurs pour s&rsquo;assurer que nos lubrifiants satisfont ou surpassent les exigences techniques de vos turbines.</p><p xmlns=""><a title="This link will open a new window." target="_new" href="/IND/English/files/turbine-oil-mobil-dte-800-series.pdf">Mobil DTE&trade; 800 : fiche argumentaire<img src="/Images/Icons/icon_pdf_whitespace.jpg" border="0" alt=""></a></p><p xmlns=""></p><div id="tabbed_table"><table style="width: 454px   " id="tblTabs" cellspacing="0px" cellpadding="0" border="0"><tr id="tabNav"><td style="height:1px; padding-bottom:-10px; " colspan="5"><div style="z-index:100; " id="divTabs"><ul><li onmouseover="if(this.className!='current')this.className='highlight';" onmouseout="if(this.className!='current')this.className=''" class="current" id="Avantages"><a href="#" onclick="javascript:showTab('Avantages');">Avantages</a></li><li onmouseover="if(this.className!='current')this.className='highlight'" onmouseout="if(this.className!='current')this.className=''" id="Caract�ristiques typiques"><a href="#" onclick="javascript:showTab('Caract�ristiques typiques');">Caract�ristiques typiques</a></li><li onmouseover="if(this.className!='current')this.className='highlight'" onmouseout="if(this.className!='current')this.className=''" id="Applications"><a href="#" onclick="javascript:showTab('Applications');">Applications</a></li></ul></div></td></tr><tr id="trTabContent">
											<td valign="top" style="width: 10px; background-image:url('<%=GetDomain()%>/Images/Tabs/box_Left.png'); background-repeat: repeat-y; background-color: #ffffff;">
												<img class="leftUpperImg" src="<%=GetDomain()%>/Images/Tabs/box_LeftUpper.png" alt=""/>
											</td>									
										<td valign="top" class="midBorder" style="width: 435px; background-image:url('<%=GetDomain()%>/Images/Tabs/boxNoFade_Upper.png'); background-repeat: repeat-x; background-color: #ffffff;">
										<div style="width:434px; white-space:normal; padding-top:10px;display:block " class="divTabContent" id="Avantages Content"><p xmlns="">Les Mobil DTE min�rales sont utilis�es dans le monde depuis plus de 100 ans pour la lubrification des turbines. Pendant tout ce temps nos chercheurs ont travaill� en collaboration avec les constructeurs et les utilisateurs pour que nos produits r�pondent ou d�passent les exigences des turbines de nouvelle g�n�ration.</p><p xmlns="">Les turbines � gaz modernes � haut rendement doivent �tre particuli�rement bien prot�g�es contre l'oxydation et les d�p�ts. La s�v�rit� de leur mode de fonctionnement fait subir au lubrifiant des chocs thermiques pouvant entra�ner des colmatages de filtres ou des d�p�ts sur les servo-valves. La dur�e de vie du produit peut donc �tre tr�s courte. Dans les turbines � vapeur le degr� de r�sistance � l'oxydation et la capacit� de s�paration avec l'eau en cas de fuites de vapeur doivent �tre une priorit�. Dans les applications combin�es, le lubrifiant doit r�pondre � ces doubles exigences. Les Mobil DTE 832 et 846 pr�sentent les avantages suivants :</p><table xmlns="" width="100%" summary="" class="standard" cellspacing="0" border="0"><tr><th scope="col" class="standard"><b>Caract�ristiques</b></th><th scope="col" class="standard"><b>Avantages et b�n�fices potentiels</b></th></tr><tr><td class="standard">R�pondent � la fois aux exigences des plus grands constructeurs de turbines � gaz et de turbines � vapeur en mati�re de lubrification</td><td class="standard">Moins de risque d'erreurs d'applications et moins de vidanges. Co�t r�duit (moins d'huiles)</td></tr><tr><td class="tr_blue">Excellente stabilit� � l'oxydation et tr�s bonne stabilit� thermique</td><td class="tr_blue">R�duction des pannes, fiabilit� des op�rations Allongement de la dur�e de vie de l'huile ; baisse du co�t produit</td></tr><tr><td class="standard">Excellente propri�t� anti-usure</td><td class="standard">Parfaite protection des turbines �quip�es d'engrenages Baisse des co�ts de maintenance et de remplacement du lubrifiant</td></tr><tr><td class="tr_blue">Excellente d�s�mulsion</td><td class="tr_blue">Efficacit� de fonctionnement et maintenance r�duite</td></tr></table><p xmlns="">&nbsp;</p></div><div style="width:415px; white-space:normal; padding-top:10px;display:none " class="divTabContent" id="Caract�ristiques typiques Content"><table xmlns="" width="100%" summary="" class="standard" cellspacing="0" border="0"><tr><th scope="col" class="standard">Mobil DTE 800 Series</th><th scope="col" class="standard">832</th><th scope="col" class="standard">846</th></tr><tr><td class="standard">Grade ISO</td><td class="standard">32</td><td class="standard">46</td></tr><tr><td class="tr_blue">Viscosit�, ASTM D 445</td><td class="tr_blue">&nbsp;</td><td class="tr_blue">&nbsp;</td></tr><tr><td class="standard">cSt &nbsp;&nbsp;40�C</td><td class="standard">29.6</td><td class="standard">42.4</td></tr><tr><td class="tr_blue">CSt 100�C</td><td class="tr_blue">5.4</td><td class="tr_blue">6.2</td></tr><tr><td class="standard">Indice de viscosit�, ASTM D 2270</td><td class="standard">110</td><td class="standard">106</td></tr><tr><td class="tr_blue">Point d'�coulement, �C, ASTM D 97</td><td class="tr_blue">-30</td><td class="tr_blue">-30</td></tr><tr><td class="standard">Point d'�clair, �C, ASTM D 92</td><td class="standard">224</td><td class="standard">244</td></tr></table><p xmlns="">&nbsp;</p></div><div style="width:415px; white-space:normal; padding-top:10px;display:none " class="divTabContent" id="Applications Content"><p xmlns="">&bull; Applications � cycles combin�s pour la production �lectrique incluant celles avec syst�me de circulation commun pour la turbine � vapeur et la turbine � gaz.<br>
&bull; Lubrification des turbines � gaz et � vapeur utilis�es pour la production d'�lectricit�, l'acheminement du gaz naturel, les op�rations de transformation et la cog�n�ration.</p></div></td>
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