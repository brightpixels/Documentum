
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
				<html xmlns="http://www.w3.org/1999/xhtml" xmlns:xalan-nodeset="org.apache.xalan.xslt.extensions.Nodeset" xmlns:java="http://xml.apache.org/xslt/java" xmlns:fo="http://www.w3.org/1999/XSL/Format" xml:lang="fr" lang="fr"><head><title>Graisses industrielles : S�rie Mobil Grease XHP&trade; 320 Mine | Mobil&trade; Industrial Lubricants</title><meta http-equiv="X-UA-Compatible" content="IE=edge"/><meta name="keywords" content="Graisses Mobil, S�rie Mobilgrease XHP 320 Mine, Mobilgrease XHP, graisse de lubrification, graisses industrielles, circuits de lubrification, engins miniers"/><meta name="description" content="Graisses Mobil, S�rie Mobilgrease XHP 320 Mine, Mobilgrease XHP, graisse de lubrification, graisses industrielles, circuits de lubrification, engins miniers"/><meta name="date" content="10/2013"/><meta name="language" content="fr"/><meta http-equiv="Content-Language" content="fr"/><link type="text/css" rel="stylesheet" media="all" href="/Imports/mobil_ind.css"/><link type="text/css" rel="stylesheet" media="print" href="/Imports/xom_print.css"/><link type="text/css" title="medium" rel="stylesheet" href="/Imports/xom_web_medium.css"/><link type="text/css" title="large" rel="alternate stylesheet" href="/Imports/xom_web_large.css"/><link type="text/css" title="small" rel="alternate stylesheet" href="/Imports/xom_web_small.css"/>	
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
				<!-- Set 'expires' in http header, start --><% string cacheExpireDateStr="8/2/2016 5:38:31 AM";
        DateTime cacheExpireDate = Convert.ToDateTime(cacheExpireDateStr); 
        Response.AddHeader("Expires",cacheExpireDate.ToUniversalTime().ToString("ddd, dd MMM yyyy HH:mm:ss 'GMT'")); %><!-- end --></head><body class="article"><a href="#mainContent" class="skip">Skip to Main Content</a><div id="container"><!--#include virtual="Navigation/Header.aspx"--><div id="mainPanel" class="clrfix"><!--#include virtual="Navigation/products_left_navigation.aspx"--><div id="toolbar"><!--#include virtual="Services/Toolbox.aspx"--><div class="related"><div class="relatedimg150X68"><a href="products_mobil-shc.aspx"><img xmlns="" title="Mobil SHC" src="Images/150x68_sidecallouts_mobilshc.jpg" longdesc="" border="0" alt="Mobil SHC"><p xmlns=""><a title="" target="" href="products_mobil-shc.aspx" class=""></a> S�rie Mobilgrease XHP&trade; 320 Mine<br><a title="This link will open a new window." target="_new" href="http://www.mobil.com/France-French/Lubes/PDS/GLXXFRGRSMOMobilgrease_XHP_Mine_Series.aspx">Fiche technique produits (FTP)</a><br><a title="This link will open a new window." target="_new" href="http://www.msds.exxonmobil.com/psims/psims.aspx">Fiche de donn�es de s�curit� (FDS)</a></p></a></div></div><div class="related"><div class="relatedimg150X68"><a href="distributorlocator.aspx"><img xmlns="" title="Lubrifiants Synth�tiques Mobil SHC " src="Images/150x68_sidecallouts_where_to_buy.jpg" longdesc="" border="0" alt="Lubrifiants Synth�tiques Mobil SHC "><p xmlns=""><a title="" target="" href="distributorlocator.aspx" class=""></a>Points de vente<br><a title="" target="" href="distributorlocator.aspx" class="">Trouvez le distributeur le plus proche de chez vous</a></p></a></div></div><div class="related"><div class="relatedimg150X68"><a href="/ind/english/productselector.aspx"><img xmlns="" title="Productivit� " src="Images/150x68_sidecallouts_looble1.jpg" longdesc="" border="0" alt="Productivit� "><p xmlns=""><a title="This link will open a new window." target="_new" href="/ind/english/productselector.aspx"></a></p><p xmlns="">Guide de s�lection de produits Looble<sup>SM</sup>(EN)<br><a title="This link will open a new window." target="_new" href="/ind/english/productselector.aspx">Trouvez les lubrifiants les plus appropri�s � vos applications industrielles</a></p></a></div></div></div><div id="mainContent"><br/><div class="img150 left"><img xmlns="" title="Camion&nbsp;utilis� dans l&rsquo;industrie mini�re" src="Images/article_150x150_mining.jpg" longdesc="" border="0" alt="Camion&nbsp;utilis� dans l&rsquo;industrie mini�re"></div><p xmlns=""><span style=" font-size: x-large;"><b>S�rie Mobilgrease XHP&trade; 320</b></span></p><p xmlns=""><span style=" font-size: x-large;"><b>Mine</b></span></p><p xmlns=""><span style=" font-size: large;"><b>Graisses au lithium complexe de premi�re qualit� contenant du disulfure de molybd�ne</b></span><br><br>
