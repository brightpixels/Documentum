
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
				<html xmlns="http://www.w3.org/1999/xhtml" xmlns:xalan-nodeset="org.apache.xalan.xslt.extensions.Nodeset" xmlns:java="http://xml.apache.org/xslt/java" xmlns:fo="http://www.w3.org/1999/XSL/Format" xml:lang="fr" lang="fr"><head><title>Huiles pour turbines : Mobil DTE&trade; 700 |  Mobil&trade;Industrial Lubricants</title><meta http-equiv="X-UA-Compatible" content="IE=edge"/><meta name="keywords" content="Mobil DTE 700, Mobil DTE, huile turbine, huile turbine Mobil, huile Mobil DTE, huile DTE, turbine � gaz,  turbine � vapeur"/><meta name="description" content="Les lubrifiants Mobil DTE&trade; 700 sont des huiles hautes performances pour turbines, con�ues pour les turbines � gaz et � vapeur et pouvant am�liorer la fiabilit� et la disponibilit� de vos �quipements."/><meta name="date" content="10/2013"/><meta name="language" content="fr"/><meta http-equiv="Content-Language" content="fr"/><link type="text/css" rel="stylesheet" media="all" href="/Imports/mobil_ind.css"/><link type="text/css" rel="stylesheet" media="print" href="/Imports/xom_print.css"/><link type="text/css" title="medium" rel="stylesheet" href="/Imports/xom_web_medium.css"/><link type="text/css" title="large" rel="alternate stylesheet" href="/Imports/xom_web_large.css"/><link type="text/css" title="small" rel="alternate stylesheet" href="/Imports/xom_web_small.css"/>	
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
				<!-- Set 'expires' in http header, start --><% string cacheExpireDateStr="9/14/2016 6:12:55 AM";
        DateTime cacheExpireDate = Convert.ToDateTime(cacheExpireDateStr); 
        Response.AddHeader("Expires",cacheExpireDate.ToUniversalTime().ToString("ddd, dd MMM yyyy HH:mm:ss 'GMT'")); %><!-- end --></head><body class="article"><a href="#mainContent" class="skip">Skip to Main Content</a><div id="container"><!--#include virtual="Navigation/Header.aspx"--><div id="mainPanel" class="clrfix"><!--#include virtual="Navigation/products_left_navigation.aspx"--><div id="toolbar"><!--#include virtual="Services/Toolbox.aspx"--><div class="related"><div class="relatedimg150X68"><a href="products_mobil-shc.aspx"><img xmlns="" title="Mobil SHC" src="Images/150x68_sidecallouts_mobilshc.jpg" longdesc="" border="0" alt="Mobil SHC"><p xmlns=""><a title="" target="" href="products_mobil-shc.aspx" class=""></a> Mobil DTE&trade; 700<br><a title="This link will open a new window." target="_new" href="http://www.mobil.com/France-French/Lubes/PDS/GLXXFRINDMOMobil_DTE_700.aspx">Fiche technique produits (FTP)</a><br><a title="This link will open a new window." target="_new" href="http://www.msds.exxonmobil.com/psims/psims.aspx">Fiche de donn�es de s�curit� (FDS)</a></p></a></div></div><div class="related"><div class="relatedimg150X68"><a href="distributorlocator.aspx"><img xmlns="" title="Lubrifiants Synth�tiques Mobil SHC " src="Images/150x68_sidecallouts_where_to_buy.jpg" longdesc="" border="0" alt="Lubrifiants Synth�tiques Mobil SHC "><p xmlns=""><a title="" target="" href="distributorlocator.aspx" class=""></a>Points de vente<br><a title="" target="" href="distributorlocator.aspx" class="">Trouvez le distributeur le plus proche de chez vous</a></p></a></div></div><div class="related"><div class="relatedimg150X68"><a href="/ind/english/productselector.aspx"><img xmlns="" title="Productivit� " src="Images/150x68_sidecallouts_looble1.jpg" longdesc="" border="0" alt="Productivit� "><p xmlns=""><a title="This link will open a new window." target="_new" href="/ind/english/productselector.aspx"></a></p><p xmlns="">Guide de s�lection de produits Looble<sup>SM</sup>(EN)<br><a title="This link will open a new window." target="_new" href="/ind/english/productselector.aspx">Trouvez les lubrifiants les plus appropri�s � vos applications industrielles</a></p></a></div></div></div><div id="mainContent"><br/><div class="img150 left"><img xmlns="" title="Huiles turbine de la gamme Mobil DTE 700 " src="Images/article_150x150_mobil-dte-700-series.jpg" longdesc="" border="0" alt="Huiles turbine de la gamme Mobil DTE 700 "></div><p xmlns=""><span style=" font-size: x-large;"><b>Gamme Mobil DTE&trade; 700</b></span></p><p xmlns=""><span style=" font-size: large;"><b>Huiles hautes performances pour turbines � gaz et � vapeur</b></span></p><p xmlns="">Optimisez la productivit� de vos turbines � gaz et � vapeur et simplifiez votre choix de lubrifiant gr�ce � Mobil DTE 700, notre solution pour les turbines � vapeur et � gaz en service mod�r�.</p><p xmlns="">Compatibles avec la plupart des huiles turbine Mobil&trade;, les lubrifiants Mobil DTE 700 sont formul�s � partir d&rsquo;huiles de base et d&rsquo;additifs soigneusement s�lectionn�s pour r�pondre � une large gamme de conditions de service, ce qui facilite votre travail et permet de r�duire les co�ts de maintenance.</p><p xmlns="">Les huiles Mobil DTE 700 poss�dent de remarquables caract�ristiques : grande r�sistance thermique, r�sistance � l&rsquo;oxydation, contr�le de d�p�ts accrus. Gr�ces � ces propri�t�s exceptionnelles, les huiles &nbsp;Mobil DTE 700 peuvent am�liorer la fiabilit� et la disponibilit� de vos �quipements, optimisant ainsi la productivit� et la profitabilit� de vos applications.</p><p xmlns=""><a title="This link will open a new window." target="_new" href="/IND/English/files/turbine-oil-mobil-dte-700-series.pdf">Mobil DTE&trade; 700 : fiche argumentaire<img src="/Images/Icons/icon_pdf_whitespace.jpg" border="0" alt=""></a> (EN)</p><p xmlns=""></p><div id="tabbed_table"><table style="width: 454px   " id="tblTabs" cellspacing="0px" cellpadding="0" border="0"><tr id="tabNav"><td style="height:1px; padding-bottom:-10px; " colspan="5"><div style="z-index:100; " id="divTabs"><ul><li onmouseover="if(this.className!='current')this.className='highlight';" onmouseout="if(this.className!='current')this.className=''" class="current" id="Accueil"><a href="#" onclick="javascript:showTab('Accueil');">Accueil</a></li><li onmouseover="if(this.className!='current')this.className='highlight'" onmouseout="if(this.className!='current')this.className=''" id="Specifications"><a href="#" onclick="javascript:showTab('Specifications');">Specifications</a></li><li onmouseover="if(this.className!='current')this.className='highlight'" onmouseout="if(this.className!='current')this.className=''" id="Applications"><a href="#" onclick="javascript:showTab('Applications');">Applications</a></li></ul></div></td></tr><tr id="trTabContent">
											<td valign="top" style="width: 10px; background-image:url('<%=GetDomain()%>/Images/Tabs/box_Left.png'); background-repeat: repeat-y; background-color: #ffffff;">
												<img class="leftUpperImg" src="<%=GetDomain()%>/Images/Tabs/box_LeftUpper.png" alt=""/>
											</td>									
										<td valign="top" class="midBorder" style="width: 435px; background-image:url('<%=GetDomain()%>/Images/Tabs/boxNoFade_Upper.png'); background-repeat: repeat-x; background-color: #ffffff;">
										<div style="width:434px; white-space:normal; padding-top:10px;display:block " class="divTabContent" id="Accueil Content"><p xmlns="">Les huiles Mobil DTE S�rie 700 pr�sentent les caract�ristiques et avantages potentiels suivants :</p><table xmlns="" width="100%" summary="" class="standard" cellspacing="0" border="0"><tr><th scope="col" class="standard">Caract�ristiques</th><th scope="col" class="standard">Avantages et b�n�fices potentiels</th></tr><tr><td class="standard">Respectent, voire d�passent la plupart des sp�cifications des constructeurs de turbines et normes de l&rsquo;industrie (ISO VG 32)</td><td class="standard">Simplifit les choix en mati�re de lubrifiants et d&rsquo;application. / Assure la conformit� � la garantie du constructeur d&rsquo;�quipements. / R�duit les stocks de lubrifiants &nbsp;</td></tr><tr><td class="tr_blue">Plus grandes stabilit� � l&rsquo;oxydation, stabilit� chimique et stabilit� de la couleur</td><td class="tr_blue">Con�ue pour prolonger le cycle de charge de l&rsquo;huile et aider � r�duire les achats d&rsquo;huile et les frais li�s au rejet.</td></tr><tr><td class="standard">&nbsp;</td><td class="standard">Aide � contr�ler la formation de d�p�ts afin de r�duire l&rsquo;obstruction des filtres et l&rsquo;encrassement des �quipements, permettant de r�duire les temps de panne et les frais de maintenance.</td></tr><tr><td class="tr_blue">&nbsp;</td><td class="tr_blue">Grande fiabilit� des turbines et r�duction des temps d&rsquo;arr�t impr�vus.</td></tr><tr><td class="standard">Excellente capacit� � s�parer l&rsquo;eau</td><td class="standard">Aide � former un film lubrifiant r�sistant afin de prot�ger les paliers de turbines. / Maximise l&rsquo;efficacit� du syst�me d&rsquo;�limination d&rsquo;eau et r�duit les co�ts de remplacement d&rsquo;huile. &nbsp;</td></tr><tr><td class="tr_blue">Am�lioration de la protection contre la rouille et la corrosion</td><td class="tr_blue">Permet de pr�venir la corrosion des composants vitaux du syst�me de graissage en r�duisant la maintenance et en prolongeant la dur�e de vie des composants.</td></tr><tr><td class="standard">D�sa�ration rapide et r�sistance au moussage</td><td class="standard">Evitent les dysfonctionnements tels que la cavitation des pompes, r�duisant ainsi le remplacement des pompes et la perte d&rsquo;efficacit�</td></tr><tr><td class="tr_blue">Sans zinc</td><td class="tr_blue">R�duit l' impact sur l&rsquo;environnement</td></tr></table><p xmlns="">&nbsp;</p></div><div style="width:415px; white-space:normal; padding-top:10px;display:none " class="divTabContent" id="Specifications Content"><table xmlns="" width="100%" summary="" class="standard" cellspacing="0" border="0"><tr><th scope="col" class="standard">Mobil DTE S�rie 700</th><th scope="col" class="standard">732</th><th scope="col" class="standard">746</th><th scope="col" class="standard">768</th></tr><tr><td class="standard">ISO VG</td><td class="standard">32</td><td class="standard">46</td><td class="standard">68</td></tr><tr><td class="tr_blue">Viscosit�, ASTM D445</td><td class="tr_blue">&nbsp;</td><td class="tr_blue">&nbsp;</td><td class="tr_blue">&nbsp;</td></tr><tr><td class="standard">cSt � 40�C</td><td class="standard">30</td><td class="standard">44</td><td class="standard">64</td></tr><tr><td class="tr_blue">cSt � 100�C</td><td class="tr_blue">5.5</td><td class="tr_blue">6.8</td><td class="tr_blue">8.6</td></tr><tr><td class="standard">Indice de viscosit�, ASTM D2270</td><td class="standard">117</td><td class="standard">113</td><td class="standard">110</td></tr><tr><td class="tr_blue">Point d'�coulement, �C, ASTM D97</td><td class="tr_blue">-30</td><td class="tr_blue">-30</td><td class="tr_blue">-30</td></tr><tr><td class="standard">Point d'�clair, �C, ASTM D92</td><td class="standard">228</td><td class="standard">230</td><td class="standard">242</td></tr></table><p xmlns="">&nbsp;</p></div><div style="width:415px; white-space:normal; padding-top:10px;display:none " class="divTabContent" id="Applications Content"><p xmlns="">Les huiles Mobil DTE S�rie 700 sont con�ues pour respecter, voire d�passer, les exigences des syst�mes de circulation des turbines � gaz et � vapeur. Les utilisations sp�cifiques comprennent</p><p xmlns="">&bull; Production d&rsquo;�nergie �lectrique � haut rendement permanent<br>
&bull; Centrales �lectriques � turbine � gaz � cycle combin� fonctionnant en r�gime permanent ou en production de pointe<br>
&bull; Turbines � gaz dans des centrales �lectriques de secours<br>
&bull; G�n�rateurs de mouvement par turbine � gaz ou � vapeur<br>
&bull; Applications avec turbines hydro�lectriques</p></div></td>
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