
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
				<html xmlns="http://www.w3.org/1999/xhtml" xmlns:xalan-nodeset="org.apache.xalan.xslt.extensions.Nodeset" xmlns:java="http://xml.apache.org/xslt/java" xmlns:fo="http://www.w3.org/1999/XSL/Format" xml:lang="fr" lang="fr"><head><title>Mobil SHC&trade; Gear: Huiles et lubrifiants pour engrenages | Mobil&trade; Industrial Lubricants</title><meta http-equiv="X-UA-Compatible" content="IE=edge"/><meta name="keywords" content="Mobil SHC OH Gear, Mobil SHC Gear, Lubrifiants pour engins miniers,  huile mines, lubrifiants mines, lubrifiants synth�tiques, Lubrifiants synth�tiques Mobil, lubrifiants industriels, SHC OH gear, Huile Mobil gear, Huile SHC gear, huile engrenages"/><meta name="description" content="Am�liorez la productivit� de vos machines gr�ce aux huiles industrielles synth�tiques pour engrenages Mobil SHC&trade; Gear  qui assurent une excellente protection des �quipements tout en gardant des performances �quilibr�es."/><meta name="date" content="10/2013"/><meta name="language" content="fr"/><meta http-equiv="Content-Language" content="fr"/><link type="text/css" rel="stylesheet" media="all" href="/Imports/mobil_ind.css"/><link type="text/css" rel="stylesheet" media="print" href="/Imports/xom_print.css"/><link type="text/css" title="medium" rel="stylesheet" href="/Imports/xom_web_medium.css"/><link type="text/css" title="large" rel="alternate stylesheet" href="/Imports/xom_web_large.css"/><link type="text/css" title="small" rel="alternate stylesheet" href="/Imports/xom_web_small.css"/>	
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
				<!-- Set 'expires' in http header, start --><% string cacheExpireDateStr="6/22/2016 11:46:36 AM";
        DateTime cacheExpireDate = Convert.ToDateTime(cacheExpireDateStr); 
        Response.AddHeader("Expires",cacheExpireDate.ToUniversalTime().ToString("ddd, dd MMM yyyy HH:mm:ss 'GMT'")); %><!-- end --></head><body class="article"><a href="#mainContent" class="skip">Skip to Main Content</a><div id="container"><!--#include virtual="Navigation/Header.aspx"--><div id="mainPanel" class="clrfix"><!--#include virtual="Navigation/products_left_navigation.aspx"--><div id="toolbar"><!--#include virtual="Services/Toolbox.aspx"--><div class="related"><div class="relatedimg150X68"><a href="products_mobil-shc.aspx"><img xmlns="" title="Mobil SHC" src="Images/150x68_sidecallouts_mobilshc.jpg" longdesc="" border="0" alt="Mobil SHC"><p xmlns=""><a title="" target="" href="products_mobil-shc.aspx" class=""></a> Mobil SHC&trade; Gear<br><a title="This link will open a new window." target="_new" href="http://www.mobil.com/France-French/Lubes/PDS/GLXXFRINDMOMobil_SHC_Gear_Series.aspx">Fiche technique produits (FTP)</a><br><a title="This link will open a new window." target="_new" href="http://www.msds.exxonmobil.com/psims/psims.aspx">Fiche de donn�es de s�curit� (FDS)</a></p></a></div></div><div class="related"><div class="relatedimg150X68"><a href="distributorlocator.aspx"><img xmlns="" title="Lubrifiants Synth�tiques Mobil SHC " src="Images/150x68_sidecallouts_where_to_buy.jpg" longdesc="" border="0" alt="Lubrifiants Synth�tiques Mobil SHC "><p xmlns=""><a title="" target="" href="distributorlocator.aspx" class=""></a>Points de vente<br><a title="" target="" href="distributorlocator.aspx" class="">Trouvez le distributeur le plus proche de chez vous</a></p></a></div></div><div class="related"><div class="relatedimg150X68"><a href="/ind/english/productselector.aspx"><img xmlns="" title="Productivit� " src="Images/150x68_sidecallouts_looble1.jpg" longdesc="" border="0" alt="Productivit� "><p xmlns=""><a title="This link will open a new window." target="_new" href="/ind/english/productselector.aspx"></a></p><p xmlns="">Guide de s�lection de produits Looble<sup>SM</sup>(EN)<br><a title="This link will open a new window." target="_new" href="/ind/english/productselector.aspx">Trouvez les lubrifiants les plus appropri�s � vos applications industrielles</a></p></a></div></div></div><div id="mainContent"><br/><div class="img150 left"><img xmlns="" title="Lubrifiant Mobil SHC Gear sur des engrenages" src="Images/article_150x150_mobilSHC_shcgears.jpg" longdesc="" border="0" alt="Lubrifiant Mobil SHC Gear sur des engrenages"></div><p xmlns=""><span style=" font-size: x-large;"><b>Mobil SHC&trade; Gear</b></span></p><p xmlns=""><span style=" font-size: large;"><b>Lubrifiants pour engrenages et r�ducteurs de nouvelle g�n�ration</b></span></p><p xmlns="">Am�liorez votre productivit� gr�ce aux lubrifiants Mobil SHC Gear, huiles enti�rement synth�tiques de technologie avanc�e pour engrenages et r�ducteurs industriels. Les huiles industrielles Mobil SHC Gear apportent aux �quipements une protection remarquable et &nbsp;conf�rent aux charges d&rsquo;huile une tr�s longue dur�e de vie en service, m�me dans des conditions de fonctionnement extr�mement s�v�res.</p><p xmlns=""><b>Jusqu&rsquo;� 3,6% d&rsquo;am�lioration du rendement �nerg�tique.*</b><br>
