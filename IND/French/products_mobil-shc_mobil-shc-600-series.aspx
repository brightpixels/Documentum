
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
				<html xmlns="http://www.w3.org/1999/xhtml" xmlns:xalan-nodeset="org.apache.xalan.xslt.extensions.Nodeset" xmlns:java="http://xml.apache.org/xslt/java" xmlns:fo="http://www.w3.org/1999/XSL/Format" xml:lang="fr" lang="fr"><head><title>Gamme Mobil SHC&trade; 600 : Huiles d&rsquo;engrenages et de circulation | Mobil&trade; Industrial Lubricants</title><meta http-equiv="X-UA-Compatible" content="IE=edge"/><meta name="keywords" content="Mobil SHC 600, lubrifiants synth�tiques, lubrifiants industriels, huiles pour engrenages, huiles SHC, huiles Mobil"/><meta name="description" content="Les lubrifiants synth�tiques industriels de haute technologie Mobil SHC&trade; 600 offrent des performances exceptionnelles dans les conditions de service les plus difficiles pour r�pondre aux exigences de vos �quipements."/><meta name="date" content="10/2013"/><meta name="language" content="fr"/><meta http-equiv="Content-Language" content="fr"/><link type="text/css" rel="stylesheet" media="all" href="/Imports/mobil_ind.css"/><link type="text/css" rel="stylesheet" media="print" href="/Imports/xom_print.css"/><link type="text/css" title="medium" rel="stylesheet" href="/Imports/xom_web_medium.css"/><link type="text/css" title="large" rel="alternate stylesheet" href="/Imports/xom_web_large.css"/><link type="text/css" title="small" rel="alternate stylesheet" href="/Imports/xom_web_small.css"/>	
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
				<!-- Set 'expires' in http header, start --><% string cacheExpireDateStr="5/24/2016 8:22:27 AM";
        DateTime cacheExpireDate = Convert.ToDateTime(cacheExpireDateStr); 
        Response.AddHeader("Expires",cacheExpireDate.ToUniversalTime().ToString("ddd, dd MMM yyyy HH:mm:ss 'GMT'")); %><!-- end --></head><body class="article"><a href="#mainContent" class="skip">Skip to Main Content</a><div id="container"><!--#include virtual="Navigation/Header.aspx"--><div id="mainPanel" class="clrfix"><!--#include virtual="Navigation/products_left_navigation.aspx"--><div id="toolbar"><!--#include virtual="Services/Toolbox.aspx"--><div class="related"><div class="relatedimg150X68"><a href="products_mobil-shc.aspx"><img xmlns="" title="Mobil SHC" src="Images/150x68_sidecallouts_mobilshc.jpg" longdesc="" border="0" alt="Mobil SHC"><p xmlns=""><a title="" target="" href="products_mobil-shc.aspx" class=""></a> Mobil SHC&trade; 600<br><a title="This link will open a new window." target="_new" href="http://www.mobil.com/France-French/Lubes/PDS/GLXXFRINDMOMobil_SHC_600_Series.aspx">Fiche technique produits (FTP)</a><br><a title="This link will open a new window." target="_new" href="http://www.msds.exxonmobil.com/psims/psims.aspx">Fiche de donn�es de s�curit� (FDS)</a></p></a></div></div><div class="related"><div class="relatedimg150X68"><a href="distributorlocator.aspx"><img xmlns="" title="Lubrifiants Synth�tiques Mobil SHC " src="Images/150x68_sidecallouts_where_to_buy.jpg" longdesc="" border="0" alt="Lubrifiants Synth�tiques Mobil SHC "><p xmlns=""><a title="" target="" href="distributorlocator.aspx" class=""></a>Points de vente<br><a title="" target="" href="distributorlocator.aspx" class="">Trouvez le distributeur le plus proche de chez vous</a></p></a></div></div><div class="related"><div class="relatedimg150X68"><a href="/ind/english/productselector.aspx"><img xmlns="" title="Productivit� " src="Images/150x68_sidecallouts_looble1.jpg" longdesc="" border="0" alt="Productivit� "><p xmlns=""><a title="This link will open a new window." target="_new" href="/ind/english/productselector.aspx"></a></p><p xmlns="">Guide de s�lection de produits Looble<sup>SM</sup>(EN)<br><a title="This link will open a new window." target="_new" href="/ind/english/productselector.aspx">Trouvez les lubrifiants les plus appropri�s � vos applications industrielles</a></p></a></div></div></div><div id="mainContent"><br/><div class="img150 left"><img xmlns="" title="Lubrifiant Mobil SHC 600 pour la protection des engrenages " src="Images/article_150x150_gears.jpg" longdesc="" border="0" alt="Lubrifiant Mobil SHC 600 pour la protection des engrenages "></div><p xmlns=""><span style=" font-size: x-large;"><b>Gamme Mobil SHC&trade; 600</b></span></p><p xmlns=""><b>Huiles circulation et engrenages de nouvelle g�n�ration</b><br>
