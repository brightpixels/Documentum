
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
				<html xmlns="http://www.w3.org/1999/xhtml" xmlns:xalan-nodeset="org.apache.xalan.xslt.extensions.Nodeset" xmlns:java="http://xml.apache.org/xslt/java" xmlns:fo="http://www.w3.org/1999/XSL/Format" xml:lang="fr" lang="fr"><head><title>Graisses industrielles : Mobilith SHC&trade; Grease | Mobil&trade; Industrial Lubricants</title><meta http-equiv="X-UA-Compatible" content="IE=edge"/><meta name="keywords" content="Graisse Mobil, Gamme Mobilith SHC, Graisse Mobilith SHC, graisses industrielles, Mobilith SHC, lubrifiants industriels"/><meta name="description" content="Les Mobilith SHC&trade; sont des graisses multi-usage hautes performances destin�es � �tre utilis�es dans un grand nombre d&rsquo;applications � des temp�ratures extr�mes."/><meta name="date" content="10/2013"/><meta name="language" content="fr"/><meta http-equiv="Content-Language" content="fr"/><link type="text/css" rel="stylesheet" media="all" href="/Imports/mobil_ind.css"/><link type="text/css" rel="stylesheet" media="print" href="/Imports/xom_print.css"/><link type="text/css" title="medium" rel="stylesheet" href="/Imports/xom_web_medium.css"/><link type="text/css" title="large" rel="alternate stylesheet" href="/Imports/xom_web_large.css"/><link type="text/css" title="small" rel="alternate stylesheet" href="/Imports/xom_web_small.css"/>	
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
				<!-- Set 'expires' in http header, start --><% string cacheExpireDateStr="10/26/2016 3:04:21 AM";
        DateTime cacheExpireDate = Convert.ToDateTime(cacheExpireDateStr); 
        Response.AddHeader("Expires",cacheExpireDate.ToUniversalTime().ToString("ddd, dd MMM yyyy HH:mm:ss 'GMT'")); %><!-- end --></head><body class="article"><a href="#mainContent" class="skip">Skip to Main Content</a><div id="container"><!--#include virtual="Navigation/Header.aspx"--><div id="mainPanel" class="clrfix"><!--#include virtual="Navigation/products_left_navigation.aspx"--><div id="toolbar"><!--#include virtual="Services/Toolbox.aspx"--><div class="related"><div class="relatedimg150X68"><a href="products_mobil-shc.aspx"><img xmlns="" title="Mobil SHC" src="Images/150x68_sidecallouts_mobilshc.jpg" longdesc="" border="0" alt="Mobil SHC"><p xmlns=""><a title="" target="" href="products_mobil-shc.aspx" class=""></a> Mobilith SHC&trade;<br><a title="This link will open a new window." target="_new" href="http://www.mobil.com/France-French/Lubes/PDS/GLXXFRGRSMOMobilith_SHC.aspx">Fiche technique produits (FTP)</a><br><a title="This link will open a new window." target="_new" href="http://www.msds.exxonmobil.com/psims/psims.aspx">Fiche de donn�es de s�curit� (FDS)</a></p></a></div></div><div class="related"><div class="relatedimg150X68"><a href="distributorlocator.aspx"><img xmlns="" title="Lubrifiants Synth�tiques Mobil SHC " src="Images/150x68_sidecallouts_where_to_buy.jpg" longdesc="" border="0" alt="Lubrifiants Synth�tiques Mobil SHC "><p xmlns=""><a title="" target="" href="distributorlocator.aspx" class=""></a>Points de vente<br><a title="" target="" href="distributorlocator.aspx" class="">Trouvez le distributeur le plus proche de chez vous</a></p></a></div></div><div class="related"><div class="relatedimg150X68"><a href="/ind/english/productselector.aspx"><img xmlns="" title="Productivit� " src="Images/150x68_sidecallouts_looble1.jpg" longdesc="" border="0" alt="Productivit� "><p xmlns=""><a title="This link will open a new window." target="_new" href="/ind/english/productselector.aspx"></a></p><p xmlns="">Guide de s�lection de produits Looble<sup>SM</sup>(EN)<br><a title="This link will open a new window." target="_new" href="/ind/english/productselector.aspx">Trouvez les lubrifiants les plus appropri�s � vos applications industrielles</a></p></a></div></div></div><div id="mainContent"><br/><div class="img150 left"><img xmlns="" title="Gamme Mobilith SHC Greases &ndash; Lubrifiants pour paliers d&rsquo;engrenage" src="Images/article_150x150_mobil-shc-grease-series.jpg" longdesc="" border="0" alt="Gamme Mobilith SHC Greases &ndash; Lubrifiants pour paliers d&rsquo;engrenage"></div><p xmlns=""><span style=" font-size: x-large;"><b>S�rie Mobilith SHC&trade; Grease</b></span></p><p xmlns=""><span style=" font-size: large;"><b>Graisses multi-usages de tr�s hautes performances</b></span></p><p xmlns="">Les graisses Mobilith SHC sont des produits destin�s � une grande vari�t� d&rsquo;applications fonctionnant dans un environnement de temp�rature extr�mes. Elles sont utilis�es dans de nombreuses industries � travers le monde gr�ce � leur r�putation forg�e sur leur qualit�, leur fiabilit� et leur polyvalence remarquables.</p><p xmlns=""><b>Large gamme de grades</b><br>
