
			
			<%@ Page Language="C#" AutoEventWireup="false" Inherits="XOM.Common.Web.XOMPage" %>
			<%@ Register TagPrefix="XOM" Namespace="XOM.Common.Web" Assembly="XOMCommon" %>
			<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml" xmlns:xalan-nodeset="org.apache.xalan.xslt.extensions.Nodeset" xmlns:java="http://xml.apache.org/xslt/java" xmlns:fo="http://www.w3.org/1999/XSL/Format" xml:lang="fr" lang="fr"><head><meta http-equiv="X-UA-Compatible" content="IE=8"><title>Graisse pour paliers de moteurs �lectriques : Mobil Polyrex&trade; EM | Mobil&trade;Industrial Lubricants</title><meta name="keywords" content="La graisse Mobil Polyrex&trade; EM est issue de techniques de fabrication exclusives qui apportent une meilleure performance et une plus grande protection des paliers pour prolonger la dur�e de vie du moteur �lectrique."/><meta name="description" content="La graisse Mobil Polyrex&trade; EM est issue de techniques de fabrication exclusives qui apportent une meilleure performance et une plus grande protection des paliers pour prolonger la dur�e de vie du moteur �lectrique."/><meta name="date" content="10/2013"/><meta name="language" content="fr"/><meta http-equiv="Content-Language" content="fr"/><link type="text/css" rel="stylesheet" media="all" href="/Imports/mobil_ind.css"/><link type="text/css" rel="stylesheet" media="print" href="/Imports/xom_print.css"/><link type="text/css" title="medium" rel="stylesheet" href="/Imports/xom_web_medium.css"/><link type="text/css" title="large" rel="alternate stylesheet" href="/Imports/xom_web_large.css"/><link type="text/css" title="small" rel="alternate stylesheet" href="/Imports/xom_web_small.css"/><link type="text/css" rel="stylesheet" media="all" href="/Imports/xom_lightview.css"/>
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
				<!-- Set 'expires' in http header, start --><% string cacheExpireDateStr="9/25/2014 10:09:41 AM";
        DateTime cacheExpireDate = Convert.ToDateTime(cacheExpireDateStr); 
        Response.AddHeader("Expires",cacheExpireDate.ToUniversalTime().ToString("ddd, dd MMM yyyy HH:mm:ss 'GMT'")); %><!-- end --></head><body class="article"><a href="#mainContent" class="skip">Skip to Main Content</a><div id="container"><!--#include virtual="Navigation/Header.aspx"--><div id="mainPanel" class="clrfix"><!--#include virtual="Navigation/products_left_navigation.aspx"--><div id="toolbar"><!--#include virtual="Services/Toolbox.aspx"--><div class="related"><div class="relatedimg150X68"><a href="products_mobil-shc.aspx"><img xmlns="" title="Mobil SHC" src="/IND/English/Images/150x68_sidecallouts_mobilshc.jpg" longdesc="" border="0" alt="Mobil SHC"><p xmlns=""><a title="" target="" href="products_mobil-shc.aspx" class=""></a> Mobil Polyrex&trade; EM<br><a title="This link will open a new window." target="_new" href="http://www.mobil.com/France-French/Lubes/PDS/GLXXFRGRSMOMobil_Polyrex_EM.aspx">Fiche technique produits (FTP)</a><br><a title="This link will open a new window." target="_new" href="http://www.msds.exxonmobil.com/psims/psims.aspx">Fiche de donn�es de s�curit� (FDS)</a></p></a></div></div><div class="related"><div class="relatedimg150X68"><a href="distributorlocator.aspx"><img xmlns="" title="Lubrifiants Synth�tiques Mobil SHC " src="/IND/English/Images/150x68_sidecallouts_where_to_buy.jpg" longdesc="" border="0" alt="Lubrifiants Synth�tiques Mobil SHC "><p xmlns=""><a title="" target="" href="distributorlocator.aspx" class=""></a>Points de vente<br><a title="" target="" href="distributorlocator.aspx" class="">Trouvez le distributeur le plus proche de chez vous</a></p></a></div></div><div class="related"><div class="relatedimg150X68"><a href="/ind/english/productselector.aspx"><img xmlns="" title="Productivit� " src="/IND/English/Images/150x68_sidecallouts_looble1.jpg" longdesc="" border="0" alt="Productivit� "><p xmlns=""><a title="This link will open a new window." target="_new" href="/ind/english/productselector.aspx"></a></p><p xmlns="">Guide de s�lection de produits Looble<sup>SM</sup>(EN)<br><a title="This link will open a new window." target="_new" href="/ind/english/productselector.aspx">Trouvez les lubrifiants les plus appropri�s � vos applications industrielles</a></p></a></div></div></div><div id="mainContent"><div class="img150 left"><img xmlns="" title="Graisse Mobil Polyrex&trade; EM dans un roulement � billes et � rouleaux de moteur" src="/IND/English/Images/article_150x150_mobil-polyrex-em.jpg" longdesc="" border="0" alt="Graisse Mobil Polyrex&trade; EM dans un roulement � billes et � rouleaux de moteur"></div><p xmlns=""><span style=" font-size: x-large;"><b>Mobil Polyrex&trade; EM</b></span></p><p xmlns=""><b><span style=" font-size: large;">Graisse pour paliers de moteurs �lectriques</span></b></p><p xmlns="">La graisse de tr�s haute qualit� Mobil Polyrex EM est tout sp�cialement formul�e pour les paliers de moteurs �lectriques. La formulation perfectionn�e de l&rsquo;agent �paississant et les techniques de fabrication exclusives apportent une meilleure performance et une plus grande protection des paliers pour prolonger la dur�e de vie du moteur �lectrique.</p><p xmlns="">La graisse Mobil Polyrex EM s&rsquo;est forg�e une r�putation exceptionnelle gr�ce � ses performances remarquables. Elle est recommand�e par un grand nombre des principaux constructeurs de paliers et moteurs �lectriques pour la lubrification longue dur�e des roulements � billes et � rouleaux.</p><p xmlns=""></p><div id="tabbed_table"><table style="width: 454px   " id="tblTabs" cellspacing="0px" cellpadding="0" border="0"><tr id="tabNav"><td style="height:1px; padding-bottom:-10px; " colspan="5"><div style="z-index:100; " id="divTabs"><ul><li onmouseover="if(this.className!='current')this.className='highlight';" onmouseout="if(this.className!='current')this.className=''" class="current" id="Accueil"><a href="#" onclick="javascript:showTab('Accueil');">Accueil</a></li><li onmouseover="if(this.className!='current')this.className='highlight'" onmouseout="if(this.className!='current')this.className=''" id="Specifications"><a href="#" onclick="javascript:showTab('Specifications');">Specifications</a></li><li onmouseover="if(this.className!='current')this.className='highlight'" onmouseout="if(this.className!='current')this.className=''" id="Applications"><a href="#" onclick="javascript:showTab('Applications');">Applications</a></li></ul></div></td></tr><tr id="trTabContent"><td valign="top" style="width: 10px; background-image:url('/Images/Tabs/box_Left.png'); background-repeat: repeat-y; background-color: #ffffff;"><img src="/Images/Tabs/box_LeftUpper.png" class="leftUpperImg" alt=""/></td><td valign="top" style="width: 435px; background-image:url('/Images/Tabs/boxNoFade_Upper.png'); background-repeat: repeat-x; background-color: #ffffff;" class="midBorder"><div style="width:434px; white-space:normal; padding-top:10px;display:block " class="divTabContent" id="Accueil Content"><p xmlns="">&bull; Longue dur�e de vie, excellente lubrification � haute temp�rature des roulements � billes et � rouleaux, particuli�rement dans les applications scell�es � vie<br>
