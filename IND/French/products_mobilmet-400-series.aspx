
			
			<%@ Page Language="C#" AutoEventWireup="false" Inherits="XOM.Common.Web.XOMPage" %>
			<%@ Register TagPrefix="XOM" Namespace="XOM.Common.Web" Assembly="XOMCommon" %>
			<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml" xmlns:xalan-nodeset="org.apache.xalan.xslt.extensions.Nodeset" xmlns:java="http://xml.apache.org/xslt/java" xmlns:fo="http://www.w3.org/1999/XSL/Format" xml:lang="fr" lang="fr"><head><meta http-equiv="X-UA-Compatible" content="IE=8"><title>Huiles de coupe : Mobilmet&trade; 400 | Mobil&trade;Industrial Lubricants </title><meta name="keywords" content="Mobilmet 400, Mobilmet, Mobilmet 400, huile de coupe, huile de coupe de m�taux, huile de coupe mobil, lubrifiants pour machine-outil"/><meta name="description" content="Les huiles de coupe Mobilmet&trade; 400 fournissent des performances d&rsquo;usinage efficaces sur une large gamme d&rsquo;applications de coupe et de travail des m�taux, pour des op�rations d&rsquo;usinage peu ou moyennement s�v�res."/><meta name="date" content="10/2013"/><meta name="language" content="fr"/><meta http-equiv="Content-Language" content="fr"/><link type="text/css" rel="stylesheet" media="all" href="/Imports/mobil_ind.css"/><link type="text/css" rel="stylesheet" media="print" href="/Imports/xom_print.css"/><link type="text/css" title="medium" rel="stylesheet" href="/Imports/xom_web_medium.css"/><link type="text/css" title="large" rel="alternate stylesheet" href="/Imports/xom_web_large.css"/><link type="text/css" title="small" rel="alternate stylesheet" href="/Imports/xom_web_small.css"/><link type="text/css" rel="stylesheet" media="all" href="/Imports/xom_lightview.css"/>
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
				<!-- Set 'expires' in http header, start --><% string cacheExpireDateStr="6/30/2014 6:01:49 PM";
        DateTime cacheExpireDate = Convert.ToDateTime(cacheExpireDateStr); 
        Response.AddHeader("Expires",cacheExpireDate.ToUniversalTime().ToString("ddd, dd MMM yyyy HH:mm:ss 'GMT'")); %><!-- end --></head><body class="article"><a href="#mainContent" class="skip">Skip to Main Content</a><div id="container"><!--#include virtual="Navigation/Header.aspx"--><div id="mainPanel" class="clrfix"><!--#include virtual="Navigation/products_left_navigation.aspx"--><div id="toolbar"><!--#include virtual="Services/Toolbox.aspx"--><div class="related"><div class="relatedimg150X68"><a href="products_mobil-shc.aspx"><img xmlns="" title="Mobil SHC" src="/IND/English/Images/150x68_sidecallouts_mobilshc.jpg" longdesc="" border="0" alt="Mobil SHC"><p xmlns=""><a title="" target="" href="products_mobil-shc.aspx" class=""></a> Mobilmet&trade; 400<br><a title="This link will open a new window." target="_new" href="http://www.mobil.com/France-French/Lubes/PDS/GLXXFRINDMOMobilmet_420.aspx">Fiche technique produits (FTP)</a><br><a title="This link will open a new window." target="_new" href="http://www.msds.exxonmobil.com/psims/psims.aspx">Fiche de donn�es de s�curit� (FDS)</a></p></a></div></div><div class="related"><div class="relatedimg150X68"><a href="distributorlocator.aspx"><img xmlns="" title="Lubrifiants Synth�tiques Mobil SHC " src="/IND/English/Images/150x68_sidecallouts_where_to_buy.jpg" longdesc="" border="0" alt="Lubrifiants Synth�tiques Mobil SHC "><p xmlns=""><a title="" target="" href="distributorlocator.aspx" class=""></a>Points de vente<br><a title="" target="" href="distributorlocator.aspx" class="">Trouvez le distributeur le plus proche de chez vous</a></p></a></div></div><div class="related"><div class="relatedimg150X68"><a href="/ind/english/productselector.aspx"><img xmlns="" title="Productivit� " src="/IND/English/Images/150x68_sidecallouts_looble1.jpg" longdesc="" border="0" alt="Productivit� "><p xmlns=""><a title="This link will open a new window." target="_new" href="/ind/english/productselector.aspx"></a></p><p xmlns="">Guide de s�lection de produits Looble<sup>SM</sup>(EN)<br><a title="This link will open a new window." target="_new" href="/ind/english/productselector.aspx">Trouvez les lubrifiants les plus appropri�s � vos applications industrielles</a></p></a></div></div></div><div id="mainContent"><div class="img150 left"><img xmlns="" title="Huile de coupe enti�re Mobilmet 400, arrosant des engrenages " src="/IND/English/Images/article_150x150_mobilmet-400-series.jpg" longdesc="" border="0" alt="Huile de coupe enti�re Mobilmet 400, arrosant des engrenages "></div><p xmlns=""><span style=" font-size: x-large;"><b>Gamme Mobilmet&trade; 400</b></span></p><p xmlns=""><span style=" font-size: large;"><b>Huiles de coupe hautes performances</b></span></p><p xmlns="">Con�ues pour les op�rations de coupe peu ou moyennement s�v�res, les huiles de la gamme Mobilmet 400 fournissent d&rsquo;excellentes performances d&rsquo;usinage � un large �ventail d&rsquo;applications de m�taux ferreux et non ferreux. Elles sont �galement &nbsp;utilis�es pour la lubrification des machines-outils et pour les circuits hydrauliques en service l�ger.</p><p xmlns="">Peu color�es et transparentes pour une visibilit� optimale de l&rsquo;environnement de travail, les huiles de la s�rie Mobilmet 400 r�sistent � la formation de la mousse, m�me en cas d&rsquo;�claboussures extr�mes. Elles sont formul�es � partir d&rsquo;additifs sans chlore, ce qui permet de contr�ler les impacts de l&rsquo;�limination et du d�versement sur l&rsquo;environnement.</p><p xmlns=""></p><div id="tabbed_table"><table style="width: 454px   " id="tblTabs" cellspacing="0px" cellpadding="0" border="0"><tr id="tabNav"><td style="height:1px; padding-bottom:-10px; " colspan="5"><div style="z-index:100; " id="divTabs"><ul><li onmouseover="if(this.className!='current')this.className='highlight';" onmouseout="if(this.className!='current')this.className=''" class="current" id="Accueil"><a href="#" onclick="javascript:showTab('Accueil');">Accueil</a></li><li onmouseover="if(this.className!='current')this.className='highlight'" onmouseout="if(this.className!='current')this.className=''" id="Specifications"><a href="#" onclick="javascript:showTab('Specifications');">Specifications</a></li><li onmouseover="if(this.className!='current')this.className='highlight'" onmouseout="if(this.className!='current')this.className=''" id="Applications"><a href="#" onclick="javascript:showTab('Applications');">Applications</a></li></ul></div></td></tr><tr id="trTabContent"><td valign="top" style="width: 10px; background-image:url('/Images/Tabs/box_Left.png'); background-repeat: repeat-y; background-color: #ffffff;"><img src="/Images/Tabs/box_LeftUpper.png" class="leftUpperImg" alt=""/></td><td valign="top" style="width: 435px; background-image:url('/Images/Tabs/boxNoFade_Upper.png'); background-repeat: repeat-x; background-color: #ffffff;" class="midBorder"><div style="width:434px; white-space:normal; padding-top:10px;display:block " class="divTabContent" id="Accueil Content"><p xmlns="">&bull; Production accrue gr�ce � une plus longue dur�e de vie des outils et une r�duction des temps d&rsquo;arr�t pour le changement des outils et le dressage des meules.<br>
