
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
				<html xmlns="http://www.w3.org/1999/xhtml" xmlns:xalan-nodeset="org.apache.xalan.xslt.extensions.Nodeset" xmlns:java="http://xml.apache.org/xslt/java" xmlns:fo="http://www.w3.org/1999/XSL/Format" xml:lang="fr" lang="fr"><head><title>Huiles hydrauliques : Mobil DTE 10 Excel&trade; | Mobil&trade;Industrial Lubricants</title><meta http-equiv="X-UA-Compatible" content="IE=edge"/><meta name="keywords" content="Mobil DTE 10 Excel, Mobil DTE 10, efficacit� hydraulique, DTE 10 Excel, fluides hydrauliques, huile hydraulique, efficacit� de pompe hydraulique, productivit� de machines"/><meta name="description" content="Les Mobil DTE 10 Excel &trade; sont des huiles hydrauliques de nouvelle g�n�ration con�ues pour r�pondre aux besoins en lubrification des �quipements industriels fonctionnant sous hautes pressions."/><meta name="date" content="10/2013"/><meta name="language" content="fr"/><meta http-equiv="Content-Language" content="fr"/><link type="text/css" rel="stylesheet" media="all" href="/Imports/mobil_ind.css"/><link type="text/css" rel="stylesheet" media="print" href="/Imports/xom_print.css"/><link type="text/css" title="medium" rel="stylesheet" href="/Imports/xom_web_medium.css"/><link type="text/css" title="large" rel="alternate stylesheet" href="/Imports/xom_web_large.css"/><link type="text/css" title="small" rel="alternate stylesheet" href="/Imports/xom_web_small.css"/>	
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
				<!-- Set 'expires' in http header, start --><% string cacheExpireDateStr="7/11/2016 5:54:18 AM";
        DateTime cacheExpireDate = Convert.ToDateTime(cacheExpireDateStr); 
        Response.AddHeader("Expires",cacheExpireDate.ToUniversalTime().ToString("ddd, dd MMM yyyy HH:mm:ss 'GMT'")); %><!-- end --></head><body class="article"><a href="#mainContent" class="skip">Skip to Main Content</a><div id="container"><!--#include virtual="Navigation/Header.aspx"--><div id="mainPanel" class="clrfix"><!--#include virtual="Navigation/products_left_navigation.aspx"--><div id="toolbar"><!--#include virtual="Services/Toolbox.aspx"--><div class="related"><div class="relatedimg150X68"><a href="products_mobil-shc.aspx"><img xmlns="" title="Mobil SHC" src="Images/150x68_sidecallouts_mobilshc.jpg" longdesc="" border="0" alt="Mobil SHC"><p xmlns=""><a title="" target="" href="products_mobil-shc.aspx" class=""></a> Mobil DTE 10 Excel&trade;<br><a title="This link will open a new window." target="_new" href="http://www.mobil.com/France-French/Lubes/PDS/EUXXFRINDMOMobil_DTE_10_Excel.aspx">Fiche technique produits (FTP)</a><br><a title="This link will open a new window." target="_new" href="http://www.msds.exxonmobil.com/psims/psims.aspx">Fiche de donn�es de s�curit� (FDS)</a></p></a></div></div><div class="related"><div class="relatedimg150X68"><a href="distributorlocator.aspx"><img xmlns="" title="Lubrifiants Synth�tiques Mobil SHC " src="Images/150x68_sidecallouts_where_to_buy.jpg" longdesc="" border="0" alt="Lubrifiants Synth�tiques Mobil SHC "><p xmlns=""><a title="" target="" href="distributorlocator.aspx" class=""></a>Points de vente<br><a title="" target="" href="distributorlocator.aspx" class="">Trouvez le distributeur le plus proche de chez vous</a></p></a></div></div><div class="related"><div class="relatedimg150X68"><a href="/ind/english/productselector.aspx"><img xmlns="" title="Productivit� " src="Images/150x68_sidecallouts_looble1.jpg" longdesc="" border="0" alt="Productivit� "><p xmlns=""><a title="This link will open a new window." target="_new" href="/ind/english/productselector.aspx"></a></p><p xmlns="">Guide de s�lection de produits Looble<sup>SM</sup>(EN)<br><a title="This link will open a new window." target="_new" href="/ind/english/productselector.aspx">Trouvez les lubrifiants les plus appropri�s � vos applications industrielles</a></p></a></div></div></div><div id="mainContent"><br/><div class="img150 left"><img xmlns="" title="Fluide hydraulique Mobil DTE 10 Excel" src="Images/article_150x150_mobil-dte-10-excel-series.jpg" longdesc="" border="0" alt="Fluide hydraulique Mobil DTE 10 Excel"></div><p xmlns=""><span style=" font-size: x-large;"><b>Mobil DTE 10 Excel&trade;</b></span></p><p xmlns=""><b><span style=" font-size: large;">Une nouvelle r�f�rence en termes de rendement �nerg�tique et de productivit�</span></b></p><p xmlns="">Les Mobil DTE 10 Excel sont des huiles hydrauliques sp�cialement con�ues pour r�pondre aux exigences de syst�mes hydrauliques des �quipements modernes industriels et mobiles fonctionnant � haute pression &mdash; en vous aidant � r�duire la consommation en �nergie et d&rsquo;optimiser la productivit� des �quipements au-del� de celle des nos huiles hydrauliques standard Mobil DTE&trade; 20 et &nbsp;Mobil DTE&trade; 10M.</p><p xmlns="">Formul�es � partir de fluides hydrauliques de technologie de pointe, les huiles haut de gamme Mobil DTE 10 Excel peuvent offrir d&rsquo;importants avantages :<br>
