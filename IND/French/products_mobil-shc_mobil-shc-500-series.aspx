
			
			<%@ Page Language="C#" AutoEventWireup="false" Inherits="XOM.Common.Web.XOMPage" %>
			<%@ Register TagPrefix="XOM" Namespace="XOM.Common.Web" Assembly="XOMCommon" %>
			<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml" xmlns:xalan-nodeset="org.apache.xalan.xslt.extensions.Nodeset" xmlns:java="http://xml.apache.org/xslt/java" xmlns:fo="http://www.w3.org/1999/XSL/Format" xml:lang="fr" lang="fr"><head><meta http-equiv="X-UA-Compatible" content="IE=8"><title>Mobil SHC&trade; 500 : Huiles hydrauliques |  Mobil&trade; Industrial Lubricants</title><meta name="keywords" content="Mobil SHC 500, Huile hydraulique synth�tique, Huile hydraulique, SHC 500, Huile hydraulique Mobil, Huile synth�tique Mobil, Huile synth�tique"/><meta name="description" content="Les huiles hydrauliques synth�tiques de technologie avanc�e Mobil SHC&trade; 500 sont con�ues pour apporter une excellente protection contre l&rsquo;usure et des performances � hautes comme � basses temp�ratures."/><meta name="date" content="10/2013"/><meta name="language" content="fr"/><meta http-equiv="Content-Language" content="fr"/><link type="text/css" rel="stylesheet" media="all" href="/Imports/mobil_ind.css"/><link type="text/css" rel="stylesheet" media="print" href="/Imports/xom_print.css"/><link type="text/css" title="medium" rel="stylesheet" href="/Imports/xom_web_medium.css"/><link type="text/css" title="large" rel="alternate stylesheet" href="/Imports/xom_web_large.css"/><link type="text/css" title="small" rel="alternate stylesheet" href="/Imports/xom_web_small.css"/><link type="text/css" rel="stylesheet" media="all" href="/Imports/xom_lightview.css"/>
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
				<!-- Set 'expires' in http header, start --><% string cacheExpireDateStr="6/30/2014 5:53:59 PM";
        DateTime cacheExpireDate = Convert.ToDateTime(cacheExpireDateStr); 
        Response.AddHeader("Expires",cacheExpireDate.ToUniversalTime().ToString("ddd, dd MMM yyyy HH:mm:ss 'GMT'")); %><!-- end --></head><body class="article"><a href="#mainContent" class="skip">Skip to Main Content</a><div id="container"><!--#include virtual="Navigation/Header.aspx"--><div id="mainPanel" class="clrfix"><!--#include virtual="Navigation/products_left_navigation.aspx"--><div id="toolbar"><!--#include virtual="Services/Toolbox.aspx"--><div class="related"><div class="relatedimg150X68"><a href="products_mobil-shc.aspx"><img xmlns="" title="Mobil SHC" src="/IND/English/Images/150x68_sidecallouts_mobilshc.jpg" longdesc="" border="0" alt="Mobil SHC"><p xmlns=""><a title="" target="" href="products_mobil-shc.aspx" class=""></a> Mobil SHC&trade; 500<br><a title="This link will open a new window." target="_new" href="http://www.mobil.com/France-French/Lubes/PDS/GLXXFRINDMOMobil_SHC_500.aspx">Fiche technique produits (FTP)</a><br><a title="This link will open a new window." target="_new" href="http://www.msds.exxonmobil.com/psims/psims.aspx">Fiche de donn�es de s�curit� (FDS)</a></p></a></div></div><div class="related"><div class="relatedimg150X68"><a href="distributorlocator.aspx"><img xmlns="" title="Lubrifiants Synth�tiques Mobil SHC " src="/IND/English/Images/150x68_sidecallouts_where_to_buy.jpg" longdesc="" border="0" alt="Lubrifiants Synth�tiques Mobil SHC "><p xmlns=""><a title="" target="" href="distributorlocator.aspx" class=""></a>Points de vente<br><a title="" target="" href="distributorlocator.aspx" class="">Trouvez le distributeur le plus proche de chez vous</a></p></a></div></div><div class="related"><div class="relatedimg150X68"><a href="/ind/english/productselector.aspx"><img xmlns="" title="Productivit� " src="/IND/English/Images/150x68_sidecallouts_looble1.jpg" longdesc="" border="0" alt="Productivit� "><p xmlns=""><a title="This link will open a new window." target="_new" href="/ind/english/productselector.aspx"></a></p><p xmlns="">Guide de s�lection de produits Looble<sup>SM</sup>(EN)<br><a title="This link will open a new window." target="_new" href="/ind/english/productselector.aspx">Trouvez les lubrifiants les plus appropri�s � vos applications industrielles</a></p></a></div></div></div><div id="mainContent"><div class="img150 left"><img xmlns="" title="Huile hydraulique &nbsp;Mobil SHC 500 sur des engrenages" src="/IND/English/Images/article_150x150_oil-drip.jpg" longdesc="" border="0" alt="Huile hydraulique &nbsp;Mobil SHC 500 sur des engrenages"></div><p xmlns=""><span style=" font-size: x-large;"><b>Mobil SHC&trade; 500 Series</b></span></p><p xmlns=""><span style=" font-size: large;"><b>Huiles hydrauliques synth�tiques</b></span></p><p xmlns="">Les huiles hydrauliques de technologie avanc�e Mobil SH&trade; 500 sont con�ues pour apporter une excellente protection contre l&rsquo;usure des vannes hautes pressions, des pompes � piston et � engrenages. Elles peuvent �tre utilis�es dans une large plage de temp�ratures et prolongent la dur�e de vie des composants des machines.</p><p xmlns="">Elles poss�dent des performances exceptionnelles � hautes et basses temp�ratures. Gr�ce � la technologie de pointe de ces huiles synth�tiques, la dur�e de vie de vos �quipements est jusqu&rsquo;� trois fois plus longue qu&rsquo;avec une huile min�rale. De plus, elles am�liorent le rendement, la propret� et la dur�e de vie des circuits. Ses propri�t�s permettent de r�duire la maintenance des �quipements et contribuent � prolonger les intervalles de vidange d&rsquo;huile, r�duisant potentiellement la consommation d&rsquo;�nergie de pr�s de 6,2% par rapport aux huiles hydrauliques min�rales standard.*</p><p xmlns=""></p><p xmlns=""><a title="This link will open a new window." target="_new" href="/IND/English/Files/ss_shc_500.pdf">Mobil SHC&trade; 500: fiche technique<img src="/Images/Icons/icon_pdf_whitespace.jpg" border="0" alt=""></a> (EN)</p><p xmlns="">&nbsp;</p><div id="tabbed_table"><table style="width: 454px   " id="tblTabs" cellspacing="0px" cellpadding="0" border="0"><tr id="tabNav"><td style="height:1px; padding-bottom:-10px; " colspan="5"><div style="z-index:100; " id="divTabs"><ul><li onmouseover="if(this.className!='current')this.className='highlight';" onmouseout="if(this.className!='current')this.className=''" class="current" id="Accueil"><a href="#" onclick="javascript:showTab('Accueil');">Accueil</a></li><li onmouseover="if(this.className!='current')this.className='highlight'" onmouseout="if(this.className!='current')this.className=''" id="Specifications"><a href="#" onclick="javascript:showTab('Specifications');">Specifications</a></li><li onmouseover="if(this.className!='current')this.className='highlight'" onmouseout="if(this.className!='current')this.className=''" id="Applications"><a href="#" onclick="javascript:showTab('Applications');">Applications</a></li></ul></div></td></tr><tr id="trTabContent"><td valign="top" style="width: 10px; background-image:url('/Images/Tabs/box_Left.png'); background-repeat: repeat-y; background-color: #ffffff;"><img src="/Images/Tabs/box_LeftUpper.png" class="leftUpperImg" alt=""/></td><td valign="top" style="width: 435px; background-image:url('/Images/Tabs/boxNoFade_Upper.png'); background-repeat: repeat-x; background-color: #ffffff;" class="midBorder"><div style="width:434px; white-space:normal; padding-top:10px;display:block " class="divTabContent" id="Accueil Content"><p xmlns="">Les Mobil SHC s�rie 500 donnent des r�sultats exceptionnels � haute comme � basse temp�ratures et aident � prot�ger les syst�mes de fa�on consid�rable par rapport � une huile min�rale. Leur excellente r�sistance � l'oxydation permet un allongement de la dur�e de vie de l'huile et des filtres. Les circuits restent propres et les risques de pannes r�duits. Le rendement est am�lior�. Gr�ce � leurs propri�t�s anti-usure et � la r�sistance du film d&rsquo;huile, les �quipements sont mieux prot�g�s, ce qui permet d&rsquo;�viter les pannes d&rsquo;�quipement impr�vues, d&rsquo;optimiser le temps de disponibilit� et d&rsquo;am�liorer les capacit�s de production. Les Mobil SHC S�rie 500 poss�dent des propri�t�s de d�s�mulsion qui leur permet d'�tre performantes m�me en pr�sence d'eau.</p><p xmlns="">&bull; Aide � prolonger la dur�e de service<br>