&bull; Finition de la surface et pr�cision des cotes am�lior�e, donnant ainsi moins de rejets et des pi�ces finies de meilleure qualit�.<br>
&bull; Permet d'accro�tre les taux d'alimentation et les r�gimes de la machine<br>
&bull; Moindre quantit� d'huiles de coupe n�cessaires, r�duction potentielle des co�ts d&rsquo;inventaire<br>
&bull; �limine les risques de contamination crois�e et fournit d'autres avantages pour l'inventaire<br>
&bull; Permet de bien voir la zone de travail en permanence</p></div><div style="width:415px; white-space:normal; padding-top:10px;display:none " class="divTabContent" id="Specifications Content"><table xmlns="" width="100%" summary="" class="standard" cellspacing="0" border="0"><tr><th scope="col" class="standard">Mobilmet S�rie 420</th><th scope="col" class="standard">423</th><th scope="col" class="standard">424</th><th scope="col" class="standard">426</th><th scope="col" class="standard">427</th></tr><tr><td class="standard">Viscosit�, ASTM D 445</td><td class="standard">&nbsp;</td><td class="standard">&nbsp;</td><td class="standard">&nbsp;</td><td class="standard">&nbsp;</td></tr><tr><td class="tr_blue">cSt � 40 �C</td><td class="tr_blue">15</td><td class="tr_blue">23</td><td class="tr_blue">32</td><td class="tr_blue">46</td></tr><tr><td class="standard">cSt � 100�C</td><td class="standard">3,5</td><td class="standard">4,9</td><td class="standard">5,7</td><td class="standard">6.9</td></tr><tr><td class="tr_blue">Point d'�coulement, �C, ASTM D 97</td><td class="tr_blue">-15</td><td class="tr_blue">-15</td><td class="tr_blue">-15</td><td class="tr_blue">-12</td></tr><tr><td class="standard">Point d&rsquo;�clair, �C, ASTM D 92</td><td class="standard">3,5</td><td class="standard">4,9</td><td class="standard">5,7</td><td class="standard">212</td></tr><tr><td class="tr_blue">Densit� � 15 �C kg/l, ASTM D 1298</td><td class="tr_blue">0,859</td><td class="tr_blue">0,862</td><td class="tr_blue">0,874</td><td class="tr_blue">0,877</td></tr><tr><td class="standard">Corrosion lame de cuivre, ASTM D 130, 3 h � 100�C</td><td class="standard">1B (max)</td><td class="standard">1B (max)</td><td class="standard">1B (max)</td><td class="standard">1B (max)</td></tr></table><p xmlns="">&nbsp;</p></div><div style="width:415px; white-space:normal; padding-top:10px;display:none " class="divTabContent" id="Applications Content"><p xmlns="">Les huiles Mobilmet S�rie 420 sont recommand�es dans une large gamme d'op�rations d'usinage sur tous types de m�taux. Elles peuvent �tre utilis�es comme huile polyvalente pour la lubrification des machines-outils, dans les syst�mes hydrauliques sous respect que la viscosit� soit ad�quate.</p><p xmlns="">&bull; Les Mobilmet&trade; 423 et 424 sont recommand�es pour l'usinage de l'aluminium, du magn�sium, du cuivre, des laitons et des bronzes et, �galement pour les aciers et fontes ayant une duret� Brinell jusqu'� 200. Elles peuvent �tre utilis�es pour les op�rations de coupe intensives et difficiles des alliages non ferreux tels que le silicium-cuivre, le silicium-bronze et le cuivre-nickel. Ce sont des lubrifiants tr�s efficaces destin�s aux syst�mes de lubrification de machines-outils dans une large gamme de temp�ratures<br>
&bull; Les Mobilmet&trade; 426 et 427 sont recommand�s pour l'usinage critique des m�taux non ferreux et pour les op�rations automatiques sur les mat�riaux ayant une duret� Brinell jusqu'� environ 300.</p></div></td><td valign="top" style="width: 10px; background-image:url('/Images/Tabs/box_Right.png'); background-repeat: repeat-y; background-color: #ffffff;" class="rightBorder"><img src="/Images/Tabs/boxNoFade_RightUpper.png" alt=""/></td></tr><tr id="tabsLower"><td valign="top" style="width: 10px; height: 10px;" id="tabsLowerLeft"><img src="/Images/Tabs/box_LeftLower.png" alt=""/></td><td valign="top" style="width: 435px; background-image:url('/Images/Tabs/box_Lower.png'); background-repeat: repeat-x;" id="tabsLowerMiddle">�</td><td valign="top" style="width: 10px; height: 10px;" id="tabsLowerRight"><img src="/Images/Tabs/box_RightLower.png" alt=""/></td></tr></table></div></div></div><!--#include virtual="Navigation/Footer.aspx"--></div><script type="text/javascript">	
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