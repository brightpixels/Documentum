
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
				<html xmlns="http://www.w3.org/1999/xhtml" xmlns:xalan-nodeset="org.apache.xalan.xslt.extensions.Nodeset" xmlns:java="http://xml.apache.org/xslt/java" xmlns:fo="http://www.w3.org/1999/XSL/Format" xml:lang="fr" lang="fr"><head><title>Graisse au lithium complexe : S�rie Mobilgrease XHP&trade; 220 | Mobil&trade; Industrial Lubricant</title><meta http-equiv="X-UA-Compatible" content="IE=edge"/><meta name="keywords" content="Graisse au lithium complexe, graisse au lithium grease, Mobilgrease XHP, Mobil grease XHP, fabrication au lithium complexe, S�rie Mobilgrease XHP 220, Produits Mobilgrease"/><meta name="description" content="Les graisses Mobilgrease XHP&trade; 220 sont des produits con�us pour surpasser les produits traditionnels gr�ce � une technologie de pointe exclusive de fabrication du savon de lithium complexe."/><meta name="date" content="10/2013"/><meta name="language" content="fr"/><meta http-equiv="Content-Language" content="fr"/><link type="text/css" rel="stylesheet" media="all" href="/Imports/mobil_ind.css"/><link type="text/css" rel="stylesheet" media="print" href="/Imports/xom_print.css"/><link type="text/css" title="medium" rel="stylesheet" href="/Imports/xom_web_medium.css"/><link type="text/css" title="large" rel="alternate stylesheet" href="/Imports/xom_web_large.css"/><link type="text/css" title="small" rel="alternate stylesheet" href="/Imports/xom_web_small.css"/>	
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
				<!-- Set 'expires' in http header, start --><% string cacheExpireDateStr="5/16/2016 9:29:37 AM";
        DateTime cacheExpireDate = Convert.ToDateTime(cacheExpireDateStr); 
        Response.AddHeader("Expires",cacheExpireDate.ToUniversalTime().ToString("ddd, dd MMM yyyy HH:mm:ss 'GMT'")); %><!-- end --></head><body class="article"><a href="#mainContent" class="skip">Skip to Main Content</a><div id="container"><!--#include virtual="Navigation/Header.aspx"--><div id="mainPanel" class="clrfix"><!--#include virtual="Navigation/products_left_navigation.aspx"--><div id="toolbar"><!--#include virtual="Services/Toolbox.aspx"--><div class="related"><div class="relatedimg150X68"><a href="products_mobil-shc.aspx"><img xmlns="" title="Mobil SHC" src="Images/150x68_sidecallouts_mobilshc.jpg" longdesc="" border="0" alt="Mobil SHC"><p xmlns=""><a title="" target="" href="products_mobil-shc.aspx" class=""></a> Mobilgrease XHP&trade; 220<br><a title="This link will open a new window." target="_new" href="http://www.mobil.com/France-French/Lubes/PDS/GLXXFRGRSMOMobilgrease_XHP_220.aspx">Fiche technique produits (FTP)</a><br><a title="This link will open a new window." target="_new" href="http://www.msds.exxonmobil.com/psims/psims.aspx">Fiche de donn�es de s�curit� (FDS)</a></p></a></div></div><div class="related"><div class="relatedimg150X68"><a href="distributorlocator.aspx"><img xmlns="" title="Lubrifiants Synth�tiques Mobil SHC " src="Images/150x68_sidecallouts_where_to_buy.jpg" longdesc="" border="0" alt="Lubrifiants Synth�tiques Mobil SHC "><p xmlns=""><a title="" target="" href="distributorlocator.aspx" class=""></a>Points de vente<br><a title="" target="" href="distributorlocator.aspx" class="">Trouvez le distributeur le plus proche de chez vous</a></p></a></div></div><div class="related"><div class="relatedimg150X68"><a href="/ind/english/productselector.aspx"><img xmlns="" title="Productivit� " src="Images/150x68_sidecallouts_looble1.jpg" longdesc="" border="0" alt="Productivit� "><p xmlns=""><a title="This link will open a new window." target="_new" href="/ind/english/productselector.aspx"></a></p><p xmlns="">Guide de s�lection de produits Looble<sup>SM</sup>(EN)<br><a title="This link will open a new window." target="_new" href="/ind/english/productselector.aspx">Trouvez les lubrifiants les plus appropri�s � vos applications industrielles</a></p></a></div></div></div><div id="mainContent"><br/><div class="img150 left"><img xmlns="" title="Graisses au lithium complexe polyvalentes" src="Images/article_150x150_mobil-xhp-220-series.jpg" longdesc="" border="0" alt="Graisses au lithium complexe polyvalentes"></div><p xmlns=""><span style=" font-size: x-large;"><b>Gamme Mobilgrease XHP&trade;</b></span></p><p xmlns=""><span style=" font-size: x-large;"><b>220</b></span></p><p xmlns=""><span style=" font-size: large;"><b>Graisses au lithium complexe polyvalentes</b></span></p><p xmlns="">Les graisses Mobilgrease XHP 220 sont formul�es pour un large �ventail d&rsquo;applications et des conditions d&rsquo;exploitation difficiles. Ces graisses exceptionnelles sont con�ues pour surpasser les produits traditionnels gr�ce � une technologie de pointe exclusive de fabrication au lithium complexe.</p><p xmlns=""><b>Performances polyvalentes</b><br>