&bull; Syst�mes plus propres et r�duction du gommage sur les valves � faible jeu par rapport aux produits conventionnels<br>
&bull; Aide � am�liorer la filtrabilit�<br>
&bull; Aide � r�duire l'usure des composants<br>
&bull; Aide � prot�ger les composants de m�tallurgies vari�es<br>
&bull; Utilisation sur une large plage de temp�ratures<br>
&bull; Aide � prot�ger les �quipements au d�marrage<br>
&bull; Aide � prot�ger les composants � haute temp�rature de fonctionnement<br>
&bull; Aide � prolonger la dur�e de vie de l'huile et de l'�quipement, ainsi que celle des filtres<br>
&bull; Aide � �viter la corrosion interne des syst�mes hydrauliques<br>
&bull; Aide � r�duire les effets n�gatifs de l'humidit�<br>
&bull; Aide � prot�ger les composants de m�tallurgies vari�es contre la corrosion<br>
&bull; Aide � optimiser la gestion d&rsquo;inventaire<br>
&bull; Un seul produit peut en remplacer plusieurs, aidant � optimiser les contraintes d&rsquo;inventaires et � limiter les risques d&rsquo;erreurs applications<br>
&bull; Aide � r�duire le moussage et ses effets n�fastes<br>
&bull; Fournit une protection et une lubrification des syst�mes lorsque de petites quantit�s d&rsquo;humidit� sont pr�sentes<br>
&bull; Se s�pare facilement de grandes quantit�s d&rsquo;eau</p></div><div style="width:415px; white-space:normal; padding-top:10px;display:none " class="divTabContent" id="Specifications Content"><table xmlns="" width="100%" summary="" class="standard" cellspacing="0" border="0"><tr><th scope="col" class="standard"><p><b>Mobil SHC 500 Series</b></p></th><th scope="col" class="standard"><p><b>524</b></p></th><th scope="col" class="standard"><p><b>525</b></p></th><th scope="col" class="standard"><p><b>526</b></p></th><th scope="col" class="standard"><p><b>527</b></p></th></tr><tr><td class="standard"><p>Viscosit�, ASTM D 445</p></td><td class="standard"><p>&nbsp;</p></td><td class="standard"><p>&nbsp;</p></td><td class="standard"><p>&nbsp;</p></td><td class="standard"><p>&nbsp;</p></td></tr><tr><td class="tr_blue"><p>cSt @ 40� C</p></td><td class="tr_blue"><p>32</p></td><td class="tr_blue"><p>46</p></td><td class="tr_blue"><p>68</p></td><td class="tr_blue"><p>100</p></td></tr><tr><td class="standard"><p>cSt @ 100� C</p></td><td class="standard"><p>6.4</p></td><td class="standard"><p>8.54</p></td><td class="standard"><p>11.52</p></td><td class="standard"><p>15.94</p></td></tr><tr><td class="tr_blue"><p>Indice de viscosit�, ASTM D 2270</p></td><td class="tr_blue"><p>144</p></td><td class="tr_blue"><p>154</p></td><td class="tr_blue"><p>158</p></td><td class="tr_blue"><p>160</p></td></tr><tr><td class="standard"><p>Point d'�coulement, �C, ASTM D 97</p></td><td class="standard"><p>-54</p></td><td class="standard"><p>-54</p></td><td class="standard"><p>-42</p></td><td class="standard"><p>-46</p></td></tr><tr><td class="tr_blue"><p>Point d'�clair, �C, ASTM D 92</p></td><td class="tr_blue"><p>234</p></td><td class="tr_blue"><p>238</p></td><td class="tr_blue"><p>216</p></td><td class="tr_blue"><p>232</p></td></tr></table><p xmlns="">&nbsp;</p></div><div style="width:415px; white-space:normal; padding-top:10px;display:none " class="divTabContent" id="Applications Content"><p xmlns="">&bull; Circuits hydrauliques sensibles aux d�p�ts comme ceux des machines � contr�le num�rique et particuli�rement ceux avec des servo-valves � faible jeu.<br>
&bull; Syst�mes multi-m�tallurgies<br>
&bull; Pompes haute pression, � piston et engrenages<br>
&bull; Syst�mes soumis � des d�marrages � froid et � des temp�ratures de fonctionnement �lev�es.<br>
&bull; Applications hydrauliques o� la pr�sence d'eau n'est pas souhaitable<br>
&bull; Applications avec engrenages et paliers<br>
&bull; Syst�mes � forte charge requ�rant une protection anti-usure �lev�e<br>
&bull; Mat�riels fonctionnant en ambiance humide et o� la protection anti-corrosion par le film d'huile est indispensable</p></div></td><td valign="top" style="width: 10px; background-image:url('/Images/Tabs/box_Right.png'); background-repeat: repeat-y; background-color: #ffffff;" class="rightBorder"><img src="/Images/Tabs/boxNoFade_RightUpper.png" alt=""/></td></tr><tr id="tabsLower"><td valign="top" style="width: 10px; height: 10px;" id="tabsLowerLeft"><img src="/Images/Tabs/box_LeftLower.png" alt=""/></td><td valign="top" style="width: 435px; background-image:url('/Images/Tabs/box_Lower.png'); background-repeat: repeat-x;" id="tabsLowerMiddle">�</td><td valign="top" style="width: 10px; height: 10px;" id="tabsLowerRight"><img src="/Images/Tabs/box_RightLower.png" alt=""/></td></tr></table></div><div class="imgns left"><img xmlns="" title="Energy Efficiency" src="/IND/English/Images/95x93_energy_efficiency.jpg" longdesc="" border="0" alt="Energy Efficiency"></div><p xmlns="">&nbsp;</p><p xmlns=""><span style=" font-size: x-small;">� Energy efficiency � est une marque commerciale d�pos�e appartenant � Exxon Mobil Corporation ou � l&rsquo;une de ses filiales. Pour des raisons de commodit� et de simplicit� sur ce document, les termes ExxonMobil, Mobil ainsi que d&rsquo;autres termes tels que � corporation, soci�t�, notre, nous, son, sa � sont parfois utilis�s pour d�signer des filiales ou des groupes affili�s de Exxon Mobil Corporation, dont Esso S.A.F. Le contenu des pr�sentes pages n&rsquo;a pas our objet de porter atteinte au principe de s�paration existant entre des entit�s juridiques locales distinctes. Les mesures d&rsquo;efficacit� �nerg�tique se rapportent uniquement aux performances du fluide, compar�es � celles des huiles classiques de r�f�rence, ceci pour le m�me grade de viscosit� et pour des applications identiques. La technologie utilis�e a permis d&rsquo;apporter jusqu&rsquo;� 6% d&rsquo;am�lioration du rendement hydraulique par rapport aux Mobil DTE&trade; 20. Le rendement �nerg�tique revendiqu� pour ce produit a �t� obtenu � la suite de tests r�alis�s conform�ment aux protocoles et aux standards en vigueur dans l&rsquo;industrie.</span></p><p xmlns=""><span style=" font-size: x-small;">*Les r�sultats obtenus sont susceptibles de varier en fonction des conditions de service et des applications.<br></span><br>
&nbsp;</p></div></div><!--#include virtual="Navigation/Footer.aspx"--></div><script type="text/javascript">	
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