Les indices de viscosit� �lev�s et les faibles coefficients de traction des Mobil SHC Gear leur permettent de r�duire, de fa�on sensible, les consommations d&rsquo;�nergie dans de nombreux trains d&rsquo;engrenages. Par rapport � des huiles min�rales classiques, les Mobil SHC Gear peuvent apporter jusqu&rsquo;� 3,6% d&rsquo;�conomies d&rsquo;�nergie, selon des tests r�alis�s en laboratoire, valid�s comme �tant statistiquement repr�sentatifs.*</p><p xmlns="">La plupart des constructeurs reconnaissent les performances et les am�liorations apport�es par les huiles Mobil SHC Gear.</p><p xmlns=""><i><a title="" target="" href="contactus.aspx" class="">Pour plus de renseignements quant � la disponibilit� de ces lubrifiants dans diff�rentes viscosit�s, contactez votre interlocuteur local habituel.</a></i></p><p xmlns=""></p><p xmlns=""><a title="This link will open a new window." target="_new" href="/IND/French/Files/shc_gear_ss-fr.pdf">Mobil SHC&trade; Gear : fiche technique<img src="/Images/Icons/icon_pdf_whitespace.jpg" border="0" alt=""></a></p><p xmlns=""><a title="This link will open a new window." target="_new" href="/IND/English/files/mining-industry-machinery-efficiency-brochure.pdf">Brochure "Lubrifiants Mobil&trade; pour les mines et carri�res"<img src="/Images/Icons/icon_pdf_whitespace.jpg" border="0" alt=""></a> (EN)</p><p xmlns=""><a title="This link will open a new window." target="_new" href="http://www.youtube.com/watch?v=Wx1pHkpkf0A">D�couvrez comment les lubrifiants synth�tiques industriels Mobil SHC&trade; 600 et Mobil SHC&trade; Gear favorisent les �conomies d'�nergie</a> (EN)</p><div id="tabbed_table"><table style="width: 454px   " id="tblTabs" cellspacing="0px" cellpadding="0" border="0"><tr id="tabNav"><td style="height:1px; padding-bottom:-10px; " colspan="5"><div style="z-index:100; " id="divTabs"><ul><li onmouseover="if(this.className!='current')this.className='highlight';" onmouseout="if(this.className!='current')this.className=''" class="current" id="Avantages"><a href="#" onclick="javascript:showTab('Avantages');">Avantages</a></li><li onmouseover="if(this.className!='current')this.className='highlight'" onmouseout="if(this.className!='current')this.className=''" id="Specifications"><a href="#" onclick="javascript:showTab('Specifications');">Specifications</a></li><li onmouseover="if(this.className!='current')this.className='highlight'" onmouseout="if(this.className!='current')this.className=''" id="Caract�ristiques typiques"><a href="#" onclick="javascript:showTab('Caract�ristiques typiques');">Caract�ristiques typiques</a></li></ul></div></td></tr><tr id="trTabContent">
											<td valign="top" style="width: 10px; background-image:url('<%=GetDomain()%>/Images/Tabs/box_Left.png'); background-repeat: repeat-y; background-color: #ffffff;">
												<img class="leftUpperImg" src="<%=GetDomain()%>/Images/Tabs/box_LeftUpper.png" alt=""/>
											</td>									
										<td valign="top" class="midBorder" style="width: 435px; background-image:url('<%=GetDomain()%>/Images/Tabs/boxNoFade_Upper.png'); background-repeat: repeat-x; background-color: #ffffff;">
										<div style="width:434px; white-space:normal; padding-top:10px;display:block " class="divTabContent" id="Avantages Content"><p xmlns="">Les lubrifiants de la s�rie Mobil SHC Gear font partie de la ligne de produits Mobil SHC reconnus et appr�ci�s dans le monde pour leurs innovations et leurs excellentes performances. Ces produits synth�tiques, mis au point par nos chercheurs, symbolisent l'engagement continu et la volont� d'utiliser des technologies avanc�es afin de proposer des lubrifiants aux performances parfaitement �quilibr�es. L'un des facteurs cl�s du d�veloppement de la s�rie Mobil SHC Gear a �t� l&rsquo;�troite collaboration entre nos chercheurs et les constructeurs afin de r�pondre aux exigences des nouveaux engrenages industriels, telle la capacit� � r�sister au micropitting pour les engrenages � surface c�ment�e soumis � de hautes charges et des performances parfaitement �quilibr�es incluant une vaste plage de temp�rature de fonctionnement.</p><p xmlns="">Nos chercheurs ont con�u pour ces produits une combinaison brevet�e d'additifs qui r�siste � l'usure et prot�ge �galement contre le micropitting. Les produits Mobil SHC Gear fournissent une dur�e de vie de l&rsquo;huile exceptionnelle, un contr�le des d�p�ts et une r�sistance aux d�gradations thermiques et � l&rsquo;oxydation, ainsi qu'un meilleur �quilibre des performances. La combinaison d'huiles � base synth�tique dont le brevet est en instance, fournit des caract�ristiques exceptionnelles de fluidit� � basse temp�rature in�gal�es par les lubrifiants pour engrenages � base d'huile min�rale conventionnels. C'est un avantage cl� pour les applications isol�es soumises � de basses temp�ratures ambiantes. Les lubrifiants de la S�rie Mobil SHC Gear offrent les avantages potentiels suivants:</p><table xmlns="" width="100%" summary="" class="standard" cellspacing="0" border="0"><tr><th scope="col" class="standard">Caract�ristiques</th><th scope="col" class="standard">Avantages et b�n�fices potentiels</th></tr><tr><td class="standard">Tr�s bonne protection contre la fatigue des engrenages par micropitting, ainsi qu'une haute r�sistance � l'usure</td><td class="standard">Allongement de la dur�e de vie des engrenages et des paliers dans les r�ducteurs sous carters fonctionnant dans des conditions de charge, de vitesse et de temp�rature extr�mes</td></tr><tr><td class="tr_blue">&nbsp;</td><td class="tr_blue">R�duction des arr�ts non planifi�s : moins de maintenance, et plus particuli�rement pour les engrenages difficiles d'acc�s</td></tr><tr><td class="standard">Excellente r�sistance aux d�gradations � haute temp�rature</td><td class="standard">Allongement de la dur�e de vie de l'huile et des intervalles de vidange (r�duction de la consommation d'huile et des co�ts de maintenance associ�s)</td></tr><tr><td class="tr_blue">Faible coefficient de traction</td><td class="tr_blue">Aide � r�duire la consommation d'�nergie ainsi que la temp�rature de fonctionnement</td></tr><tr><td class="standard">Indice de viscosit� �lev� pour une variation r�duite de la viscosit� en fonction de la temp�rature</td><td class="standard">Utilisable � de basses et hautes temp�ratures : essentiel dans les applications isol�es sans syst�me de refroidissement ou de r�chauffement de l'huile</td></tr><tr><td class="tr_blue">Excellente propri�t� anti-rouille, anti-corrosion et tr�s bonne d�s�mulsion</td><td class="tr_blue">Aide � pr�venir les risques de panne � haute temp�rature ou en pr�sence d&rsquo;eau</td></tr><tr><td class="standard">&nbsp;</td><td class="standard">Excellente compatibilit� avec une diversit� de m�taux mous</td></tr><tr><td class="tr_blue">Excellente r�sistance au cisaillement</td><td class="tr_blue">Allongement de la dur�e de vie des paliers et des engrenages</td></tr><tr><td class="standard">R�sistance au colmatage de filtres, m�me en pr�sence d'eau</td><td class="standard">Moins de changement de filtres, ce qui peut aider � r�duire les co�ts de maintenance</td></tr><tr><td class="tr_blue">Excellente compatibilit� avec les joints</td><td class="tr_blue">Diminution des pollutions et des fuites d&rsquo;huile</td></tr><tr><td class="standard">Excellente compatibilit� avec les mat�riaux traditionnels des r�ducteurs ainsi qu&rsquo;avec les huiles r�ducteur � base min�rale</td><td class="standard">Transition ais�e � partir d'un grand nombre de produits min�raux</td></tr></table><p xmlns="">&nbsp;</p></div><div style="width:415px; white-space:normal; padding-top:10px;display:none " class="divTabContent" id="Specifications Content"><table xmlns="" width="100%" summary="" class="standard" cellspacing="0" border="0"><tr><th scope="col" class="standard"><p><b>S�rie Mobil SHC Gear</b></p></th><th scope="col" class="standard"><p><b>150</b></p></th><th scope="col" class="standard"><p><b>220</b></p></th><th scope="col" class="standard"><p><b>320</b></p></th><th scope="col" class="standard"><p><b>460</b></p></th><th scope="col" class="standard"><p><b>680</b></p></th><th scope="col" class="standard"><p><b>1000</b></p></th></tr><tr><td class="standard"><p>Viscosit�, ASTM D 445</p></td><td class="standard"><p>&nbsp;</p></td><td class="standard"><p>&nbsp;</p></td><td class="standard"><p>&nbsp;</p></td><td class="standard"><p>&nbsp;</p></td><td class="standard"><p>&nbsp;</p></td><td class="standard"><p>&nbsp;</p></td></tr><tr><td class="tr_blue"><p>cSt @ 40� C</p></td><td class="tr_blue"><p>150</p></td><td class="tr_blue"><p>220</p></td><td class="tr_blue"><p>320</p></td><td class="tr_blue"><p>460</p></td><td class="tr_blue"><p>680</p></td><td class="tr_blue"><p>1000</p></td></tr><tr><td class="standard"><p>cSt @ 100� C</p></td><td class="standard"><p>22.2</p></td><td class="standard"><p>30.4</p></td><td class="standard"><p>40.6</p></td><td class="standard"><p>54.1</p></td><td class="standard"><p>75.5</p></td><td class="standard"><p>99.4</p></td></tr><tr><td class="tr_blue"><p>Indice de viscosit�, ASTM D 2270</p></td><td class="tr_blue"><p>176</p></td><td class="tr_blue"><p>180</p></td><td class="tr_blue"><p>181</p></td><td class="tr_blue"><p>184</p></td><td class="tr_blue"><p>192</p></td><td class="tr_blue"><p>192</p></td></tr><tr><td class="standard"><p>Point d'�coulement, �C, ASTM D 97</p></td><td class="standard"><p>-54</p></td><td class="standard"><p>-45</p></td><td class="standard"><p>-48</p></td><td class="standard"><p>-48</p></td><td class="standard"><p>-42</p></td><td class="standard"><p>-33</p></td></tr><tr><td class="tr_blue"><p>Point �clair, �C, ASTM D 92</p></td><td class="tr_blue"><p>233</p></td><td class="tr_blue"><p>233</p></td><td class="tr_blue"><p>233</p></td><td class="tr_blue"><p>234</p></td><td class="tr_blue"><p>234</p></td><td class="tr_blue"><p>234</p></td></tr></table><p xmlns="">&nbsp;</p></div><div style="width:415px; white-space:normal; padding-top:10px;display:none " class="divTabContent" id="Caract�ristiques typiques Content"><p xmlns="">Remarques: les produits de la s�rie Mobil SHC Gear sont compatibles avec les huiles � base min�rale, mais tout m�lange peut nuire � leurs performances. Avant tout changement pour l'un des produits de la s�rie Mobil SHC Gear dans un syst�me, il est recommand� de nettoyer et vidanger ce dernier afin d&rsquo;obtenir les meilleures performances.<br>
