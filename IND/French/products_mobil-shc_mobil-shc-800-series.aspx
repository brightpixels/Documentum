
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
				<html xmlns="http://www.w3.org/1999/xhtml" xmlns:xalan-nodeset="org.apache.xalan.xslt.extensions.Nodeset" xmlns:java="http://xml.apache.org/xslt/java" xmlns:fo="http://www.w3.org/1999/XSL/Format" xml:lang="fr" lang="fr"><head><title>Huiles pour turbines : Mobil SHC&trade; 800 | Mobil&trade; Industrial Lubricants</title><meta http-equiv="X-UA-Compatible" content="IE=edge"/><meta name="keywords" content="Huile pour compresseurs, huiles pour compresseurs d&rsquo;air ; la s�rie Mobil Rarus 800, Rarus, Mobil Rarus, lubrifiants pour compresseurs, syst�mes d&rsquo;additifs, protection des compresseurs"/><meta name="description" content="Les lubrifiants Mobil SHC&trade; 800 sont des huiles synth�tiques pour turbines � gaz, con�ues pour r�pondre aux besoins des applications de turbines � gaz industrielles fonctionnant en service tr�s s�v�re"/><meta name="date" content="10/2013"/><meta name="language" content="fr"/><meta http-equiv="Content-Language" content="fr"/><link type="text/css" rel="stylesheet" media="all" href="/Imports/mobil_ind.css"/><link type="text/css" rel="stylesheet" media="print" href="/Imports/xom_print.css"/><link type="text/css" title="medium" rel="stylesheet" href="/Imports/xom_web_medium.css"/><link type="text/css" title="large" rel="alternate stylesheet" href="/Imports/xom_web_large.css"/><link type="text/css" title="small" rel="alternate stylesheet" href="/Imports/xom_web_small.css"/>	
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
				<!-- Set 'expires' in http header, start --><% string cacheExpireDateStr="9/14/2016 9:27:54 AM";
        DateTime cacheExpireDate = Convert.ToDateTime(cacheExpireDateStr); 
        Response.AddHeader("Expires",cacheExpireDate.ToUniversalTime().ToString("ddd, dd MMM yyyy HH:mm:ss 'GMT'")); %><!-- end --></head><body class="article"><a href="#mainContent" class="skip">Skip to Main Content</a><div id="container"><!--#include virtual="Navigation/Header.aspx"--><div id="mainPanel" class="clrfix"><!--#include virtual="Navigation/products_left_navigation.aspx"--><div id="toolbar"><!--#include virtual="Services/Toolbox.aspx"--><div class="related"><div class="relatedimg150X68"><a href="products_mobil-shc.aspx"><img xmlns="" title="Mobil SHC" src="Images/150x68_sidecallouts_mobilshc.jpg" longdesc="" border="0" alt="Mobil SHC"><p xmlns=""><a title="" target="" href="products_mobil-shc.aspx" class=""></a> Mobil SHC&trade; 800<br><a title="This link will open a new window." target="_new" href="http://www.mobil.com/France-French/Lubes/PDS/GLXXFRINDMOMobil_SHC_800.aspx">Fiche technique produits (FTP)</a><br><a title="This link will open a new window." target="_new" href="http://www.msds.exxonmobil.com/psims/psims.aspx">Fiche de donn�es de s�curit� (FDS)</a></p></a></div></div><div class="related"><div class="relatedimg150X68"><a href="distributorlocator.aspx"><img xmlns="" title="Lubrifiants Synth�tiques Mobil SHC " src="Images/150x68_sidecallouts_where_to_buy.jpg" longdesc="" border="0" alt="Lubrifiants Synth�tiques Mobil SHC "><p xmlns=""><a title="" target="" href="distributorlocator.aspx" class=""></a>Points de vente<br><a title="" target="" href="distributorlocator.aspx" class="">Trouvez le distributeur le plus proche de chez vous</a></p></a></div></div><div class="related"><div class="relatedimg150X68"><a href="/ind/english/productselector.aspx"><img xmlns="" title="Productivit� " src="Images/150x68_sidecallouts_looble1.jpg" longdesc="" border="0" alt="Productivit� "><p xmlns=""><a title="This link will open a new window." target="_new" href="/ind/english/productselector.aspx"></a></p><p xmlns="">Guide de s�lection de produits Looble<sup>SM</sup>(EN)<br><a title="This link will open a new window." target="_new" href="/ind/english/productselector.aspx">Trouvez les lubrifiants les plus appropri�s � vos applications industrielles</a></p></a></div></div></div><div id="mainContent"><br/><div class="img150 left"><img xmlns="" title="Gamme Mobil SHC&trade; 800: Lubrifiant pour turbines" src="Images/article_150x150_mobil-shc-800-series.jpg" longdesc="" border="0" alt="Gamme Mobil SHC&trade; 800: Lubrifiant pour turbines"></div><p xmlns=""><span style=" font-size: x-large;"><b>Gamme Mobil SHC&trade; 800</b></span></p><p xmlns=""><span style=" font-size: large;"><b>Huiles hautes performances pour turbines</b></span></p><p xmlns="">La gamme des huiles synth�tiques Mobil SHC 800 &nbsp;pour turbines est con�ue pour r�pondre aux besoins les plus exigeants des turbines � gaz industrielles. Sa formule se caract�rise par une remarquable fluidit� � basse temp�rature et une r�sistance exceptionnelle � la d�gradation � temp�rature �lev�e : sa stabilit� thermique va au-del� de ce que peuvent supporter les huiles min�rales de haute qualit�.</p><p xmlns=""><b>Excellente protection</b><br>