Les graisses Mobilith SHC sont disponibles dans sept grades, allant des huiles de base &nbsp;dont la viscosit� est comprise entre ISO VG 100 � 1500 et des graisses NLGI grades 00 � 2. Cette large plage offre des options pour une excellente protection contre les faibles vitesses, &nbsp;des paliers lourdement charg�s ainsi que des performances optimales � basse temp�rature.</p><p xmlns=""><a title="This link will open a new window." target="_new" href="/ind/english/files/multi-purpose-grease-mobilith-shc-series.pdf">Mobilith SHC&trade; : fiche argumentaire<img src="/Images/Icons/icon_pdf_whitespace.jpg" border="0" alt=""></a> (EN)<br></p><div id="tabbed_table"><table style="width: 454px   " id="tblTabs" cellspacing="0px" cellpadding="0" border="0"><tr id="tabNav"><td style="height:1px; padding-bottom:-10px; " colspan="5"><div style="z-index:100; " id="divTabs"><ul><li onmouseover="if(this.className!='current')this.className='highlight';" onmouseout="if(this.className!='current')this.className=''" class="current" id="Avantages"><a href="#" onclick="javascript:showTab('Avantages');">Avantages</a></li><li onmouseover="if(this.className!='current')this.className='highlight'" onmouseout="if(this.className!='current')this.className=''" id="Specifications"><a href="#" onclick="javascript:showTab('Specifications');">Specifications</a></li><li onmouseover="if(this.className!='current')this.className='highlight'" onmouseout="if(this.className!='current')this.className=''" id="Applications"><a href="#" onclick="javascript:showTab('Applications');">Applications</a></li></ul></div></td></tr><tr id="trTabContent">
											<td valign="top" style="width: 10px; background-image:url('<%=GetDomain()%>/Images/Tabs/box_Left.png'); background-repeat: repeat-y; background-color: #ffffff;">
												<img class="leftUpperImg" src="<%=GetDomain()%>/Images/Tabs/box_LeftUpper.png" alt=""/>
											</td>									
										<td valign="top" class="midBorder" style="width: 435px; background-image:url('<%=GetDomain()%>/Images/Tabs/boxNoFade_Upper.png'); background-repeat: repeat-x; background-color: #ffffff;">
										<div style="width:434px; white-space:normal; padding-top:10px;display:block " class="divTabContent" id="Avantages Content"><p xmlns="">Les graisses et huiles Mobil SHC sont reconnues et appr�ci�es partout dans le monde pour leur caract�re innovant et leur performance exceptionnelle. Les Mobilith SHC symbolisent l&rsquo;engagement continu d&rsquo;ExxonMobil envers l&rsquo;utilisation de la technologie de pointe pour offrir des produits exceptionnels. Un facteur cl� dans l&rsquo;�laboration des Mobilith SHC est l&rsquo;�troit contact entre nos chercheurs et des sp�cialistes d&rsquo;application chez des �quipementiers cl�s afin d&rsquo;assurer que nos produits offrent une performance exceptionnelle pour les �quipements industriels en constante �volution.</p><p xmlns="">Notre travail en collaboration avec les �quipementiers nous a aid� � confirmer les r�sultats de nos propres tests en laboratoire r�v�lant la performance exceptionnelle des lubrifiants Mobilith SHC. Ces avantages comprennent notamment une plus longue dur�e de vie de la graisse, une protection am�lior�e et une plus longue dur�e de vie des paliers, une grande plage de temp�ratures pour les applications et le potentiel d&rsquo;am�lioration de l&rsquo;efficacit� m�canique et d&rsquo;�conomies d&rsquo;�nergie.</p><p xmlns="">Pour combattre la grande exposition thermique de l&rsquo;huile, les chercheurs ayant formul� le produit ont choisi des huiles de base de synth�se exclusives pour les huiles Mobilith SHC en raison de leur potentiel exceptionnel de stabilit� thermique et de r�sistance � l&rsquo;oxydation. Nos chercheurs ont �labor� un �paississant au lithium complexe � la pointe de la technologie et utilis� des additifs sp�cifiques pour am�liorer la performance de chaque grade des lubrifiants de la gamme Mobilith SHC. Les graisses Mobilith SHC pr�sentent les caract�ristiques et avantages suivants :</p><table xmlns="" width="100%" summary="" class="standard" cellspacing="0" border="0"><tr><th scope="col" class="standard">Caract�ristiques</th><th scope="col" class="standard">Avantages et b�n�fices potentiels</th></tr><tr><td class="standard">Remarquable performance � hautes et basses temp�ratures</td><td class="standard">Grande plage de temp�ratures d&rsquo;application, excellente protection � haute temp�rature et faible couple, d�marrage ais� � basses temp�ratures</td></tr><tr><td class="tr_blue">Tr�s haute protection contre l'usure, la rouille et la corrosion</td><td class="tr_blue">R�duction des temps de panne et des co�ts de maintenance gr�ce � un mat�riel parfaitement prot�g� contre l'usure, la rouille et la corrosion</td></tr><tr><td class="standard">Tr�s bonne stabilit� thermique et r�sistance � l'oxydation</td><td class="standard">Plus longue dur�e de vie en service et allongement des p�riodicit�s de graissage ; plus longue dur�e de vie des paliers</td></tr><tr><td class="tr_blue">Faible coefficient de traction</td><td class="tr_blue">Am�lioration de la dur�e de vie du mat�riel et r�duction de la consommation d'�nergie</td></tr><tr><td class="standard">Grades de viscosit� �lev�s et bas</td><td class="standard">Options pour une remarquable protection des paliers � faible vitesse fortement charg�s, et options pour une bonne performance � basse temp�rature</td></tr><tr><td class="tr_blue">Stabilit� structurelle exceptionnelle en pr�sence d'eau</td><td class="tr_blue">M�me performance remarquable en milieu aqueux hostile</td></tr><tr><td class="standard">Faible volatilit�</td><td class="standard">Emp�che la viscosit� d'augmenter � hautes temp�ratures ; maximisation des intervalles de graissage et dur�e de vie des paliers plus longue</td></tr></table><p xmlns="">&nbsp;</p></div><div style="width:415px; white-space:normal; padding-top:10px;display:none " class="divTabContent" id="Specifications Content"><table xmlns="" width="100%" summary="" class="standard" cellspacing="0" border="0"><tr><th scope="col" class="standard"><b>Mobilith SHC Series</b></th><th scope="col" class="standard"><b>100</b></th><th scope="col" class="standard"><b>220</b></th><th scope="col" class="standard"><b>221</b></th><th scope="col" class="standard"><b>460</b></th><th scope="col" class="standard"><b>1000 Special</b></th><th scope="col" class="standard"><b>1500</b></th></tr><tr><td class="standard">Grade NLGI</td><td class="standard">&nbsp;</td><td class="standard">&nbsp;</td><td class="standard">&nbsp;</td><td class="standard">&nbsp;</td><td class="standard">&nbsp;</td><td class="standard">&nbsp;</td></tr><tr><td class="tr_blue">Type de l&rsquo;�paississant</td><td class="tr_blue">Lithium complexe</td><td class="tr_blue">Lithium complexe</td><td class="tr_blue">Lithium complexe</td><td class="tr_blue">Lithium complexe</td><td class="tr_blue">Lithium complexe</td><td class="tr_blue">Lithium complexe</td></tr><tr><td class="standard">Couleur visuelle</td><td class="standard">Rouge</td><td class="standard">Rouge</td><td class="standard">Rouge</td><td class="standard">Rouge</td><td class="standard">Rouge</td><td class="standard">Rouge</td></tr><tr><td class="tr_blue">Point de goutte, �C, ASTM D 2265</td><td class="tr_blue">265&nbsp;</td><td class="tr_blue">265</td><td class="tr_blue">265</td><td class="tr_blue">265</td><td class="tr_blue">265</td><td class="tr_blue">265</td></tr><tr><td class="standard">Viscosit� de l'huile de base, ASTM D 445 cSt � 40�C</td><td class="standard">100&nbsp;</td><td class="standard">220</td><td class="standard">220</td><td class="standard">4600</td><td class="standard">1000</td><td class="standard">1500</td></tr></table><p xmlns="">&nbsp;</p></div><div style="width:415px; white-space:normal; padding-top:10px;display:none " class="divTabContent" id="Applications Content"><p xmlns="">Conseils d'utilisation : Bien que les Mobilith SHC soient compatibles avec la plupart des produits � base d&rsquo;huile min�rale, les m�langes ou les appoints sont d�conseill�s ; les performances de la graisse s'en trouveraient att�nu�es. En cons�quence, avant de commencer � utiliser une graisse Mobilith SHC, il est recommand� de parfaitement nettoyer le syst�me pour obtenir une performance maximale. M�me si les graisses Mobilith SHC partagent de nombreux avantages entre elles, chaque grade de produit correspond mieux � certaines applications :</p><p xmlns="">&bull; La Mobilith SHC&trade; 100 est une graisse anti-usure et extr�me pression principalement recommand�e pour des applications � haute vitesse, comme les moteurs �lectriques, dans lesquelles il est imp�ratif d'avoir une faible friction, une usure r�duite et une longue dur�e de service. Ce produit est une graisse de grade NLGI 2 / ISO VG 100, formul�e � base d&rsquo;un fluide de synth�se. Plage de temp�ratures d&rsquo;exploitation : de -40�C � +150�C<br>