Les huiles d'engrenages industriels synth�tiques exceptionnellement performantes de la s�rie Mobil SHC Gear, sont con�ues pour fournir une protection optimum de l'�quipement et une dur�e de vie allong�e de l'huile, m�me dans des conditions extr�mes. Elles sont sp�cialement pr�conis�es dans les applications sujettes au micropitting (engrenages fortement charg�s avec dentures c�ment�es, tremp�es, rectifi�es), aux basses ou hautes temp�ratures. Les applications typiques incluent :</p><p xmlns="">&bull; Engrenages charg�s de derni�re g�n�ration dans les industries du papier, de l'acier, les industries textiles, du bois et les cimenteries o� les exigences en ce qui a trait � la protection des �quipements et de dur�e de vie sont importantes<br>
&bull; Boites de vitesse d&rsquo;extrudeuses plastique</p></div></td>
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
										</tr></table></div><div class="imgns left"><img xmlns="" title="Energy Efficiency" src="Images/95x93_energy_efficiency.jpg" longdesc="" border="0" alt="Energy Efficiency"></div><p xmlns=""><span style=" font-size: x-small;">REMARQUE: Les Mobil SHC Gear sont destin�es, � terme, � remplacer d�finitivement la gamme Mobilgear SHC&trade; &nbsp;actuellement sur le march�.]&#8232;* Les mesures d&rsquo;efficacit� �nerg�tique se rapportent uniquement aux performances du fluide, compar�es � celles des huiles classiques de r�f�rence, ceci pour le m�me grade de viscosit� et pour des applications identiques, sur engrenages. La technologie utilis�e a permis d&rsquo;apporter jusqu&rsquo;� 3,6% d&rsquo;am�lioration du rendement �nerg�tique, par rapport au fluide de r�f�rence, sur des applications de type r�ducteur roue et vis, ceci dans des conditions de fonctionnement d�finies et contr�l�es. L&rsquo;am�lioration du rendement est susceptible de varier en fonction des conditions de fonctionnement et de l&rsquo;application.&nbsp;</span></p></div></div><!--#include virtual="Navigation/Footer.aspx"--></div><script type="text/javascript">	
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