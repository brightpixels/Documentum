
			
			<%@ Page Language="C#" AutoEventWireup="false" Inherits="XOM.Common.Web.XOMPage" %>
			<%@ Register TagPrefix="XOM" Namespace="XOM.Common.Web" Assembly="XOMCommon" %>
			<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml" xmlns:xalan-nodeset="org.apache.xalan.xslt.extensions.Nodeset" xmlns:java="http://xml.apache.org/xslt/java" xmlns:fo="http://www.w3.org/1999/XSL/Format" xml:lang="fr" lang="fr"><head><meta http-equiv="X-UA-Compatible" content="IE=8"><title>Graisses synth�tiques Polyrex : S�rie Mobil SHC Polyrex&trade; | Mobil&trade; Industrial Lubricants</title><meta name="keywords" content="Graisses synth�tiques Polyrex : S�rie Mobil SHC Polyrex&trade; | Mobil&trade; Industrial Lubricants"/><meta name="description" content="La  gamme des graisses Mobil SHC Polyrex&trade; est sp�cialement  formul�e pour am�liorer votre productivit� en applications industrielles et agro-alimentaires."/><meta name="date" content="10/2013"/><meta name="language" content="fr"/><meta http-equiv="Content-Language" content="fr"/><link type="text/css" rel="stylesheet" media="all" href="/Imports/mobil_ind.css"/><link type="text/css" rel="stylesheet" media="print" href="/Imports/xom_print.css"/><link type="text/css" title="medium" rel="stylesheet" href="/Imports/xom_web_medium.css"/><link type="text/css" title="large" rel="alternate stylesheet" href="/Imports/xom_web_large.css"/><link type="text/css" title="small" rel="alternate stylesheet" href="/Imports/xom_web_small.css"/><link type="text/css" rel="stylesheet" media="all" href="/Imports/xom_lightview.css"/>
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
				<!-- Set 'expires' in http header, start --><% string cacheExpireDateStr="6/9/2015 9:54:38 AM";
        DateTime cacheExpireDate = Convert.ToDateTime(cacheExpireDateStr); 
        Response.AddHeader("Expires",cacheExpireDate.ToUniversalTime().ToString("ddd, dd MMM yyyy HH:mm:ss 'GMT'")); %><!-- end --></head><body class="article"><a href="#mainContent" class="skip">Skip to Main Content</a><div id="container"><!--#include virtual="Navigation/Header.aspx"--><div id="mainPanel" class="clrfix"><!--#include virtual="Navigation/products_left_navigation.aspx"--><div id="toolbar"><!--#include virtual="Services/Toolbox.aspx"--><div class="related"><div class="relatedimg150X68"><a href="products_mobil-shc.aspx"><img xmlns="" title="Mobil SHC" src="/IND/English/Images/150x68_sidecallouts_mobilshc.jpg" longdesc="" border="0" alt="Mobil SHC"><p xmlns=""><a title="" target="" href="products_mobil-shc.aspx" class=""></a> Mobil SHC&trade; Polyrex<br><a title="This link will open a new window." target="_new" href="http://www.mobil.com/France-French/Lubes/PDS/GLXXFRGRSMOMobil_SHC_Polyrex_Series.aspx">Fiche technique produits (FTP)</a><br><a title="This link will open a new window." target="_new" href="http://www.msds.exxonmobil.com/psims/psims.aspx">Fiche de donn�es de s�curit� (FDS)</a></p></a></div></div><div class="related"><div class="relatedimg150X68"><a href="distributorlocator.aspx"><img xmlns="" title="Lubrifiants Synth�tiques Mobil SHC " src="/IND/English/Images/150x68_sidecallouts_where_to_buy.jpg" longdesc="" border="0" alt="Lubrifiants Synth�tiques Mobil SHC "><p xmlns=""><a title="" target="" href="distributorlocator.aspx" class=""></a>Points de vente<br><a title="" target="" href="distributorlocator.aspx" class="">Trouvez le distributeur le plus proche de chez vous</a></p></a></div></div><div class="related"><div class="relatedimg150X68"><a href="/ind/english/productselector.aspx"><img xmlns="" title="Productivit� " src="/IND/English/Images/150x68_sidecallouts_looble1.jpg" longdesc="" border="0" alt="Productivit� "><p xmlns=""><a title="This link will open a new window." target="_new" href="/ind/english/productselector.aspx"></a></p><p xmlns="">Guide de s�lection de produits Looble<sup>SM</sup>(EN)<br><a title="This link will open a new window." target="_new" href="/ind/english/productselector.aspx">Trouvez les lubrifiants les plus appropri�s � vos applications industrielles</a></p></a></div></div></div><div id="mainContent"><div class="img150 left"><img xmlns="" title="Graisse Mobil Polyrex utilis�e sur des paliers d&rsquo;engrenages" src="/IND/English/Images/article_150x150_Polyrex.jpg" longdesc="" border="0" alt="Graisse Mobil Polyrex utilis�e sur des paliers d&rsquo;engrenages"></div><p xmlns=""><span style=" font-size: x-large;"><b>S�rie Mobil SHC Polyrex&trade;</b></span></p><p xmlns=""><span style=" font-size: large;"><b>Graisses synth�tiques polyur�es pour hautes temp�ratures</b></span></p><p xmlns="">La gamme de graisses Mobil SHC Polyrex est sp�cialement formul�e pour am�liorer votre productivit� en r�solvant les probl�mes de lubrification � haute temp�rature dans les applications industrielles et agro- alimentaires. &nbsp;La s�rie de graisses Mobil SHC Polyrex&trade; a �t� �labor�e pour vous offrir des performances � hautes temp�ratures, une excellente r�sistance � l&rsquo;eau et un syst�me anti-usure.</p><p xmlns=""><b>S�curit� assur�e</b><br>