Les graisses de la gamme Mobilgrease XHP 320 Mine sont sp�cialement con�ues pour r�pondre aux exigences des �quipements des secteurs des travaux publics et des mines qui n�cessitent une excellente protection contre les pressions extr�mes et l&rsquo;usure pour r�sister aux conditions s�v�res de pulv�risation d&rsquo;eau, de glissement et de hautes temp�ratures rencontr�es dans ces secteurs sp�cifiques. Cette s�rie a �t� formul�e pour vous apporter des performances exceptionnelles dans les axes de godet, les goupilles et les composants de ch�ssis lourdement charg�s.</p><p xmlns="">Les Mobilgrease XHP 320 Mine sont particuli�rement adapt�es aux syst�mes de lubrification centralis�s d&rsquo;�quipements lourds qui n�cessitent une graisse de grade NLGI 0 et leur utilisation est recommand�e par ExxonMobil pour les syst�mes de lubrification centralis�s de Caterpillar et d&rsquo;autres �quipements des travaux publics et des materiels minier.</p><p xmlns=""><a title="This link will open a new window." target="_new" href="/IND/English/files/mobilgrease-xhp-mine-series.pdf">Mobilgrease XHP&trade; : fiche argumentaire<img src="/Images/Icons/icon_pdf_whitespace.jpg" border="0" alt=""></a> (EN)</p><p xmlns=""><a title="This link will open a new window." target="_new" href="/IND/English/files/mining-industry-machinery-efficiency-brochure.pdf">Brochure "Lubrifiants Mobil&trade; pour les mines et carri�res"<img src="/Images/Icons/icon_pdf_whitespace.jpg" border="0" alt=""></a> (EN)</p><p xmlns=""></p><div id="tabbed_table"><table style="width: 454px   " id="tblTabs" cellspacing="0px" cellpadding="0" border="0"><tr id="tabNav"><td style="height:1px; padding-bottom:-10px; " colspan="5"><div style="z-index:100; " id="divTabs"><ul><li onmouseover="if(this.className!='current')this.className='highlight';" onmouseout="if(this.className!='current')this.className=''" class="current" id="Caract�ristiques et avantages"><a href="#" onclick="javascript:showTab('Caract�ristiques et avantages');">Caract�ristiques et avantages</a></li><li onmouseover="if(this.className!='current')this.className='highlight'" onmouseout="if(this.className!='current')this.className=''" id="Sp�cifications"><a href="#" onclick="javascript:showTab('Sp�cifications');">Sp�cifications</a></li><li onmouseover="if(this.className!='current')this.className='highlight'" onmouseout="if(this.className!='current')this.className=''" id="Applications"><a href="#" onclick="javascript:showTab('Applications');">Applications</a></li></ul></div></td></tr><tr id="trTabContent">
											<td valign="top" style="width: 10px; background-image:url('<%=GetDomain()%>/Images/Tabs/box_Left.png'); background-repeat: repeat-y; background-color: #ffffff;">
												<img class="leftUpperImg" src="<%=GetDomain()%>/Images/Tabs/box_LeftUpper.png" alt=""/>
											</td>									
										<td valign="top" class="midBorder" style="width: 435px; background-image:url('<%=GetDomain()%>/Images/Tabs/boxNoFade_Upper.png'); background-repeat: repeat-x; background-color: #ffffff;">
										<div style="width:434px; white-space:normal; padding-top:10px;display:block " class="divTabContent" id="Caract�ristiques et avantages Content"><p xmlns="">Les graisses Mobilgrease XHP 100 Mine, 320 Mine, 321 Mine et 322 Mine font partie de la gamme de produits Mobilgrease, qui a acquis une r�putation d&rsquo;innovation et d&rsquo;excellence sur le plan de la performance. Les graisses Mobilgrease XHP Mine sont con�ues par nos ing�nieurs de recherche, avec l&rsquo;appui de notre �quipe de soutien technique � l&rsquo;�chelle mondiale.</p><p xmlns="">Les Mobilgrease XHP 100 Mine, 320 Mine, 321 Mine et 322 Mine ont �t� sp�cifiquement con�ues pour r�pondre aux besoins des �quipements miniers et de chantier n�cessitant une protection anti-usure et extr�me pression exceptionnelle et une stabilit� m�me dans des conditions difficiles de d�lavage � l&rsquo;eau, de glissement �lev� et de temp�ratures �lev�es. Ces graisses offrent les fonctionnalit�s, avantages et caract�ristiques suivants :</p><table xmlns="" width="100%" summary="" class="standard" cellspacing="0" border="0"><tr><th scope="col" class="standard">Caract�ristiques</th><th scope="col" class="standard">Caract�ristiques et avantages</th></tr><tr><td class="standard">Excellentes propri�t�s anti-usure et EP (extr�me pression)</td><td class="standard">Protection efficace de l'�quipement, avec la possibilit� de prolonger la dur�e de vie du mat�riel m�me dans des conditions d'utilisation intensive</td></tr><tr><td class="tr_blue">Teneur �lev�e en bisulfure de molybd�ne</td><td class="tr_blue">Protection optimale des �quipements dans des conditions de glissement �lev� et � des intervalles de regraissage prolong�s</td></tr><tr><td class="standard">R�sistance exceptionnelle au d�lavage � l&rsquo;eau et � la pulv�risation d&rsquo;eau</td><td class="standard">Lubrification et protection assur�es, m�me en milieu humide</td></tr><tr><td class="tr_blue">Tr�s bonne pompabilit� � basse temp�rature pour les syst�mes centralis�s de graissage (Mobilgrease XHP 100 Mine et 320 Mine)</td><td class="tr_blue">Pompabilit� � basse temp�rature et performances de mise en marche excellentes, �l�ments cl�s pour les applications � distance</td></tr></table><p xmlns="">&nbsp;</p></div><div style="width:415px; white-space:normal; padding-top:10px;display:none " class="divTabContent" id="Sp�cifications Content"><table xmlns="" width="100%" summary="" class="standard" cellspacing="0" border="0"><tr><th scope="col" class="standard">Mobilgrease XHP Mine</th><th scope="col" class="standard">100</th><th scope="col" class="standard">320</th><th scope="col" class="standard">321</th><th scope="col" class="standard">322</th></tr><tr><td class="standard">Grade NLGI</td><td class="standard">0</td><td class="standard">0</td><td class="standard">1</td><td class="standard">2</td></tr><tr><td class="tr_blue">Type d&rsquo;�paississant</td><td class="tr_blue">Complexe de lithium</td><td class="tr_blue">Complexe de lithium</td><td class="tr_blue">Complexe de lithium</td><td class="tr_blue">Complexe de lithium</td></tr><tr><td class="standard">Couleur visuelle</td><td class="standard">Gris-noir</td><td class="standard">Gris-noir</td><td class="standard">Gris-noir</td><td class="standard">Gris-noir</td></tr><tr><td class="tr_blue">Viscosit� de l&rsquo;huile, ASTM D 445</td><td class="tr_blue">&nbsp;</td><td class="tr_blue">&nbsp;</td><td class="tr_blue">&nbsp;</td><td class="tr_blue">&nbsp;</td></tr><tr><td class="standard">cSt � 40� C</td><td class="standard">100</td><td class="standard">320</td><td class="standard">320</td><td class="standard">320</td></tr><tr><td class="tr_blue">Point de goutte, �C, ASTM D 2265</td><td class="tr_blue">200</td><td class="tr_blue">270</td><td class="tr_blue">270</td><td class="tr_blue">270</td></tr></table><p xmlns="">&nbsp;</p></div><div style="width:415px; white-space:normal; padding-top:10px;display:none " class="divTabContent" id="Applications Content"><p xmlns="">Les graisses Mobilgrease XHP 100 Mine, 320 Mine, 321 Mine et 322 Mine sont recommand�es pour les applications mini�res et de chantier dans des conditions de service s�v�re et de d�lavage � l&rsquo;eau. Application sp�cifiques :</p><p xmlns="">&bull; Axes de godet, axes de pivotement et composants de ch�ssis sous forte charge<br>
&bull; Syst�mes de graissage centralis�s d'�quipement lourd<br>
&bull; Graissage g�n�ral de ch�ssis</p></div></td>
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