Les graisses Mobilgrease XHP 220 sont con�ues pour un vaste �ventail d&rsquo;applications, notamment dans les secteurs de l&rsquo;industrie, de l&rsquo;automobile, de la construction et de la marine. Elles sont disponibles en &nbsp;grades NLGI 00, 0, 1, 2 et 3 dont la viscosit� de l&rsquo;huile de base correspond au grade ISO VG 220. Elles sont les graisses phares des produits de la gamme Mobilgrease&trade; qui ont acquis leur r�putation mondiale de par leur innovation et leur excellence en termes de performances.</p><p xmlns=""><a title="This link will open a new window." target="_new" href="/ind/english/files/heavy-duty-mobilgrease-xhp-series.pdf">Mobilgrease XHP&trade; : fiche descriptive<img src="/Images/Icons/icon_pdf_whitespace.jpg" border="0" alt=""></a> (EN)</p><p xmlns=""></p><div id="tabbed_table"><table style="width: 454px   " id="tblTabs" cellspacing="0px" cellpadding="0" border="0"><tr id="tabNav"><td style="height:1px; padding-bottom:-10px; " colspan="5"><div style="z-index:100; " id="divTabs"><ul><li onmouseover="if(this.className!='current')this.className='highlight';" onmouseout="if(this.className!='current')this.className=''" class="current" id="Caract�ristiques et avantages"><a href="#" onclick="javascript:showTab('Caract�ristiques et avantages');">Caract�ristiques et avantages</a></li><li onmouseover="if(this.className!='current')this.className='highlight'" onmouseout="if(this.className!='current')this.className=''" id="Specifications"><a href="#" onclick="javascript:showTab('Specifications');">Specifications</a></li><li onmouseover="if(this.className!='current')this.className='highlight'" onmouseout="if(this.className!='current')this.className=''" id="Applications"><a href="#" onclick="javascript:showTab('Applications');">Applications</a></li></ul></div></td></tr><tr id="trTabContent">
											<td valign="top" style="width: 10px; background-image:url('<%=GetDomain()%>/Images/Tabs/box_Left.png'); background-repeat: repeat-y; background-color: #ffffff;">
												<img class="leftUpperImg" src="<%=GetDomain()%>/Images/Tabs/box_LeftUpper.png" alt=""/>
											</td>									
										<td valign="top" class="midBorder" style="width: 435px; background-image:url('<%=GetDomain()%>/Images/Tabs/boxNoFade_Upper.png'); background-repeat: repeat-x; background-color: #ffffff;">
										<div style="width:434px; white-space:normal; padding-top:10px;display:block " class="divTabContent" id="Caract�ristiques et avantages Content"><p xmlns="">Les graisses Mobilgrease XHP 220 font parties de la gamme des produits Mobilgrease, qui a acquis une r�putation d&rsquo;innovation et d&rsquo;excellence sur le plan de la performance. Les graisses Mobilgrease XHP 220 sont des produits hautes performances con�us par nos ing�nieurs, qui jouissent de l&rsquo;appui de notre personnel de soutien technique � l&rsquo;�chelle mondiale.</p><p xmlns="">Un des facteurs cl�s dans les excellentes propri�t�s d&rsquo;adh�sivit�, de coh�sion et de point de goutte �lev� des graisses Mobilgrease XHP 220 est la technologie de fabrication exclusive mise au point par notre service de recherche et adopt�e par nos installations de fabrication modernes. Ces produits contiennent des additifs choisis avec soin qui assurent une excellente r�sistance � l&rsquo;oxydation, � la rouille, � la corrosion et � la contamination par l&rsquo;eau ainsi qu&rsquo;une protection contre l&rsquo;usure et les pressions extr�mes. Les produits Mobilgrease XHP 220 offrent les caract�ristiques et les avantages potentiels suivants :</p><table xmlns="" width="100%" summary="" class="standard" cellspacing="0" border="0"><tr><th scope="col" class="standard">Caract�ristiques</th><th scope="col" class="standard">Avantages et b�n�fices potentiels</th></tr><tr><td class="standard">Excellente r�sistance au d�lavage par l&rsquo;eau et � la pulv�risation d&rsquo;eau</td><td class="standard">Permet d&rsquo;assurer une lubrification et une protection ad�quates, m�me dans les conditions les plus s�v�res d&rsquo;exposition � l&rsquo;eau.</td></tr><tr><td class="tr_blue">Structure fortement adh�sive et coh�sive</td><td class="tr_blue">Excellente adh�sivit� de la graisse, r�duction des fuites et espacement des regraissages, pour une maintenance facilit�e.</td></tr><tr><td class="standard">Excellente r�sistance � la rouille et � la corrosion</td><td class="standard">Protection des pi�ces lubrifi�es, m�me en milieu humide.</td></tr><tr><td class="tr_blue">Tr�s bonne r�sistance � la chaleur, � l&rsquo;oxydation et � la d�gradation structurale � temp�rature �lev�e</td><td class="tr_blue">Aide � prolonger la dur�e de vie de la graisse et � assurer une meilleure protection des paliers � temp�rature �lev�e, permettant une baisse des co�ts de maintenance.</td></tr><tr><td class="standard">Tr�s bonne protection anti-usure et EP</td><td class="standard">Protection fiable du mat�riel lubrifi�, m�me dans des conditions de glissement �lev� avec la possibilit� de prolonger la dur�e de vie du mat�riel et d&rsquo;en limiter les arr�ts impr�vus.</td></tr><tr><td class="tr_blue">Produit aux applications multiples</td><td class="tr_blue">Possibilit� de rationaliser le nombre de produits � stocker et de r�duire les co�ts d&rsquo;inventaire.</td></tr></table><p xmlns="">&nbsp;</p></div><div style="width:415px; white-space:normal; padding-top:10px;display:none " class="divTabContent" id="Specifications Content"><table xmlns="" width="100%" summary="" class="standard" cellspacing="0" border="0"><tr><th scope="col" class="standard">Mobilgrease XHP 220</th><th scope="col" class="standard">&nbsp;</th></tr><tr><td class="standard">Grade NLGI</td><td class="standard">0</td></tr><tr><td class="tr_blue">Nature du savon</td><td class="tr_blue">Li-Compl.</td></tr><tr><td class="standard">Couleur visuelle</td><td class="standard">Bleu sombre</td></tr><tr><td class="tr_blue">Viscosit� de l'huile de base, ASTM D 445</td><td class="tr_blue">&nbsp;</td></tr><tr><td class="standard">cSt @ 40� C</td><td class="standard">220</td></tr><tr><td class="tr_blue">Point de goutte, �C, ASTM D2265</td><td class="tr_blue">270</td></tr></table><p xmlns="">&nbsp;</p></div><div style="width:415px; white-space:normal; padding-top:10px;display:none " class="divTabContent" id="Applications Content"><ul xmlns=""><li>Les graisses Mobilgrease XHP 220 sont utilis�es dans une vaste gamme de mat�riel des secteurs industriel, automobile, marin et de la construction. Leur couleur bleue permet de facilement v�rifier leur application .</li><li>La graisse Mobilgrease 005 et 220 est de consistance plus molle et r�siste bien aux temp�ratures �lev�es ; elle est pr�conis�e par ExxonMobil pour le graissage des syst�mes centralis�s, des paliers ou dans les applications o� une bonne pompabilit� � tr�s basse temp�rature est un facteur important.</li><li>La graisse Mobilgrease XHP 221 est pr�conis�e par ExxonMobil dans les applications industrielles et marines, et pour le graissage des composants de ch�ssis et du mat�riel agricole. Elle assure un excellent rendement � basse temp�rature.</li><li>La graisse Mobilgrease XHP 222 est pr�conis�e par ExxonMobil dans les applications industrielles et marines, pour le graissage des composants de ch�ssis et du mat�riel agricole. Gr�ce � sa coh�sion structurelle assurant une excellente adh�sivit�, elle r�siste plus longtemps dans les diverses applications.</li><li>La graisse Mobilgrease XHP 223 est quant � elle recommand�e par ExxonMobil dans les applications � haute temp�rature o� lorsque de bonnes propri�t�s d&rsquo;�tanch�it� sont exig�es. Elle est particuli�rement recommand�e pour les applications des paliers de roues de camions, pour les paliers � �l�ments roulants soumis � des vibrations ou dans les applications o� les vitesses �lev�es exigent l&rsquo;usage d&rsquo;une graisse d&rsquo;une consistance sup�rieure.</li><li>La graisse Mobilgrease XHP 222 Special, contient 0,75 % de bisulfure de molybd�ne, de couleur grise, est recommand�e par ExxonMobil pour les applications industrielles en service mod�r�, ainsi que le graissage des composantes de ch�ssis et de mat�riel agricole. Convient particuli�rement au graissage des pivots d&rsquo;attelage, des joints universels, des sellettes d&rsquo;attelage et des rotules de godets de pelleteuses.</li></ul><p xmlns="">&nbsp;</p></div></td>
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