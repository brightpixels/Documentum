
			
			<%@ Page Language="C#" AutoEventWireup="false" Inherits="XOM.Common.Web.XOMPage" %>
			<%@ Register TagPrefix="XOM" Namespace="XOM.Common.Web" Assembly="XOMCommon" %>
			
				<script runat=server>
					protected String GetDomain()
					{
						string hostname = Request.ServerVariables.Get("SERVER_NAME");
						string domain = string.Empty;
						if (hostname.Contains("www.mobilindustrial.com") )
							{
								domain = "http://www.mobil.com.cn";
							} 
						else
							{
								domain = "";
							}
						return domain;
					}
				</script>					
			<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
			
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:xalan-nodeset="org.apache.xalan.xslt.extensions.Nodeset" xmlns:java="http://xml.apache.org/xslt/java" xmlns:fo="http://www.w3.org/1999/XSL/Format" xml:lang="it" lang="it"><head><title>Argomenti Tecnici | Mobil&trade; Industrial Lubricants</title><meta http-equiv="X-UA-Compatible" content="IE=edge"/><meta name="keywords" content="Manutenzione macchine , soluzioni tecniche lubrificanti industriali, sostegno olio sintetico industriale , sostegno oli minerali industriali , lubrificanti industriali problemi tecnici"/><meta name="description" content="Gli approfondimenti tecnici vi aiutano ad ampliare le conoscenze sui macchinari industriali."/><meta name="date" content="09/2014"/><meta name="language" content="it"/><meta http-equiv="Content-Language" content="it"/><link type="text/css" rel="stylesheet" media="all" href="/Imports/mobil_ind.css"/><link type="text/css" rel="stylesheet" media="print" href="/Imports/xom_print.css"/><link type="text/css" title="medium" rel="stylesheet" href="/Imports/xom_web_medium.css"/><link type="text/css" title="large" rel="alternate stylesheet" href="/Imports/xom_web_large.css"/><link type="text/css" title="small" rel="alternate stylesheet" href="/Imports/xom_web_small.css"/>	
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
				</script><![endif]--><!-- Set 'expires' in http header, start --><% string cacheExpireDateStr="4/28/2015 6:32:53 AM";
        DateTime cacheExpireDate = Convert.ToDateTime(cacheExpireDateStr); 
        Response.AddHeader("Expires",cacheExpireDate.ToUniversalTime().ToString("ddd, dd MMM yyyy HH:mm:ss 'GMT'")); %><!-- end --></head><body class="article"><a href="#mainContent" class="skip">Skip to Main Content</a><div id="container"><!--#include virtual="Navigation/Header.aspx"--><div id="mainPanel" class="clrfix"><!--#include virtual="Navigation/technicalresources_left_navigation.aspx"--><div id="toolbar"><!--#include virtual="Services/Toolbox.aspx"--><div class="related"><div class="relatedimg150X68"><a href="products_mobil-shc.aspx"><img xmlns="" title="Mobil SHC" src="/IND/English/Images/150x68_sidecallouts_mobilSHC.jpg" longdesc="" border="0" alt="Mobil SHC"><p xmlns=""><a title="" target="" href="products_mobil-shc.aspx"></a><br>
