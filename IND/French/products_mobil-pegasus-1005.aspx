
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
				<html xmlns="http://www.w3.org/1999/xhtml" xmlns:xalan-nodeset="org.apache.xalan.xslt.extensions.Nodeset" xmlns:java="http://xml.apache.org/xslt/java" xmlns:fo="http://www.w3.org/1999/XSL/Format" xml:lang="fr" lang="fr"><head><title>Mobil Pegasus&trade; 1005: Huile pour moteurs � gaz | Mobil&trade; Industrial Lubricants</title><meta http-equiv="X-UA-Compatible" content="IE=edge"/><meta name="keywords" content="Huile pour moteurs � gaz naturel, Mobil Pegasus, Mobil Pegasus 1005, Lubrifiants Mobil,  Lubrifiants Mobil Pegasus, Pegasus 1005"/><meta name="description" content="Mobil Pegasus&trade; 1005 est un lubrifiant de derni�re g�n�ration, formul� pour vous aider � am�liorer la fiabilit� de vos moteurs et � r�duire vos co�ts d&rsquo;exploitation."/><meta name="date" content="10/2013"/><meta name="language" content="fr"/><meta http-equiv="Content-Language" content="fr"/><link type="text/css" rel="stylesheet" media="all" href="/Imports/mobil_ind.css"/><link type="text/css" rel="stylesheet" media="print" href="/Imports/xom_print.css"/><link type="text/css" title="medium" rel="stylesheet" href="/Imports/xom_web_medium.css"/><link type="text/css" title="large" rel="alternate stylesheet" href="/Imports/xom_web_large.css"/><link type="text/css" title="small" rel="alternate stylesheet" href="/Imports/xom_web_small.css"/>	
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
				<!-- Set 'expires' in http header, start --><% string cacheExpireDateStr="10/19/2016 3:21:12 AM";
        DateTime cacheExpireDate = Convert.ToDateTime(cacheExpireDateStr); 
        Response.AddHeader("Expires",cacheExpireDate.ToUniversalTime().ToString("ddd, dd MMM yyyy HH:mm:ss 'GMT'")); %><!-- end --></head><body class="article"><a href="#mainContent" class="skip">Skip to Main Content</a><div id="container"><!--#include virtual="Navigation/Header.aspx"--><div id="mainPanel" class="clrfix"><!--#include virtual="Navigation/products_left_navigation.aspx"--><div id="toolbar"><!--#include virtual="Services/Toolbox.aspx"--><div class="related"><div class="relatedimg150X68"><a href="products_mobil-shc.aspx"><img xmlns="" title="Mobil SHC" src="Images/150x68_sidecallouts_mobilshc.jpg" longdesc="" border="0" alt="Mobil SHC"><p xmlns=""><a title="" target="" href="products_mobil-shc.aspx" class=""></a> Mobil Pegasus&trade; 1005<br><a title="This link will open a new window." target="_new" href="http://www.mobil.com/France-French/Lubes/PDS/GLXXFRINDMOMobil_Pegasus_1005.aspx">Fiche technique produits (FTP)</a><br><a title="This link will open a new window." target="_new" href="http://www.msds.exxonmobil.com/psims/psims.aspx">Fiche de donn�es de s�curit� (FDS)</a></p></a></div></div><div class="related"><div class="relatedimg150X68"><a href="distributorlocator.aspx"><img xmlns="" title="Lubrifiants Synth�tiques Mobil SHC " src="Images/150x68_sidecallouts_where_to_buy.jpg" longdesc="" border="0" alt="Lubrifiants Synth�tiques Mobil SHC "><p xmlns=""><a title="" target="" href="distributorlocator.aspx" class=""></a>Points de vente<br><a title="" target="" href="distributorlocator.aspx" class="">Trouvez le distributeur le plus proche de chez vous</a></p></a></div></div><div class="related"><div class="relatedimg150X68"><a href="/ind/english/productselector.aspx"><img xmlns="" title="Productivit� " src="Images/150x68_sidecallouts_looble1.jpg" longdesc="" border="0" alt="Productivit� "><p xmlns=""><a title="This link will open a new window." target="_new" href="/ind/english/productselector.aspx"></a></p><p xmlns="">Guide de s�lection de produits Looble<sup>SM</sup>(EN)<br><a title="This link will open a new window." target="_new" href="/ind/english/productselector.aspx">Trouvez les lubrifiants les plus appropri�s � vos applications industrielles</a></p></a></div></div></div><div id="mainContent"><br/><div class="img150 left"><img xmlns="" title="Lubrifiant Mobil Pegasus 1005 dans un moteur � gaz naturel" src="Images/article_150x150_mobil-pegasus-1005.jpg" longdesc="" border="0" alt="Lubrifiant Mobil Pegasus 1005 dans un moteur � gaz naturel"></div><p xmlns=""><b><span style=" font-size: x-large;">Mobil Pegasus&trade; 1005</span></b></p><p xmlns=""><b><span style=" font-size: large;">Huile de qualit� sup�rieure pour une protection optimale des moteurs � gaz</span></b></p><p xmlns="">Avec Mobil Pegasus 1005, conduisez vos moteurs � gaz vers les sommets. Ce lubrifiant de derni�re g�n�ration a �t� formul� pour vous aider � am�liorer la fiabilit� de vos moteurs et � r�duire vos co�ts d&rsquo;exploitation. &nbsp;<br><br>