&bull; La Mobilith SHC&trade; 220 est une graisse multi usages, extr�me pression, pour la lubrification de mat�riels industriels ou de transport routier lourd. Elle est formul�e � base de fluide de synth�se et sa plage de temp�ratures d&rsquo;exploitation recommand�e va de -40� � +150�C.<br>
&bull; La Mobilith SHC&trade; 221 est une graisse multi usages et extr�me pression recommand�e pour la lubrification de mat�riels industriels ou de transport routier lourd, en particulier dans le cas de syst�mes � graissage centralis�. Elle est formul�e � partir d&rsquo;un fluide de synth�se de base ISO VG 220. La plage de temp�ratures d&rsquo;exploitation recommand�e de la Mobilith SHC 221 va de -40� � +150�C.<br>
&bull; La Mobilith SHC&trade; 460 est une graisse de grade NLGI 1.5, formul�e � partir d&rsquo;un fluide de synth�se de base ISO VG 460. Il s&rsquo;agit d&rsquo;une graisse extr�me pression, recommand�e pour les applications industrielles s�v�res et les applications marines. Elle offre une protection exceptionnelle des roulements sous charges lourdes � des vitesses faibles � mod�r�es et dans les applications o� la r�sistance � l&rsquo;eau est un facteur essentiel. La Mobilith SHC 460 a fait preuve d&rsquo;une performance exceptionnelle dans les aci�ries, les usines de papier et les applications marines. Plage de temp�ratures d&rsquo;exploitation recommand�e : de -30�C � +150�C<br>
&bull; La Mobilith SHC&trade; 1000 Special est une graisse de grade NLGI 2, formul�e � partir d&rsquo;une huile de base de synth�se de grade ISO VG 1000. Elle est fortifi�e avec des lubrifiants solides, dont 11 % de graphite et 1 % de bisulfure de molybd�ne pour une protection maximale des paliers lisses ou � rouleaux fonctionnant dans des r�gimes de lubrification limites. Ce produit est con�u pour prolonger la dur�e de vie des paliers dans des conditions d&rsquo;exploitation � vitesse tr�s lente, � haute temp�rature et pour des applications � liaison glissi�re. Plage de temp�ratures d&rsquo;exploitation recommand�e pour la Mobilith SHC 1000 Special : de -30 �C � +150 �C, avec intervalles de relubrification appropri�s.<br>
&bull; La Mobilith SHC&trade; 1500 est une graisse de grade NLGI 1.5 / ISO VG 1500, formul�e � base d&rsquo;huile de synth�se. Elle est pr�conis�e pour le graissage des paliers lisses et des paliers � rouleaux fonctionnant � vitesse tr�s lente, sous des charges importantes et � haute temp�rature. Plage de temp�ratures d&rsquo;exploitation recommand�e pour la Mobilith SHC 1500 : de -30�C � +150�C, avec intervalles de relubrification appropri�s. Une lubrification continue avec la Mobilith SHC 1500 est tr�s efficace pour prolonger la dur�e de vie des paliers dans les presses � cylindres en service s�v�re. La Mobilith SHC 1500 offre �galement une excellente performance pour les roulements � billes de fours rotatifs et les paliers de wagons de transfert de scories.<br>
&bull; La Mobilith SHC&trade; 007 est une graisse de grade NLGI 00 / ISO VG 460, formul�e � base d&rsquo;huile de synth�se. Plage de temp�ratures d&rsquo;exploitation recommand�e pour la Mobilith SHC 007 : de -50�C � +150�C, avec intervalles de relubrification appropri�s. Elle est principalement utilis�e dans les carters d&rsquo;engrenage industriels garnis de graisse soumis � de hautes temp�ratures o� des graisses semi-fluides conventionnelles n&rsquo;offrent pas une dur�e de vie acceptable pour le lubrifiant, ainsi que dans les moyeux de roue de remorque non motrice.</p></div></td>
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