Qu&rsquo;ils subissent de fortes charges ou qu&rsquo;ils soient soumis � des variations de temp�ratures importantes, les r�ducteurs industriels fonctionnent dans des conditions tr�s difficiles.<br>
C&rsquo;est la raison pour laquelle les lubrifiants de technologie avanc�e Mobil SHC 600 sont con�us pour offrir des performances remarquables m�mes dans ces conditions pour r�pondre aux exigences de vos �quipements.</p><p xmlns=""><b>Jusqu&rsquo;� 3,6% d&rsquo;�conomie d&rsquo;�nergie*</b><br>
Dans les r�ducteurs et les syst�mes de lubrification par circulation, le faible coefficient de traction associ� � l&rsquo;indice de viscosit� �lev� des huiles Mobil SHC 600 &nbsp;favorise la r�duction de la consommation d&rsquo;�nergie et des co�ts op�rationnels par rapport aux huiles min�rales. Cette consommation r�duite peut entrainer la r�duction globale des �missions de CO2, ce qui vous permet de satisfaire aux exigences en mati�re d&rsquo;�missions.</p><p xmlns="">Leur emploi est d�j� recommand� dans plus de 1 800 applications et par plus de 500 grands constructeurs d&rsquo;�quipements industriels. Les huiles de la gamme Mobil SHC 600 sont reconnues par les plus grands constructeurs, qui les consid�rent comme �tant des �l�ments cl� susceptibles de contribuer � l&rsquo;am�lioration du fonctionnement des machines. Par ailleurs, elles conservent longtemps en service un niveau global de performances �lev� et stable.<br>
&nbsp;</p><p xmlns=""><a title="This link will open a new window." target="_new" href="/IND/English/files/SHC_600.pdf">Mobil SHC&trade; 600 : fiche argumentaire<img src="/Images/Icons/icon_pdf_whitespace.jpg" border="0" alt=""></a> (EN)</p><p xmlns=""><a title="This link will open a new window." target="_new" href="http://www.youtube.com/watch?v=Wx1pHkpkf0A">D�couvrez comment les lubrifiants synth�tiques industriels Mobil SHC&trade; 600 et Mobil SHC&trade; Gear favorisent les �conomies d'�nergie</a> (EN)</p><p xmlns="">&nbsp;</p><div id="tabbed_table"><table style="width: 454px   " id="tblTabs" cellspacing="0px" cellpadding="0" border="0"><tr id="tabNav"><td style="height:1px; padding-bottom:-10px; " colspan="5"><div style="z-index:100; " id="divTabs"><ul><li onmouseover="if(this.className!='current')this.className='highlight';" onmouseout="if(this.className!='current')this.className=''" class="current" id="Caract�ristiques et avantages"><a href="#" onclick="javascript:showTab('Caract�ristiques et avantages');">Caract�ristiques et avantages</a></li><li onmouseover="if(this.className!='current')this.className='highlight'" onmouseout="if(this.className!='current')this.className=''" id="Sp�cifications"><a href="#" onclick="javascript:showTab('Sp�cifications');">Sp�cifications</a></li><li onmouseover="if(this.className!='current')this.className='highlight'" onmouseout="if(this.className!='current')this.className=''" id="Applications"><a href="#" onclick="javascript:showTab('Applications');">Applications</a></li></ul></div></td></tr><tr id="trTabContent">
											<td valign="top" style="width: 10px; background-image:url('<%=GetDomain()%>/Images/Tabs/box_Left.png'); background-repeat: repeat-y; background-color: #ffffff;">
												<img class="leftUpperImg" src="<%=GetDomain()%>/Images/Tabs/box_LeftUpper.png" alt=""/>
											</td>									
										<td valign="top" class="midBorder" style="width: 435px; background-image:url('<%=GetDomain()%>/Images/Tabs/boxNoFade_Upper.png'); background-repeat: repeat-x; background-color: #ffffff;">
										<div style="width:434px; white-space:normal; padding-top:10px;display:block " class="divTabContent" id="Caract�ristiques et avantages Content"><p xmlns="">La ligne de lubrifiants Mobil SHC est reconnue et appr�ci�e partout dans le monde pour son caract�re innovant et ses remarquables performances. Ces produits synth�tiques, mis au point par nos chercheurs, symbolisent l&rsquo;engagement continu et la volont� d&rsquo;utiliser des technologies avanc�es afin de proposer des lubrifiants aux performances parfaitement �quilibr�es. L&rsquo;un des facteurs cl�s du d�veloppement de la s�rie Mobil SHC 600 a �t� l&rsquo;�troite collaboration entre nos chercheurs et les constructeurs de mat�riel afin d&rsquo;assurer une performance exceptionnelle de nos lubrifiants dans la conception d&rsquo;�quipements industriels en perp�tuelle �volution.</p><p xmlns="">Notre travail avec les constructeurs a permis de confirmer les r�sultats de nos tests en laboratoire et sur bancs d&rsquo;essai qui indiquaient une performance exceptionnelle des lubrifiants de la s�rie Mobil SHC 600. Un des avantages, et non des moindres, que le travail avec les fabricants a permis de r�v�ler (*), est le potentiel pour un rendement �nerg�tique jusqu&rsquo;� 3,6% par rapport aux huiles min�rales. Cet avantage devient particuli�rement �vident dans les �quipements soumis � de grandes pertes m�caniques, tels que les engrenages � vis sans fin.</p><p xmlns="">Pour d�velopper la toute derni�re technologie Mobil SHC des huiles de la s�rie Mobil SHC 600, nos chercheurs, lors de la formulation du produit, ont s�lectionn� des huiles de base de choix en raison de leur potentiel exceptionnel de r�sistance aux contraintes thermiques et � l'oxydation, combin�es � un syst�me d&rsquo;additifs �quilibr�s pour offrir une dur�e de vie exceptionnelle de l&rsquo;huile, un contr�le des d�p�ts et une r�sistance � la d�gradation thermique et � l&rsquo;oxydation. Cette approche de formulation offre une fluidit� � basse temp�rature, d�passant celle de nombreux produits min�raux ; c&rsquo;est �galement un avantage cl� pour les applications � basses temp�ratures ambiantes. Les huiles de la s�rie Mobil SHC 600 offrent les caract�ristiques et avantages potentiels suivants:</p><table xmlns="" width="100%" summary="" class="standard" cellspacing="0" border="0"><tr><th scope="col" class="standard">Caract�ristiques</th><th scope="col" class="standard">Caract�ristiques et avantages</th></tr><tr><td class="standard">Excellente r�sistance thermique et � l'oxydation � hautes temp�ratures</td><td class="standard"><p>Aide � prolonger la capacit� d&rsquo;exploitation des �quipements � hautes temp�ratures</p><p>La longue dur�e de vie de l&rsquo;huile aide � r�duire les co�ts de maintenance</p><p>Aide � minimiser les d�p�ts pour permettre un fonctionnement sans probl�me et une longue dur�e de vie des filtres</p></td></tr><tr><td class="tr_blue">Indice de viscosit� �lev�</td><td class="tr_blue"><p>Conserve la viscosit� et l'�paisseur du film � hautes temp�ratures</p><p>Performance exceptionnelle � basses temp�ratures, facilitant les phases de d�marrage</p><p>&nbsp;</p></td></tr><tr><td class="standard">Faible coefficient de traction</td><td class="standard"><p>Aide � r�duire la friction et � am�liorer le rendement dans les m�canismes comme les engrenages et r�ducteurs industriels, avec un potentiel de r�duction de la consommation d&rsquo;�nergie et des temp�ratures d&rsquo;exploitation plus faibles en r�gime permanent</p><p>Aide � r�duire les effets de micro-glissement dans les roulements � contact pour une dur�e de vie potentiellement plus longue des �l�ments roulants</p></td></tr><tr><td class="tr_blue">Capacit� de charge �lev�e</td><td class="tr_blue">Aide � prot�ger les �quipements et � prolonger leur dur�e de vie ; aide � r�duire les arr�ts non planifi�s et prolonge les intervalles entre les vidanges</td></tr><tr><td class="standard">Syst�me d&rsquo;additifs �quilibr�s</td><td class="standard">Offre une excellente performance en termes de pr�vention contre la rouille et la corrosion, de s�paration de l&rsquo;eau, de contr�le du moussage et de d�sa�ration, pour assurer une exploitation sans probl�me dans une vaste gamme d&rsquo;applications industrielles et une r�duction des co�ts d&rsquo;exploitation</td></tr></table><p xmlns="">(*) L&rsquo;efficacit� �nerg�tique ne se rapporte qu&rsquo;� la performance de la Mobil SHC 600 par rapport aux huiles de r�f�rence (min�rales) conventionnelles du m�me grade de viscosit� dans les applications de circulation et d&rsquo;engrenages. La technologie utilis�e a permis d&rsquo;am�liorer le rendement jusqu&rsquo;� 3,6% par rapport � l&rsquo;huile de r�f�rence test�e dans un engrenage � vis sans fin dans des conditions contr�l�es. L&rsquo;am�lioration de l&rsquo;efficacit� variera selon les conditions d&rsquo;exploitation et selon l&rsquo;application.</p></div><div style="width:415px; white-space:normal; padding-top:10px;display:none " class="divTabContent" id="Sp�cifications Content"><table xmlns="" width="100%" summary="" class="standard" cellspacing="0" border="0"><tr><th scope="col" class="standard"><p><b>La s�rie Mobil SHC 600 Am�lior�e</b></p></th><th scope="col" class="standard"><p><b>624</b></p></th><th scope="col" class="standard"><p><b>625</b></p></th><th scope="col" class="standard"><p><b>626</b></p></th><th scope="col" class="standard"><p><b>627</b></p></th><th scope="col" class="standard"><p><b>629</b></p></th><th scope="col" class="standard"><p><b>630</b></p></th><th scope="col" class="standard"><p><b>632</b></p></th><th scope="col" class="standard"><p><b>634</b></p></th><th scope="col" class="standard"><p><b>636</b></p></th><th scope="col" class="standard"><p><b>639</b></p></th></tr><tr><td class="standard"><p>Viscosit�, ASTM D 445</p></td><td class="standard"><p>&nbsp;</p></td><td class="standard"><p>&nbsp;</p></td><td class="standard"><p>&nbsp;</p></td><td class="standard"><p>&nbsp;</p></td><td class="standard"><p>&nbsp;</p></td><td class="standard"><p>&nbsp;</p></td><td class="standard"><p>&nbsp;</p></td><td class="standard"><p>&nbsp;</p></td><td class="standard"><p>&nbsp;</p></td><td class="standard"><p>&nbsp;</p></td></tr><tr><td class="tr_blue"><p>cSt @ 40� C</p></td><td class="tr_blue"><p>32</p></td><td class="tr_blue"><p>46</p></td><td class="tr_blue"><p>68</p></td><td class="tr_blue"><p>100</p></td><td class="tr_blue"><p>150</p></td><td class="tr_blue"><p>220</p></td><td class="tr_blue"><p>320</p></td><td class="tr_blue"><p>460</p></td><td class="tr_blue"><p>680</p></td><td class="tr_blue"><p>1000</p></td></tr><tr><td class="standard"><p>cSt @ 100� C</p></td><td class="standard"><p>6,3</p></td><td class="standard"><p>8,5</p></td><td class="standard"><p>11,6</p></td><td class="standard"><p>15,3</p></td><td class="standard"><p>21,1</p></td><td class="standard"><p>28,5</p></td><td class="standard"><p>38,5</p></td><td class="standard"><p>50,7</p></td><td class="standard"><p>69,9</p></td><td class="standard"><p>98,8</p></td></tr><tr><td class="tr_blue"><p>Indice de viscosit�, ASTM D 2270</p></td><td class="tr_blue"><p>148</p></td><td class="tr_blue"><p>161</p></td><td class="tr_blue"><p>165</p></td><td class="tr_blue"><p>162</p></td><td class="tr_blue"><p>166</p></td><td class="tr_blue"><p>169</p></td><td class="tr_blue"><p>172</p></td><td class="tr_blue"><p>174</p></td><td class="tr_blue"><p>181</p></td><td class="tr_blue"><p>184</p></td></tr><tr><td class="standard"><p>Point d&rsquo;�coulement, �C, ASTM D5950</p></td><td class="standard"><p>-57</p></td><td class="standard"><p>-54</p></td><td class="standard"><p>-51</p></td><td class="standard"><p>-45</p></td><td class="standard"><p>-42</p></td><td class="standard"><p>-42</p></td><td class="standard"><p>-42</p></td><td class="standard"><p>-39</p></td><td class="standard"><p>-39</p></td><td class="standard"><p>-33</p></td></tr><tr><td class="tr_blue"><p>Point �clair, �C, ASTM D 92</p></td><td class="tr_blue"><p>236</p></td><td class="tr_blue"><p>225</p></td><td class="tr_blue"><p>225</p></td><td class="tr_blue"><p>235</p></td><td class="tr_blue"><p>220</p></td><td class="tr_blue"><p>220</p></td><td class="tr_blue"><p>225</p></td><td class="tr_blue"><p>228</p></td><td class="tr_blue"><p>225</p></td><td class="tr_blue"><p>222</p></td></tr></table><p xmlns="">&nbsp;</p></div><div style="width:415px; white-space:normal; padding-top:10px;display:none " class="divTabContent" id="Applications Content"><p xmlns="">Bien que les lubrifiants de la s�rie Mobil SHC 600 soient g�n�ralement compatibles avec des produits � base d&rsquo;huiles min�rales, l&rsquo;appoint d&rsquo;huile peut r�duire leur performance. En cons�quence, avant d&rsquo;utiliser un produit de la s�rie Mobil SHC 600 dans un syst�me, il est recommand� de soigneusement nettoyer ce syst�me et de le purger pour pouvoir b�n�ficier au maximum des avantages de performance. Les huiles de la s�rie Mobil SHC 600 sont compatibles avec la plupart des joints de type NBR, FKM et la majorit� des autres mat�riaux �lastom�res. Il existe une variation importante dans la composition des �lastom�res et afin d&rsquo;obtenir les meilleurs r�sultats possibles, veuillez consulter le fabricant de l&rsquo;�quipement, le fabricant des joints ou votre repr�sentant ExxonMobil local pour vous assurer de la compatibilit�.</p><p xmlns="">Il est recommand� d&rsquo;utiliser les lubrifiants de la s�rie Mobil SHC 600 dans une vaste gamme d&rsquo;applications avec roulements et engrenages o� les temp�ratures d&rsquo;utilisation peuvent �tre �lev�es ou basses et lorsque la temp�rature d&rsquo;exploitation est telle que la dur�e de vie d&rsquo;un lubrifiant conventionnel min�ral n&rsquo;est pas satisfaisante, ou lorsque la recherche d&rsquo;un meilleur rendement s&rsquo;av�re n�cessaire. Ces lubrifiants apportent une solution dans les applications avec des co�ts de maintenance particuli�rement �lev�s, tels que le remplacement des pi�ces de rechange, le nettoyage et la vidange des machines. Chaque application exige la s�lection du grade de viscosit� appropri� et comprennent notamment:</p><ul xmlns=""><li>Engrenages lubrifi�s � vie, particuli�rement les engrenages � vis sans fin avec un ratio important et un faible rendement</li><li>Les r�ducteurs peu accessibles, sur lesquels il est difficile de faire les vidanges</li><li>Applications � basses temp�ratures, comme les remont�es m�caniques o� les vidanges en saison peuvent �tre �vit�es</li><li>Roulements et paliers � rouleaux avec des temp�ratures �lev�es</li><li>Calendres dans l&rsquo;industrie plastique</li><li>Centrifuges en r�gime s�v�re, y compris les centrifuges marines</li><li>Entra�nements des locomotives de chemins de fer</li><li>Les Mobil SHC 626, 627, 629 et 630 peuvent �tre utilis�es dans les compresseurs � vis � bain d'huile qui compriment du gaz naturel, pour la collecte de gaz, CO2 et autres gaz de proc�d� utilis�s dans l&rsquo;industrie du gaz naturel.</li><li>Les Mobil SHC 629, 630, 632, 634, 636 et 639 sont homologu�es par Siemens AG pour une utilisation dans les r�ducteurs Flender<br></li></ul><p xmlns="">Veuillez noter que les produits de la s�rie Mobil SHC 600 ne sont pas destin�s � un usage dans l&rsquo;aviation, et ne sont ni con�us ni recommand�s pour la lubrification de composants a�ronautiques.</p></div></td>
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
										</tr></table></div><div class="imgns left"><img xmlns="" title="energy efficiency" src="Images/95x93_energy_efficiency.jpg" longdesc="" border="0" alt="energy efficiency"></div><p xmlns="">&nbsp;&nbsp;<span style=" font-size: 8px;">* � l'efficacit� �nerg�tique � est une marque commerciale d�pos�e appartenant � Exxon Mobil Corporation ou � l&rsquo;une de ses filiales. Pour des raisons de commodit� et de simplicit� sur ce document, les termes ExxonMobil, Mobil&trade; ainsi que d&rsquo;autres termes tels que � corporation, soci�t�, notre, nous, son, sa � sont parfois utilis�s pour d�signer des filiales ou des groupes affili�s de Exxon Mobil Corporation, dont Esso S.A.F. Le contenu des pr�sentes pages n&rsquo;a pas pour objet de porter atteinte au principe de s�paration existant entre des entit�s juridiques locales distinctes. Les mesures d&rsquo;efficacit� �nerg�tique se rapportent uniquement aux performances du fluide, compar�es � celles des huiles classiques de r�f�rence, ceci pour le m�me grade de viscosit� et pour des applications sur engrenages. La technologie utilis�e a permis d&rsquo;apporter jusqu&rsquo;� 3,6% d&rsquo;am�lioration du rendement �nerg�tique, par rapport au fluide de r�f�rence, durant un test effectu� sur des applications engrenages et circulation, dans des conditions de fonctionnement d�finies et contr�l�es. L'am�lioration du rendement �nerg�tique est susceptible de varier en fonction des conditions de service et des applications.</span></p></div></div><!--#include virtual="Navigation/Footer.aspx"--></div><script type="text/javascript">	
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