&bull; Am�lioration jusqu&rsquo;� 6% de l&rsquo;efficacit� des pompes hydrauliques par rapport &nbsp;� nos fluides conventionnels, ce qui peut permettre de r�duire la consommation en �nergie et d&rsquo;optimiser la productivit� des �quipements.*<br>
&bull; Am�lioration visible de la propret� des syst�mes hydrauliques pour une meilleure productivit� et une maintenance r�duite des �quipements. Des tests en laboratoire ont prouv� que l&rsquo;huile Mobil DTE 10 Excel pouvait garder les circuits hydrauliques en bon �tat de propret� (exempts de dep�ts) jusqu&rsquo;� trois fois plus longtemps, par rapport aux huiles hydrauliques classiques ExxonMobil.<br>
&bull; Son indice de viscosit� �lev� et sa r�sistance au cisaillement autorise une large plage de temp�ratures d&rsquo;exploitation, permettant une plus grande efficacit� des pompes hydrauliques et une protection optimale des composants fonctionnant aussi bien � des temp�ratures �lev�es que basses.</p><p xmlns="">Le rendement �nerg�tique est exclusivement li� aux performances du produit compar� � celles des fluides hydrauliques classiques ExxonMobil. La technologie utilis�e a permis, sur des applications hydrauliques classiques, d&rsquo;am�liorer le rendement des pompes hydrauliques de plus de 6% par rapport � la gamme des Mobil DTE 20. Ce rendement �nerg�tique a �t� obtenu � partir des tests conformes aux normes et protocoles en vigueur dans l&rsquo;industrie. Les r�sultats r�els peuvent varier en fonction des conditions d&rsquo;exploitation. Pour plus d&rsquo;informations, veuillez contacter le <a title="" target="" href="contactus_technical-help-desks.aspx" class="">Service d&rsquo;Assistance Technique &nbsp;ExxonMobil</a>.</p><p xmlns=""><a title="This link will open a new window." target="_new" href="/IND/English/files/mobil-dte-10-excel-next-generation-hydraulic-oil.pdf">Mobil DTE 10 Excel&trade; : fiche argumentaire<img src="/Images/Icons/icon_pdf_whitespace.jpg" border="0" alt=""></a> (EN)</p><p xmlns=""><a title="This link will open a new window." target="_new" href="http://www.youtube.com/watch?v=oC8Mq2DwTKw">Mobil DTE 10 Excel&trade;</a> (EN)</p><p xmlns=""></p><div id="tabbed_table"><table style="width: 454px   " id="tblTabs" cellspacing="0px" cellpadding="0" border="0"><tr id="tabNav"><td style="height:1px; padding-bottom:-10px; " colspan="5"><div style="z-index:100; " id="divTabs"><ul><li onmouseover="if(this.className!='current')this.className='highlight';" onmouseout="if(this.className!='current')this.className=''" class="current" id="Avantages"><a href="#" onclick="javascript:showTab('Avantages');">Avantages</a></li><li onmouseover="if(this.className!='current')this.className='highlight'" onmouseout="if(this.className!='current')this.className=''" id="Specifications"><a href="#" onclick="javascript:showTab('Specifications');">Specifications</a></li><li onmouseover="if(this.className!='current')this.className='highlight'" onmouseout="if(this.className!='current')this.className=''" id="Applications"><a href="#" onclick="javascript:showTab('Applications');">Applications</a></li></ul></div></td></tr><tr id="trTabContent">
											<td valign="top" style="width: 10px; background-image:url('<%=GetDomain()%>/Images/Tabs/box_Left.png'); background-repeat: repeat-y; background-color: #ffffff;">
												<img class="leftUpperImg" src="<%=GetDomain()%>/Images/Tabs/box_LeftUpper.png" alt=""/>
											</td>									
										<td valign="top" class="midBorder" style="width: 435px; background-image:url('<%=GetDomain()%>/Images/Tabs/boxNoFade_Upper.png'); background-repeat: repeat-x; background-color: #ffffff;">
										<div style="width:434px; white-space:normal; padding-top:10px;display:block " class="divTabContent" id="Avantages Content"><p xmlns="">Les huiles hydrauliques de la S�rie Mobil DTE 10 Excel am�liorent l&rsquo;efficacit� du syst�me hydraulique ; Performance de propret� extr�me et grande long�vit� des fluides. Les caract�ristiques d&rsquo;efficacit� hydraulique peuvent contribuer � une r�duction de la consommation en �nergie pour les �quipements industriels ou embarqu�s, r�duisant les frais de fonctionnement et am�liorant la productivit�. Leur stabilit� � l&rsquo;oxydation et leur stabilit� thermique excellentes peuvent aider � espacer les vidanges et les changements de filtre tout en conservant la propret� des syst�mes. Gr�ce � leurs propri�t�s anti-usure et � la r�sistance du film d&rsquo;huile, les �quipements sont mieux prot�g�s, les pannes moins nombreuses et la capacit� de production est am�lior�e.</p><table xmlns="" width="100%" summary="" class="standard" cellspacing="0" border="0"><tr><th scope="col" class="standard">Caract�ristiques</th><th scope="col" class="standard">Avantages et b�n�fices potentiels</th></tr><tr><td class="standard">Efficacit� hydraulique excellente</td><td class="standard">Consommation en �nergie potentiellement r�duite ou r�activit� du syst�me potentiellement am�lior�e</td></tr><tr><td class="tr_blue">Performance de conservation de la propret�</td><td class="tr_blue">R�duction des d�p�ts dans le syst�me impliquant une maintenance de la machine r�duite et une augmentation de la dur�e de vie des composants</td></tr><tr><td class="standard">Indice de viscosit� �lev�, r�sistant au cisaillement</td><td class="standard">Protection soutenue des composants sur un large �ventail de temp�ratures</td></tr><tr><td class="tr_blue">Stabilit� � l&rsquo;oxydation et stabilit� Thermique</td><td class="tr_blue">Allonge la dur�e de vie des fluides m�me dans des conditions de fonctionnement difficiles</td></tr><tr><td class="standard">Bonne compatibilit� avec les joints et les flexibles en �lastom�re</td><td class="standard">Longue dur�e de vie des joints statiques et dynamiques, maintenance r�duite</td></tr><tr><td class="tr_blue">Propri�t�s anti-usure</td><td class="tr_blue">Permet de r�duire l&rsquo;usure et prot�ge les pompes et les composants pour une dur�e de vie de l&rsquo;�quipement augment�e</td></tr><tr><td class="standard">Tr�s bonnes propri�t�s de s�paration avec l&rsquo;air</td><td class="standard">Evite les dommages de l&rsquo;a�ration et de la cavitation de l&rsquo;huile dans les circuits o� le temps de d�gazage est tr�s court</td></tr><tr><td class="tr_blue">Compatibilit� multi-m�taux</td><td class="tr_blue">Excellente protection des composants de m�tallurgies vari�es</td></tr></table><p xmlns="">&nbsp;</p><p xmlns="">&nbsp;</p><p xmlns="">&nbsp;</p></div><div style="width:415px; white-space:normal; padding-top:10px;display:none " class="divTabContent" id="Specifications Content"><table xmlns="" width="100%" summary="" class="standard" cellspacing="0" border="0"><tr><th scope="col" class="standard">Mobil DTE 10 Excel</th><th scope="col" class="standard">22</th><th scope="col" class="standard">32</th><th scope="col" class="standard">46</th><th scope="col" class="standard">68</th><th scope="col" class="standard">100</th><th scope="col" class="standard">150</th></tr><tr><td class="standard">Grade de viscosit� ISO</td><td class="standard">22</td><td class="standard">32</td><td class="standard">46</td><td class="standard">68</td><td class="standard">100</td><td class="standard">150</td></tr><tr><td class="tr_blue">Viscosit�, ASTM D 445</td><td class="tr_blue">&nbsp;</td><td class="tr_blue">&nbsp;</td><td class="tr_blue">&nbsp;</td><td class="tr_blue">&nbsp;</td><td class="tr_blue">&nbsp;</td><td class="tr_blue">&nbsp;</td></tr><tr><td class="standard">cSt @ 40� C</td><td class="standard">22.4</td><td class="standard">32.7</td><td class="standard">45.6</td><td class="standard">68.4</td><td class="standard">99.8</td><td class="standard">155.6</td></tr><tr><td class="tr_blue">cSt @ 100� C</td><td class="tr_blue">5.07</td><td class="tr_blue">6.63</td><td class="tr_blue">8.45</td><td class="tr_blue">11.17</td><td class="tr_blue">13.00</td><td class="tr_blue">17.16</td></tr><tr><td class="standard">Indice de viscosit�, ASTM D 2270</td><td class="standard">164</td><td class="standard">164</td><td class="standard">164</td><td class="standard">156</td><td class="standard">127</td><td class="standard">120</td></tr><tr><td class="tr_blue">Point d'�coulement �C, ASTM D 97</td><td class="tr_blue">-54</td><td class="tr_blue">-54</td><td class="tr_blue">-45</td><td class="tr_blue">-39</td><td class="tr_blue">-33</td><td class="tr_blue">-30</td></tr><tr><td class="standard">Point d&rsquo;�clair, �C, ASTM D 92</td><td class="standard">224</td><td class="standard">250</td><td class="standard">232</td><td class="standard">240</td><td class="standard">258</td><td class="standard">256</td></tr></table><p xmlns="">&nbsp;</p></div><div style="width:415px; white-space:normal; padding-top:10px;display:none " class="divTabContent" id="Applications Content"><p xmlns="">&bull; Syst�mes hydrauliques d&rsquo;�quipements industriels et mobiles fonctionnant sous pressions et temp�ratures �lev�es dans des applications difficiles<br>
&bull; Syst�mes hydrauliques sujets � la formation de d�p�t comme les machines complexes � Commande Num�rique pilot�es par Ordinateur (CNC), en particulier lorsque des servo-vannes � jeux r�duits sont utilis�es<br>
&bull; Syst�mes dans lesquels des d�marrages � froid et des temp�ratures de fonctionnement �lev�es sont courants<br>
&bull; Syst�mes exigeant une capacit� de charge �lev�e et une protection anti-usure importante<br>
&bull; Machines avec composants utilisant divers mat�riaux<br>
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