Mobil SHC&trade;<br><a target="" href="http://www.exxonmobil.com/pdssearch/Search.aspx?chooseLanguage=it">Schede tecniche dei prodotti (PDS)</a><br><a title="This link will open a new window." target="_new" href="http://www.msds.exxonmobil.com/psims/psims.aspx">Schede &nbsp;di igiene e sicurezza dei prodotti (MSDS)</a></p></a></div></div><div class="related"><div class="relatedimg150X68"><a href="distributorlocator.aspx"><img xmlns="" title="Dove acquistare" src="/IND/English/Images/150x68_sidecallouts_where_to_buy.jpg" longdesc="" border="0" alt="Dove acquistare"><p xmlns=""><a title="" target="" href="distributorlocator.aspx"></a><br>
Dove acquistare<br><a title="" target="" href="distributorlocator.aspx">Trovate l&rsquo;Authorized Distributor della ExxonMobil pił vicino a voi</a></p></a></div></div><div class="related"><div class="relatedimg150X68"><a href="/Apps/ILS/default_EN.aspx"><img xmlns="" title="Looble" src="/IND/English/Images/150x68_sidecallouts_looble1.jpg" longdesc="" border="0" alt="Looble"><p xmlns=""><a title="This link will open a new window." target="_new" href="/Apps/ILS/default_EN.aspx"></a><br>
Selettore prodotti Looble<sup>SM</sup> (EN)<br><a title="This link will open a new window." target="_new" href="/Apps/ILS/default_EN.aspx">Trovate il lubrificante giusto per le vostre esigenze</a></p></a></div></div></div><div id="mainContent"><br/><div class="img150 left"><img xmlns="" title="Case studies sui macchinari industriali" src="/IND/English/Images/article_150x150_learning-centre.jpg" longdesc="" border="0" alt="Case studies sui macchinari industriali"></div><p xmlns=""><span style=" font-size: x-large;"><b>Approfondimenti tecnici<br></b></span><br><span style=" font-size: large;"><b>Per saperne di pił sui lubrificanti industriali Mobil&trade;</b></span><b><br><br></b>Ampliate la conoscenza sui vostri macchinari, sulle possibili problematiche operative e scoprite come sono formulati i lubrificanti industriali Mobil per poter soddisfare al meglio le vostre esigenze. Sia che si tratti di grassi o di oli minerali o sintetici, siamo comunque in grado di offrire una vasta gamma di soluzioni per le diverse tipologie di macchinari del vostro settore, tutte formulate per aiutarvi a ridurre i tempi di inattivitą e ad aumentare la produttivitą. Per maggiori informazioni e per scoprire i recenti case studies che descrivono come abbiamo aiutato aziende come la vostra a migliorare la loro produttivitą, visitate i siti web cliccando sui link qui sotto riportati.<br>
&nbsp;</p><p xmlns=""><b>Documenti suddivisi per argomenti:<br></b><a title="" target="" href="#shc">Mobil SHC&trade; - Tecnologia dei Lubrificanti Sintetici</a> | <a title="" target="" href="#greases">Grassi</a> | <a title="" target="" href="#energy">Settore energetico</a> | <a title="" target="" href="#manufacturing">Settore manifatturiero</a> | <a title="" target="" href="#pulpandpaper">Settore cellulosa e carta</a> | <a title="" target="" href="#metals">Settore Metalli</a> | <a title="" target="" href="#analysis">Analisi Olio/Procedure per Manutenzione Impianti</a></p><p xmlns="">&nbsp;</p><table xmlns="" width="100%" summary="" class="standard" cellspacing="0" border="0"><tr><th scope="col" class="standard"><a title="" target="" name="shc" id="shc"></a><b>Mobil SHC - Technologia dei Lubrificanti Sintetici</b></th></tr></table><p xmlns=""><br><a title="This link will open a new window." target="_new" href="/IND/English/Files/tt-the-synthetic-revolution.pdf">La Rivoluzione dei Lubrificanti Sintetici<img src="/Images/Icons/icon_pdf_whitespace.jpg" border="0" alt=""></a> (EN)<br><a title="This link will open a new window." target="_new" href="/IND/English/Files/tt-air-compressor-maintenance.pdf">Manutenzione Compressori d&rsquo;Aria<img src="/Images/Icons/icon_pdf_whitespace.jpg" border="0" alt=""></a> (EN)<br><a title="This link will open a new window." target="_new" href="/IND/English/Files/tt_refrigeration.pdf">Scelta di un Lubrificante per la Refrigerazione<img src="/Images/Icons/icon_pdf_whitespace.jpg" border="0" alt=""></a> (EN)<br><a title="This link will open a new window." target="_new" href="/IND/English/Files/tt-food-machinery-lubrication.pdf">Lubrificazione Macchinari per l&rsquo;Industria Alimentare<img src="/Images/Icons/icon_pdf_whitespace.jpg" border="0" alt=""></a> (EN)<br><a title="This link will open a new window." target="_new" href="/IND/English/Files/tt-oil-flooded-rotary-air-compressor.pdf">Compressore d&rsquo;Aria Rotativo a Bagno d&rsquo;Olio<img src="/Images/Icons/icon_pdf_whitespace.jpg" border="0" alt=""></a> (EN)<br>
&nbsp;</p><p xmlns=""><a title="" target="" href="#top">Torna su</a><br>
&nbsp;</p><table xmlns="" width="100%" summary="" class="standard" cellspacing="0" border="0"><tr><th scope="col" class="standard"><a title="" target="" name="greases" id="greases"></a><b>Grassi</b></th></tr></table><p xmlns=""><br><a title="This link will open a new window." target="_new" href="/IND/English/Files/tt-components-consistency-and-compatibiliy-of-grease.pdf">Componenti, Consistenza e Compatibilitą dei Grassi<img src="/Images/Icons/icon_pdf_whitespace.jpg" border="0" alt=""></a> (EN)<br><a title="This link will open a new window." target="_new" href="/IND/English/Files/tt-regreasing-rolling-element-bearings.pdf">Ingrassaggio degli Elementi Rotanti e dei Cuscinetti<img src="/Images/Icons/icon_pdf_whitespace.jpg" border="0" alt=""></a> (EN)<br><a title="This link will open a new window." target="_new" href="/IND/English/Files/tt-components-and-characteristics-of-grease.pdf">Componenti e Caratteristiche dei Grassi<img src="/Images/Icons/icon_pdf_whitespace.jpg" border="0" alt=""></a> (EN)<br><a title="This link will open a new window." target="_new" href="/IND/English/Files/tt-grease-compatibility.pdf">Compatibilitą dei Grassi<img src="/Images/Icons/icon_pdf_whitespace.jpg" border="0" alt=""></a> (EN)<br><a title="This link will open a new window." target="_new" href="/IND/English/files/flexible-coupling-grease-technical-topic.pdf">Lubrificazione degli Accoppiamenti Flessibili<img src="/Images/Icons/icon_pdf_whitespace.jpg" border="0" alt=""></a> (EN)<br><a title="This link will open a new window." target="_new" href="/IND/English/files/fluid-bearing-fluid-film-lubrication-technical-topic.pdf">Cuscinetti a Strisciamento Lubrificati con Grasso e Sistema di Applicazione del Grasso<img src="/Images/Icons/icon_pdf_whitespace.jpg" border="0" alt=""></a> (EN)<br><a title="This link will open a new window." target="_new" href="/IND/English/files/grease-fittings-pressure-relief-valve-technical-topic.pdf">Punto di Ingrassaggio a Pressione<img src="/Images/Icons/icon_pdf_whitespace.jpg" border="0" alt=""></a> (EN)<br><a title="This link will open a new window." target="_new" href="/IND/English/files/grease-static-oil-bleed-technical-topic.pdf">Consigli sulla Durata di Stoccaggio di Oli e Grassi lubrificanti<img src="/Images/Icons/icon_pdf_whitespace.jpg" border="0" alt=""></a> (EN)<br><a title="This link will open a new window." target="_new" href="/IND/English/Files/tt-electric-motor-bearing-lubrication-guide.pdf">Guida alla Lubrificazione dei Cuscinetti dei Motori Elettrici<img src="/Images/Icons/icon_pdf_whitespace.jpg" border="0" alt=""></a> (EN)<br><a title="This link will open a new window." target="_new" href="/IND/English/Files/tt-electric-motor-maintenance.pdf">Manutenzione dei Motori Elettrici<img src="/Images/Icons/icon_pdf_whitespace.jpg" border="0" alt=""></a> (EN)<br>
&nbsp;</p><p xmlns=""><a title="" target="" href="#top">Torna su<br></a>&nbsp;</p><table xmlns="" width="100%" summary="" class="standard" cellspacing="0" border="0"><tr><th scope="col" class="standard"><a title="" target="" name="energy" id="energy"></a><b>Settore Energetico</b></th></tr></table><p xmlns=""><br><a title="This link will open a new window." target="_new" href="/IND/English/files/tt-developing-turbine-oils.pdf">Sviluppo di Oli per Turbine<img src="/Images/Icons/icon_pdf_whitespace.jpg" border="0" alt=""></a> (EN)<br><a title="This link will open a new window." target="_new" href="/IND/English/Files/tt-fire-resistant-fluids.pdf">Fluidi Ignifughi<img src="/Images/Icons/icon_pdf_whitespace.jpg" border="0" alt=""></a> (EN)<br><a title="This link will open a new window." target="_new" href="/IND/English/Files/tt-hydraulic-efficiency.pdf">Efficienza Idraulica<img src="/Images/Icons/icon_pdf_whitespace.jpg" border="0" alt=""></a> (EN)<br><a title="This link will open a new window." target="_new" href="/IND/English/Files/tt-nitration-in-natural-gas-engines.pdf">Nitrazione nei Motori a Gas Naturale<img src="/Images/Icons/icon_pdf_whitespace.jpg" border="0" alt=""></a> (EN)<br><a title="This link will open a new window." target="_new" href="/IND/English/Files/tt-used-oil-analysis-for-natural-gas-engines.pdf">Analisi Olio Usato per Motori a Gas Naturale<img src="/Images/Icons/icon_pdf_whitespace.jpg" border="0" alt=""></a> (EN)<br><a title="This link will open a new window." target="_new" href="/IND/English/Files/tt-optimizing-gas-engine-drain-intervals.pdf">Ottimizzazione Intervalli &nbsp;Cambi Olio per Motori a Gas<img src="/Images/Icons/icon_pdf_whitespace.jpg" border="0" alt=""></a> (EN)<br><a title="This link will open a new window." target="_new" href="/IND/English/Files/tt-turbine-oil-condition-monitoring-training-guide.pdf">Guida sul Monitoraggio delle Condizioni dell&rsquo;Olio delle Turbine<img src="/Images/Icons/icon_pdf_whitespace.jpg" border="0" alt=""></a> (EN)<br><a title="This link will open a new window." target="_new" href="/IND/English/Files/tt-turbine-oil-system-care-and-maintenance.pdf">Cura e Manutenzione dell&rsquo;Impianto di Lubrificazione delle Turbine<img src="/Images/Icons/icon_pdf_whitespace.jpg" border="0" alt=""></a> (EN)<br><a title="This link will open a new window." target="_new" href="/IND/English/Files/tt-conversion-and-compatibility-of-fire-resistant-fluids.pdf">Conversione e Compatibilitą dei Fluidi Ignifughi<img src="/Images/Icons/icon_pdf_whitespace.jpg" border="0" alt=""></a> (EN)<br>
&nbsp;</p><p xmlns=""><a title="" target="" href="#top">Torna su</a><br>
&nbsp;</p><table xmlns="" width="100%" summary="" class="standard" cellspacing="0" border="0"><tr><th scope="col" class="standard"><a title="" target="" name="manufacturing" id="manufacturing"></a><b>Settore Manifatturiero</b></th></tr></table><p xmlns=""><br><a title="This link will open a new window." target="_new" href="/IND/English/Files/tt-hydraulic-efficiency.pdf">Efficienza Idraulica<img src="/Images/Icons/icon_pdf_whitespace.jpg" border="0" alt=""></a> (EN)<br><a title="This link will open a new window." target="_new" href="/IND/English/Files/tt-hydraulic-fluid-shear-stability.pdf">Stabilitą della Perdita di Viscositą dei Fluidi Idraulici<img src="/Images/Icons/icon_pdf_whitespace.jpg" border="0" alt=""></a> (EN)<br><a title="This link will open a new window." target="_new" href="/IND/English/Files/tt-glossary-of-food-machinery-lubrication-terms.pdf">Glossario dei Termini per la Lubrificazione dei Macchinari Alimentari<img src="/Images/Icons/icon_pdf_whitespace.jpg" border="0" alt=""></a> (EN)<br><a title="This link will open a new window." target="_new" href="/IND/English/Files/tt_refrigeration.pdf">Scelta di un Lubrificante per la Refrigerazione<img src="/Images/Icons/icon_pdf_whitespace.jpg" border="0" alt=""></a> (EN)<br><a title="This link will open a new window." target="_new" href="/IND/English/Files/tt-food-machinery-lubrication.pdf">Lubrificazione dei Macchinari Alimentari<img src="/Images/Icons/icon_pdf_whitespace.jpg" border="0" alt=""></a> (EN)<br>
&nbsp;</p><p xmlns=""><a title="" target="" href="#top">Torna su</a><br>
&nbsp;</p><table xmlns="" width="100%" summary="" class="standard" cellspacing="0" border="0"><tr><th scope="col" class="standard"><a title="" target="" name="pulpandpaper" id="pulpandpaper"></a><b>Settore Cellulosa e Carta</b></th></tr></table><p xmlns=""><br><a title="This link will open a new window." target="_new" href="/IND/English/Files/tt-fire-resistant-fluids.pdf">Fluidi Ignifughi<img src="/Images/Icons/icon_pdf_whitespace.jpg" border="0" alt=""></a> (EN)<br><a title="This link will open a new window." target="_new" href="/IND/English/Files/tt-hydraulic-efficiency.pdf">Efficienza Idraulica<img src="/Images/Icons/icon_pdf_whitespace.jpg" border="0" alt=""></a> (EN)<br><a title="This link will open a new window." target="_new" href="/IND/English/Files/tt-turbine-oil-system-care-and-maintenance.pdf">Cura e Manutenzione dell&rsquo;Impianto di Lubrificazione delle Turbine<img src="/Images/Icons/icon_pdf_whitespace.jpg" border="0" alt=""></a> (EN)<br><a title="This link will open a new window." target="_new" href="/IND/English/Files/tt-conversion-and-compatibility-of-fire-resistant-fluids.pdf">Conversione e Compatibilitą dei Fluidi Ignifughi<img src="/Images/Icons/icon_pdf_whitespace.jpg" border="0" alt=""></a> (EN)<br>
&nbsp;</p><p xmlns=""><a title="" target="" href="#top">Torna su</a><br>
&nbsp;</p><table xmlns="" width="100%" summary="" class="standard" cellspacing="0" border="0"><tr><th scope="col" class="standard"><a title="" target="" name="metals" id="metals"></a><b>Settore Metalli</b></th></tr></table><p xmlns=""><br><a title="This link will open a new window." target="_new" href="/IND/English/Files/tt-hydraulic-efficiency.pdf">Efficienza Idraulica<img src="/Images/Icons/icon_pdf_whitespace.jpg" border="0" alt=""></a> (EN)<br><a title="This link will open a new window." target="_new" href="/IND/English/Files/tt-conversion-and-compatibility-of-fire-resistant-fluids.pdf">Conversione e Compatibilitą dei Fluidi Ignifughi<img src="/Images/Icons/icon_pdf_whitespace.jpg" border="0" alt=""></a> (EN)<br>
&nbsp;</p><p xmlns=""><a title="" target="" href="#top">Torna su</a><br>
&nbsp;</p><table xmlns="" width="100%" summary="" class="standard" cellspacing="0" border="0"><tr><th scope="col" class="standard"><a title="" target="" name="analysis" id="analysis"></a><b>Analisi dell&rsquo;Olio/Procedure di Manutenzione degli Impianti</b></th></tr></table><p xmlns=""><br><a title="This link will open a new window." target="_new" href="/IND/English/Files/tt-used-oil-analysis-for-natural-gas-engines.pdf">Analisi Olio Usato per Motori a Gas Naturale<img src="/Images/Icons/icon_pdf_whitespace.jpg" border="0" alt=""></a> (EN)<br><a title="This link will open a new window." target="_new" href="/IND/English/Files/tt-handling-and-storing-lubricants.pdf">Gestione e Stoccaggio dei Lubrificanti<img src="/Images/Icons/icon_pdf_whitespace.jpg" border="0" alt=""></a> (EN)<br><a title="This link will open a new window." target="_new" href="/IND/English/Files/tt-hydraulic-system-care-and-maintenance.pdf">Cura e Manutenzione dei Sistemi Idraulici<img src="/Images/Icons/icon_pdf_whitespace.jpg" border="0" alt=""></a> (EN)<br><a title="This link will open a new window." target="_new" href="/IND/English/Files/tt-leakage-control.pdf">Controllo Perdite<img src="/Images/Icons/icon_pdf_whitespace.jpg" border="0" alt=""></a> (EN)<br><a title="This link will open a new window." target="_new" href="/IND/English/Files/tt-lubrication-program-management.pdf">Gestione Programma di Lubrificazione<img src="/Images/Icons/icon_pdf_whitespace.jpg" border="0" alt=""></a> (EN)<br><a title="This link will open a new window." target="_new" href="/IND/English/Files/tt-the-basics-of-oil-analysis.pdf">Principi Fondamentali dell&rsquo;Analisi dell&rsquo;Olio<img src="/Images/Icons/icon_pdf_whitespace.jpg" border="0" alt=""></a> (EN)<br><a title="This link will open a new window." target="_new" href="/IND/English/Files/tt-safety-in-lubrication.pdf">Sicurezza nelle Procedure di Lubrificazione<img src="/Images/Icons/icon_pdf_whitespace.jpg" border="0" alt=""></a> (EN)<br><a title="This link will open a new window." target="_new" href="/IND/English/Files/tt-turbine-oil-condition-monitoring-training-guide.pdf">Guida sul Monitoraggio delle Condizioni dell&rsquo;Olio delle Turbine<img src="/Images/Icons/icon_pdf_whitespace.jpg" border="0" alt=""></a> (EN)<br><a title="This link will open a new window." target="_new" href="/IND/English/Files/tt-turbine-oil-system-care-and-maintenance.pdf">Cura e Manutenzione dell&rsquo;Impianto di Lubrificazione delle Turbine<img src="/Images/Icons/icon_pdf_whitespace.jpg" border="0" alt=""></a> (EN)<br><a title="This link will open a new window." target="_new" href="/IND/English/Files/tt-air-compressor-maintenance.pdf">Manutenzione dei Compressori d&rsquo;Aria<img src="/Images/Icons/icon_pdf_whitespace.jpg" border="0" alt=""></a> (EN)<br><a title="This link will open a new window." target="_new" href="/IND/English/Files/tt-oil-flooded-rotary-air-compressor.pdf">Compressori d&rsquo;Aria Rotativi a Bagno d&rsquo;Olio<img src="/Images/Icons/icon_pdf_whitespace.jpg" border="0" alt=""></a> (EN)<br>
&nbsp;</p><p xmlns=""><a title="" target="" href="#top">Torna su</a></p><p xmlns=""></p></div></div><!--#include virtual="Navigation/Footer.aspx"--></div></body></html>