Toutes les graisses Mobil SHC Polyrex sont enregistr�es NSF H1 et sont conformes � la d�nomination 21 CFR 178.3570 attribu�e par l&rsquo;organisme am�ricain � Food and Drug Administration � pour les lubrifiants pouvant entrer accidentellement en contact avec les aliments. En outre, elles r�pondent aux exigences Kasher, et sont fabriqu�es dans les usines certifi�es &nbsp;ISO 21469 pour un maintien de l&rsquo;int�grit� du produit au plus haut niveau.</p><p xmlns=""><a title="This link will open a new window." target="_new" href="/IND/English/files/polyurea-grease-mobil-shc-polyrex.pdf">Mobil SHC&trade; Polyrex: fiche descriptive<img src="/Images/Icons/icon_pdf_whitespace.jpg" border="0" alt=""></a> (EN)</p><p xmlns=""><a title="This link will open a new window." target="_new" href="/IND/English/files/mobil-food-machinery-lubricants-guide.pdf">Guide de s�lection des Lubrifiants pour l&rsquo;Industrie Agro-alimentaire<img src="/Images/Icons/icon_pdf_whitespace.jpg" border="0" alt=""></a> (EN)</p><p xmlns=""><a title="This link will open a new window." target="_new" href="http://www.youtube.com/watch?v=4mTDExQkrIU">Ing�nierie et fabrication industrielle avec Ian Davidson</a> (EN)</p><p xmlns=""></p><div id="tabbed_table"><table style="width: 454px   " id="tblTabs" cellspacing="0px" cellpadding="0" border="0"><tr id="tabNav"><td style="height:1px; padding-bottom:-10px; " colspan="5"><div style="z-index:100; " id="divTabs"><ul><li onmouseover="if(this.className!='current')this.className='highlight';" onmouseout="if(this.className!='current')this.className=''" class="current" id="Accueil"><a href="#" onclick="javascript:showTab('Accueil');">Accueil</a></li><li onmouseover="if(this.className!='current')this.className='highlight'" onmouseout="if(this.className!='current')this.className=''" id="Specifications"><a href="#" onclick="javascript:showTab('Specifications');">Specifications</a></li><li onmouseover="if(this.className!='current')this.className='highlight'" onmouseout="if(this.className!='current')this.className=''" id="Applications"><a href="#" onclick="javascript:showTab('Applications');">Applications</a></li></ul></div></td></tr><tr id="trTabContent"><td valign="top" style="width: 10px; background-image:url('/Images/Tabs/box_Left.png'); background-repeat: repeat-y; background-color: #ffffff;"><img src="/Images/Tabs/box_LeftUpper.png" class="leftUpperImg" alt=""/></td><td valign="top" style="width: 435px; background-image:url('/Images/Tabs/boxNoFade_Upper.png'); background-repeat: repeat-x; background-color: #ffffff;" class="midBorder"><div style="width:434px; white-space:normal; padding-top:10px;display:block " class="divTabContent" id="Accueil Content"><p xmlns="">Les huiles et graisses de marque Mobil&trade; sont reconnues partout dans le monde pour leur caract�re innovant et leurs performances exceptionnelles. Mobil SHC Polyrex utilise la technologie perfectionn�e des �paississants polyur�s de la gamme de graisses Mobil Polyrex pour fournir un produit pr�sentant des performances excellentes et une bonne r�ponse aux probl�matiques de lubrification les plus s�v�res de l&rsquo;industrie. Mobil SHC Polyrex donne une autre dimension aux performances gr�ce � l&rsquo;ajout d&rsquo;une combinaison unique entre huiles synth�tiques, polym�res et un choix equilibr� d&rsquo;additifs visant � r�soudre les probl�mes de lubrification les plus s�v�res.</p><p xmlns="">&bull; Peuvent �tre utilis�s dans les applications de traitement et de conditionnement de boissons et des aliments<br>
&bull; Assurance de l'int�grit� du produit � travers un proc�d� ind�pendant de v�rification<br>
&bull; Permet de fournir une protection dans les conditions difficiles et la possibilit� de prolonger les intervalles de regraissage<br>
&bull; Aide � r�duire l&rsquo;usure des paliers dans le cas de charges lourdes<br>
&bull; Aide � r�duire la consommation de graisse et � augmenter la protection des roulements dans les applications soumis au d�lavage par l&rsquo;eau. Aide � r�duire la rouille et la corrosion afin de prolonger la dur�e de vie des appareils</p></div><div style="width:415px; white-space:normal; padding-top:10px;display:none " class="divTabContent" id="Specifications Content"><table xmlns="" width="100%" summary="" class="standard" cellspacing="0" border="0"><tr><th scope="col" class="standard"><b>Mobil SHC Polyrex Series</b>&nbsp;</th><th scope="col" class="standard"><p><div align="center"><b>Mobil SHC Polyrex</b>&trade;<b> 005</b></div></p></th><th scope="col" class="standard"><p><div align="center"><b>Mobil SHC Polyrex</b>&trade;<b> 221</b></div></p></th><th scope="col" class="standard"><p><div align="center"><b>Mobil SHC Polyrex</b>&trade;<b> 222</b></div></p></th><th scope="col" class="standard"><p><div align="center"><b>Mobil SHC Polyrex</b>&trade;<b> 462</b></div></p></th></tr><tr><td class="standard"><p>NLGI Grade</p></td><td class="standard"><p><div align="center">00</div></p></td><td class="standard"><p><div align="center">1</div></p></td><td class="standard"><p><div align="center">2</div></p></td><td class="standard"><p><div align="center">2</div></p></td></tr><tr><td class="tr_blue"><p>Nature du savon</p></td><td class="tr_blue"><p>Polyur�e</p></td><td class="tr_blue"><p>Polyur�e</p></td><td class="tr_blue"><p>Polyur�e</p></td><td class="tr_blue"><p>Polyur�e</p></td></tr><tr><td class="standard"><p>Couleur</p></td><td class="standard"><p><div align="center">Blanche</div></p></td><td class="standard"><p><div align="center">Blanche</div></p></td><td class="standard"><p><div align="center">Blanche</div></p></td><td class="standard"><p><div align="center">Blanche</div></p></td></tr><tr><td class="tr_blue"><p>Point de goutte, ASTM D 2265, �C</p></td><td class="tr_blue"><p><div align="center">260</div></p></td><td class="tr_blue"><p><div align="center">270</div></p></td><td class="tr_blue"><p><div align="center">260</div></p></td><td class="tr_blue"><p><div align="center">270</div></p></td></tr><tr><td class="standard"><p>Viscosit�, ASTM D445 @ 40 �C, mm�/s</p></td><td class="standard"><p><div align="center">220</div></p></td><td class="standard"><p><div align="center">220</div></p></td><td class="standard"><p><div align="center">220</div></p></td><td class="standard"><p><div align="center">460</div></p></td></tr></table></div><div style="width:415px; white-space:normal; padding-top:10px;display:none " class="divTabContent" id="Applications Content"><p xmlns="">Remarques concernant leur application : bien que les graisses de la s�rie Mobil SHC Polyrex soient compatibles avec de nombreuses graisses � base polyur�e ou de lithium complexe, le m�lange peut alt�rer leurs performances. Il est donc conseill�, avant de commencer � utiliser les graisses Mobil SHC Polyrex dans un syst�me, de le nettoyer enti�rement afin d&rsquo;optimiser les avantages en termes de performances:</p><p xmlns="">&bull; Mobil SHC Polyrex&trade; 005 est une graisse de grade NLGI 00 sp�cialement con�ue pour �tre utilis�e dans les syst�mes de graissage centralis�s. Sa meilleure pompabilit� et sa fluidit� � basse temp�rature en font un choix id�al pour les syst�mes de graissage soumis � de basses temp�ratures ambiantes, comme ceux rencontr�s dans les cong�lateurs de l&rsquo;industrie alimentaire ou dans les applications ext�rieures. Mobil SHC Polyrex 005 peut aussi �tre utilis�e pour lubrifier les engrenages ferm�s de r�ducteurs de faible �tanch�it�. Il est conseill� de respecter les temp�ratures de fonctionnement comprises entre &ndash;30 et 170 �C.<br>
&bull; Mobil SHC Polyrex&trade; 221 est une graisse polyvalente de grade NLGI 1, conseill�e pour les paliers lisses et roulements anti-friction fortement charg�s. Il est conseill� de respecter les temp�ratures de fonctionnement comprises entre &ndash;30 et 170�C.<br>
&bull; Mobil SHC Polyrex&trade; 222 est une graisse polyvalente de grade NLGI 2, conseill�e pour les paliers lisses et roulements anti-friction fortement charg�s. Il est conseill� de respecter les temp�ratures de fonctionnement comprises entre &ndash;30 et 170�C.<br>
&bull; Mobil SHC Polyrex&trade; 462 est une graisse de grade NLGI 2, recommand�e pour les paliers lisses et roulements anti-friction fortement charg�s. Elle est �galement conseill�e pour les roulements fonctionnant � des temp�ratures extr�mes, comme les rouleaux soumis � la vapeur, les paliers de ventilateurs d&rsquo;�chappement, les roulements de rouleaux de feutre et les roulements de convoyeurs de four. Il est conseill� de respecter les temp�ratures de fonctionnement comprises entre &ndash;20 et 170 �C.</p></div></td><td valign="top" style="width: 10px; background-image:url('/Images/Tabs/box_Right.png'); background-repeat: repeat-y; background-color: #ffffff;" class="rightBorder"><img src="/Images/Tabs/boxNoFade_RightUpper.png" alt=""/></td></tr><tr id="tabsLower"><td valign="top" style="width: 10px; height: 10px;" id="tabsLowerLeft"><img src="/Images/Tabs/box_LeftLower.png" alt=""/></td><td valign="top" style="width: 435px; background-image:url('/Images/Tabs/box_Lower.png'); background-repeat: repeat-x;" id="tabsLowerMiddle">�</td><td valign="top" style="width: 10px; height: 10px;" id="tabsLowerRight"><img src="/Images/Tabs/box_RightLower.png" alt=""/></td></tr></table></div></div></div><!--#include virtual="Navigation/Footer.aspx"--></div><script type="text/javascript">	
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