Pour �laborer les huiles Mobil SHC 800, nos ing�nieurs et chercheurs proc�dent au m�lange d&rsquo;additifs sp�cifiques afin d&rsquo;optimiser les capacit�s de nos huiles de base synth�tique, de formule exclusive, qui apportent une dur�e de vie des charges exceptionnelle, un contr�le des d�p�ts et une r�sistance � la d�gradation thermique et chimique. Relevez le d�fi que repr�sente la lubrification de vos turbines � gaz gr�ce aux performances �quilibr�es des huiles Mobil SHC 800</p><p xmlns=""></p><p xmlns=""><a title="This link will open a new window." target="_new" href="/IND/English/files/synthetic-lubricants-mobil-SHC-800-series.pdf">Mobil SHC&trade; 800: fiche descriptive<img src="/Images/Icons/icon_pdf_whitespace.jpg" border="0" alt=""></a> (EN)</p><p xmlns=""><a title="This link will open a new window." target="_new" href="http://www.youtube.com/watch?v=Z4MWDrFPkx4">Mobil SHC&trade; et l'histoire d'un succ�s : Mobil SHC&trade; 824 prot�ge une turbine � gaz Solar pendant plus de 90 000 heures de service</a> (EN)</p><p xmlns="">&nbsp;</p><div id="tabbed_table"><table style="width: 454px   " id="tblTabs" cellspacing="0px" cellpadding="0" border="0"><tr id="tabNav"><td style="height:1px; padding-bottom:-10px; " colspan="5"><div style="z-index:100; " id="divTabs"><ul><li onmouseover="if(this.className!='current')this.className='highlight';" onmouseout="if(this.className!='current')this.className=''" class="current" id="Caract�ristiques et avantages"><a href="#" onclick="javascript:showTab('Caract�ristiques et avantages');">Caract�ristiques et avantages</a></li><li onmouseover="if(this.className!='current')this.className='highlight'" onmouseout="if(this.className!='current')this.className=''" id="Avantages"><a href="#" onclick="javascript:showTab('Avantages');">Avantages</a></li><li onmouseover="if(this.className!='current')this.className='highlight'" onmouseout="if(this.className!='current')this.className=''" id="Applications"><a href="#" onclick="javascript:showTab('Applications');">Applications</a></li></ul></div></td></tr><tr id="trTabContent">
											<td valign="top" style="width: 10px; background-image:url('<%=GetDomain()%>/Images/Tabs/box_Left.png'); background-repeat: repeat-y; background-color: #ffffff;">
												<img class="leftUpperImg" src="<%=GetDomain()%>/Images/Tabs/box_LeftUpper.png" alt=""/>
											</td>									
										<td valign="top" class="midBorder" style="width: 435px; background-image:url('<%=GetDomain()%>/Images/Tabs/boxNoFade_Upper.png'); background-repeat: repeat-x; background-color: #ffffff;">
										<div style="width:434px; white-space:normal; padding-top:10px;display:block " class="divTabContent" id="Caract�ristiques et avantages Content"><p xmlns="">Les lubrifiants de la marque Mobil SHC sont reconnus et appr�ci�s dans le monde entier en raison de leur caract�re novateur et de leur rendement remarquable. Ces produits synth�tiques Mobil SHC, lanc�s par nos chercheurs scientifiques, symbolisent la promesse tenue de recourir � une technologie de pointe pour offrir des produits remarquables. Les produits Mobil sont aussi le choix des op�rateurs de turbines dans le monde entier depuis leur commercialisation il y a plus d'un si�cle. Au cours de cette p�riode, nos experts techniques ont travaill� en �troite collaboration avec les constructeurs pour s'assurer que les produits que nous offrons ont un rendement exceptionnel dans les turbines, dont la conception est en �volution constante. Une parfaite connaissance de ces nouvelles conceptions et de leurs conditions de fonctionnement constitue un atout primordial pour mettre en &#339;uvre la meilleure technologie de lubrification dans la mise au point de produits qui fourniront le rendement exig� par les utilisateurs.</p><p xmlns="">L'une des tendances g�n�rales au fil des ans a �t� de concevoir des appareils au rendement accru, ce qui est susceptible d'exposer davantage le lubrifiant � la chaleur. Cette exposition � la chaleur est exacerb�e par le fonctionnement cyclique des turbines auquel les op�rateurs de turbine � gaz ont recours pour g�rer le jeu de l'offre et de la demande de production d'�lectricit�, ce qui se traduit par une exposition � la chaleur chaque fois que l'appareil arr�te de fonctionner. La r�sistance � la d�gradation par la chaleur est donc une propri�t� essentielle que doit poss�der toute huile lubrifiante moderne pour les turbines � gaz.</p><p xmlns="">Pour combattre l'exposition de l'huile � la chaleur intense, nos ing�nieurs-concepteurs choisissent des huiles de base synth�tiques exclusives pour la gamme Mobil SHC 800 pour leur capacit� exceptionnelle de r�sister � la chaleur et � l'oxydation. Nos ing�nieurs-concepteurs choisissent des additifs sp�ciaux qui maximisent les avantages conf�r�s par les huiles de base synth�tiques afin d'assurer une dur�e de vie exceptionnelle de l'huile, de lutter contre la formation de d�p�ts et de r�sister � la d�gradation par la chaleur et les produits chimiques, tout en assurant un �quilibre entre les caract�ristiques de rendement. L'huile de base synth�tique conf�re �galement des caract�ristiques de fluidit� remarquables � basse temp�rature auxquelles ne peuvent pr�tendre les huiles min�rales pour turbines, avantage essentiel pour les appareils expos�s � des temp�ratures ambiantes basses. Voici quelques-uns des nombreux avantages de la gamme Mobil SHC 800 :</p><table xmlns="" width="100%" summary="" class="standard" cellspacing="0" border="0"><tr><th scope="col" class="standard">Caract�ristiques</th><th scope="col" class="standard">Avantages et b�n�fices potentiel</th></tr><tr><td class="standard">Remarquable r�sistance � la chaleur et � l'oxydation et lutte contre la formation de d�p�ts</td><td class="standard">Degr� �lev� de r�sistance � la chaleur lors du retour de l'huile apr�s arr�t de la turbine<br>