Mobil Pegasus 1005 a �t� �labor� pour apporter une meilleure protection aux moteurs � gaz � quatre temps, maintenir la production d&rsquo;�nergie � son meilleur niveau, r�duire les �missions � l&rsquo;�chappement et conserver des performances �lev�es sur les moteurs plus anciens. Cette huile, de nouvelle g�n�ration, renforce la r�putation des lubrifiants Mobil Pegasus&trade; en termes de performances durables et �quilibr�es.</p><p xmlns=""><a title="This link will open a new window." target="_new" href="http://www.youtube.com/watch?v=Zw_hKqWJzLw">Mobil Pegasus&trade; 1005</a> (EN)</p><p xmlns=""></p><div id="tabbed_table"><table style="width: 454px   " id="tblTabs" cellspacing="0px" cellpadding="0" border="0"><tr id="tabNav"><td style="height:1px; padding-bottom:-10px; " colspan="5"><div style="z-index:100; " id="divTabs"><ul><li onmouseover="if(this.className!='current')this.className='highlight';" onmouseout="if(this.className!='current')this.className=''" class="current" id="Accueil"><a href="#" onclick="javascript:showTab('Accueil');">Accueil</a></li><li onmouseover="if(this.className!='current')this.className='highlight'" onmouseout="if(this.className!='current')this.className=''" id="Caract�ristiques typiques"><a href="#" onclick="javascript:showTab('Caract�ristiques typiques');">Caract�ristiques typiques</a></li><li onmouseover="if(this.className!='current')this.className='highlight'" onmouseout="if(this.className!='current')this.className=''" id="Applications"><a href="#" onclick="javascript:showTab('Applications');">Applications</a></li></ul></div></td></tr><tr id="trTabContent">
											<td valign="top" style="width: 10px; background-image:url('<%=GetDomain()%>/Images/Tabs/box_Left.png'); background-repeat: repeat-y; background-color: #ffffff;">
												<img class="leftUpperImg" src="<%=GetDomain()%>/Images/Tabs/box_LeftUpper.png" alt=""/>
											</td>									
										<td valign="top" class="midBorder" style="width: 435px; background-image:url('<%=GetDomain()%>/Images/Tabs/boxNoFade_Upper.png'); background-repeat: repeat-x; background-color: #ffffff;">
										<div style="width:434px; white-space:normal; padding-top:10px;display:block " class="divTabContent" id="Accueil Content"><p xmlns="">Mobil Pegasus 1005 est un des meilleurs produits de la gamme de lubrifiants industriels Mobil, r�put�e pour son caract�re innovant, son leadership technologique et sa grande capacit� de performance.</p><p xmlns="">Mobil Pegasus 1005 pr�sente les caract�ristiques et offre les avantages potentiels suivants:</p><table xmlns="" width="100%" summary="" class="standard" cellspacing="0" border="0"><tr><th scope="col" class="standard">Caract�ristiques</th><th scope="col" class="standard">Avantages et b�n�fices potentiels</th></tr><tr><td class="standard">Dur�e de vie de l&rsquo;huile prolong�e</td><td class="standard">Intervalles plus longs entre les vidanges, r�duction du nombre de vidanges, moins d&rsquo;achats d&rsquo;huile, moins de rejets d&rsquo;huile et moins de co�ts de main d&rsquo;&#339;uvre pour une baisse des co�ts d&rsquo;exploitation et une plus grande disponibilit� du moteur<br>