&bull; Am�lioration de la durabilit� par rapport aux graisses � polyur�e conventionnelles lorsqu&rsquo;elles sont soumises � des forces de cisaillement m�canique<br>
&bull; Mobil Polyrex EM et Mobil Polyrex EM 103 assurent la protection contre la rouille et la corrosion. Mobil Polyrex&trade; EM offre une protection suppl�mentaire par rapport � la graisse Polyrex EM 103 dans des conditions de d�lavage � l&rsquo;eau sal�e<br>
&bull; Mobil Polyrex EM convient � la lubrification des roulements � billes dans de nombreuses applications sensibles au bruit</p></div><div style="width:415px; white-space:normal; padding-top:10px;display:none " class="divTabContent" id="Specifications Content"><table xmlns="" width="100%" summary="" class="standard" cellspacing="0" border="0"><tr><th scope="col" class="standard">&nbsp;</th><th scope="col" class="standard">Mobil Polyrex EM</th><th scope="col" class="standard">Mobil Polyrex EM 103</th></tr><tr><td class="standard">Grade NLGI</td><td class="standard">2</td><td class="standard">3</td></tr><tr><td class="tr_blue">Couleur</td><td class="tr_blue">Bleue</td><td class="tr_blue">Bleue</td></tr><tr><td class="standard">Viscosit� de l'huile de base, ASTM D 445</td><td class="standard">&nbsp;</td><td class="standard">&nbsp;</td></tr><tr><td class="tr_blue">cSt � 40�C</td><td class="tr_blue">115</td><td class="tr_blue">115</td></tr><tr><td class="standard">Indice de viscosit�, ASTM D 2270</td><td class="standard">95</td><td class="standard">95</td></tr><tr><td class="tr_blue">Point de goutte, ASTM D 2265, �C</td><td class="tr_blue">260</td><td class="tr_blue">270</td></tr></table><p xmlns="">&nbsp;</p></div><div style="width:415px; white-space:normal; padding-top:10px;display:none " class="divTabContent" id="Applications Content"><p xmlns="">Les graisses Mobil Polyrex EM sont recommand�es par un grand nombre des plus grands constructeurs de paliers et moteurs �lectriques pour la lubrification de longue dur�e des roulements � billes et � rouleaux.</p><p xmlns="">Il est recommand� d&rsquo;utiliser Mobil Polyrex EM 103 dans des applications telles que des paliers � axe vertical ou sur de tr�s gros moteurs o� la consistance d&rsquo;une graisse plus dure peut �tre exig�e par le constructeur et pour lequel les propri�t�s de r�duction du bruit ne sont pas primordiales.</p><p xmlns="">Les graisses Mobil Polyrex EM sont compatibles avec un grand nombre de graisses au lithium ExxonMobil, et avec des produits concurrents � polyur�e min�rale pour moteurs �lectriques, comme l&rsquo;indique la m�thodologie de la norme ASTM D6185. Pour toutes questions sp�cifiques concernant la compatibilit� des graisses, veuillez contacter votre repr�sentant ExxonMobil.</p><p xmlns="">Les applications clefs comprennent notamment.</p><p xmlns="">&bull; Paliers de moteurs �lectriques<br>
&bull; Paliers de ventilateurs<br>
&bull; Paliers de pompes � haute temp�rature<br>
&bull; Roulements � billes remplis en usine et scell�s � vie<br>
&bull; Paliers ou roulements � billes fonctionnant � haute temp�rature et o� une faible s�paration de l&rsquo;huile est exig�e<br>
&bull; Mobil Polyrex EM pour les roulements � billes ou les paliers exploit�s dans des environnements sensibles au bruit</p></div></td><td valign="top" style="width: 10px; background-image:url('/Images/Tabs/box_Right.png'); background-repeat: repeat-y; background-color: #ffffff;" class="rightBorder"><img src="/Images/Tabs/boxNoFade_RightUpper.png" alt=""/></td></tr><tr id="tabsLower"><td valign="top" style="width: 10px; height: 10px;" id="tabsLowerLeft"><img src="/Images/Tabs/box_LeftLower.png" alt=""/></td><td valign="top" style="width: 435px; background-image:url('/Images/Tabs/box_Lower.png'); background-repeat: repeat-x;" id="tabsLowerMiddle">�</td><td valign="top" style="width: 10px; height: 10px;" id="tabsLowerRight"><img src="/Images/Tabs/box_RightLower.png" alt=""/></td></tr></table></div></div></div><!--#include virtual="Navigation/Footer.aspx"--></div><script type="text/javascript">	
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