Limitation de la formation de d�p�ts et fiabilit� accrue et baisse des frais d'entretien<br>
Longue dur�e de vie de l'huile en charge et baisse des co�ts en produit</td></tr><tr><td class="tr_blue">Excellente fluidit� � basses temp�ratures</td><td class="tr_blue">Fiabilit� de la circulation et de la lubrification lors de d�marrages � froid, m�me � tr�s basse temp�rature</td></tr><tr><td class="standard">Indice de viscosit� naturellement �lev�</td><td class="standard">Protection accrue du mat�riel � temp�rature �lev�e</td></tr><tr><td class="tr_blue">Tr�s bonne r�sistance au moussage et bonne d�sa�ration de l'huile</td><td class="tr_blue">Fonctionnement efficace du circuit et moins d'arr�ts impr�vus</td></tr><tr><td class="standard">Excellente protection contre l'usure</td><td class="standard">Excellente protection du mat�riel et diminution des frais de remplacement de celui-ci</td></tr></table><p xmlns="">&nbsp;</p></div><div style="width:415px; white-space:normal; padding-top:10px;display:none " class="divTabContent" id="Avantages Content"><table xmlns="" width="100%" summary="" class="standard" cellspacing="0" border="0"><tr><th scope="col" class="standard">Grade Mobil SHC 800</th><th scope="col" class="standard">824</th><th scope="col" class="standard">825</th></tr><tr><td class="standard">Grade de viscosit� ISO</td><td class="standard">32</td><td class="standard">46</td></tr><tr><td class="tr_blue">Viscosit�, ASTM D 445</td><td class="tr_blue">&nbsp;</td><td class="tr_blue">&nbsp;</td></tr><tr><td class="standard">cSt @ 40� C</td><td class="standard">31,5</td><td class="standard">43,9</td></tr><tr><td class="tr_blue">cSt @ 100� C</td><td class="tr_blue">5,9</td><td class="tr_blue">7,9</td></tr><tr><td class="standard">Indice de viscosit�, ASTM D 2270</td><td class="standard">135</td><td class="standard">145</td></tr><tr><td class="tr_blue">Indice de viscosit�, ASTM D 2270</td><td class="tr_blue">&lsaquo;-54</td><td class="tr_blue">-45</td></tr><tr><td class="standard">Point d'�clair, �C, ASTM D 92</td><td class="standard">248</td><td class="standard">248</td></tr></table><p xmlns="">&nbsp;</p></div><div style="width:415px; white-space:normal; padding-top:10px;display:none " class="divTabContent" id="Applications Content"><p xmlns="">La gamme &nbsp;pour turbine Mobil SHC 800 est con�ue express�ment pour r�pondre aux besoins des turbines � gaz industrielles soumises aux conditions les plus intensives et � ceux du mat�riel auxiliaire. Applications particuli�res :</p><p xmlns="">&bull; Turbines � gaz fixes soumises � un service intensif, en particulier les appareils d'une puissance inf�rieure � 3 000 hp, servant � la production d'�lectricit� d'appoint<br>
&bull; Turbines � gaz industrielles fonctionnant � basse temp�rature ambiante et dans des endroits �loign�s<br>
&bull; Syst�mes � �nergie totale</p></div></td>
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