Meilleure productivit� gr�ce � une plus grande disponibilit� du moteur</td></tr><tr><td class="tr_blue">Performance propret�</td><td class="tr_blue">Aide � contr�ler des d�p�ts dans la chambre de combustion et les pistons pour une efficacit� et une fiabilit� maximales du moteur<br>
Aide � contr�ler des d�p�ts dans les �changeurs de chaleur pour maximiser la production de chaleur</td></tr><tr><td class="standard">Faible consommation d&rsquo;huile</td><td class="standard">Faible volatilit� de l&rsquo;huile permettant de r�duire les d�p�ts dans le syst�me d&rsquo;�chappement et le moteur, de prolonger la dur�e de vie du convertisseur catalytique et d&rsquo;�tendre les intervalles entre les nettoyages des �changeurs de chaleur<br>
Aide � r�duire le nombre de remplissages d&rsquo;appoint en huile et d&rsquo;achats de lubrifiant</td></tr><tr><td class="tr_blue">Protection exceptionnelle contre l&rsquo;usure</td><td class="tr_blue">Aide � contr�ler l&rsquo;usure des �l�ments sollicit�s du moteur<br>
Maximisation de la fiabilit� et de la performance du moteur</td></tr></table><p xmlns="">&nbsp;</p></div><div style="width:415px; white-space:normal; padding-top:10px;display:none " class="divTabContent" id="Caract�ristiques typiques Content"><table xmlns="" width="100%" summary="" class="standard" cellspacing="0" border="0"><tr><th scope="col" class="standard">Mobil Pegasus 1005</th><th scope="col" class="standard">1005</th></tr><tr><td class="standard">Viscosit�, ASTM D 445</td><td class="standard">&nbsp;</td></tr><tr><td class="tr_blue">mm�/s � 40�C</td><td class="tr_blue">125</td></tr><tr><td class="standard">mm�/s � 100�C</td><td class="standard">13</td></tr><tr><td class="tr_blue">Indice de viscosit�, ASTM D 2270</td><td class="tr_blue">100</td></tr><tr><td class="standard">Point d'�coulement, �C, ASTM D97</td><td class="standard">-15</td></tr><tr><td class="tr_blue">Point d'�clair, �C, ASTM D92</td><td class="tr_blue">247</td></tr></table><p xmlns="">&nbsp;</p></div><div style="width:415px; white-space:normal; padding-top:10px;display:none " class="divTabContent" id="Applications Content"><p xmlns="">Mobil Pegasus 1005 est formul�e pour �tre utilis�e dans :</p><p xmlns="">&bull; Les moteurs Caterpillar, MWM GmBh (Formerly Deutz Power Systems), Jenbacher, Rolls Royce-Bergen, Wartsila, Waukesha et autres moteurs turbo, moteurs � aspiration naturelle, moteurs � 4 temps � vitesse moyenne ou rapide, exigeant une huile � faible teneur en cendres<br>
&bull; Moteurs � 4 temps � m�lange pauvre et stoechiom�triques utilis�s en charge �lev�e et/ou des temp�ratures �lev�es<br>
&bull; Moteurs � 4 temps � haute vitesse utilis�s dans les applications de cog�n�ration<br>
&bull; Moteurs � gaz naturel �quip�s de convertisseurs catalytiques<br>
&bull; Applications utilisant des combustibles alternatifs � faible teneur en soufre ou chlore<br>
&bull; Op�rations de collecte sur le terrain o� la teneur en gaz acide H2S est &lsaquo; 0,1 % (1000 ppm) et permet d&rsquo;utiliser ce gaz de fermentation comme carburant</p></div></td>
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