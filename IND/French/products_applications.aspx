
			
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
			<html xmlns="http://www.w3.org/1999/xhtml" xmlns:xalan-nodeset="org.apache.xalan.xslt.extensions.Nodeset" xmlns:java="http://xml.apache.org/xslt/java" xmlns:fo="http://www.w3.org/1999/XSL/Format" xml:lang="fr" lang="fr"><head><title>Lubrifiants industriels: produits par application | Mobil&trade; Industrial Lubricants Lubrifiants industriels Mobil&trade;</title><meta http-equiv="X-UA-Compatible" content="IE=edge"/><meta name="keywords" content="Graisse, SHC, huile hydraulique, huile engrenages, huile r�ducteur, huile compresseur, huile turbine, lubrifiants industriels, huile pour moteur � gaz, huile pour compresseur frigorifique, huile circulation, lubrifiants industriels par application"/><meta name="description" content="Des lubrifiants synth�tiques aux huiles min�rales, en passant par les graisses hautes performances, les huiles pour compresseurs d&rsquo;air ou bien encore les huiles de coupe, etc&hellip;, nous avons probablement dans notre gamme les lubrifiants industriels dont vous avez besoin pour satisfaire les exigences techniques de vos diff�rentes applications."/><meta name="date" content="03/2015"/><meta name="language" content="fr"/><meta http-equiv="Content-Language" content="fr"/><link type="text/css" rel="stylesheet" media="all" href="/Imports/mobil_ind.css"/><link type="text/css" rel="stylesheet" media="print" href="/Imports/xom_print.css"/><link type="text/css" title="medium" rel="stylesheet" href="/Imports/xom_web_medium.css"/><link type="text/css" title="large" rel="alternate stylesheet" href="/Imports/xom_web_large.css"/><link type="text/css" title="small" rel="alternate stylesheet" href="/Imports/xom_web_small.css"/>	
						<script type="text/javascript" src="/Imports/js/styleswitcher.js"></script>
						<script type="text/javascript" src="/Imports/js/footnotelinks.js"></script>
						<script language="Javascript" src="/Imports/js/xom.js"></script>
						<script type="text/javascript" src="/Imports/js/swfobject.js"></script>
						<script type="text/javascript" src="/Imports/js/search.js"></script> <!--[if IE 7.0]>
							<link href="/Imports/mobil_ind_ie7.css" rel="stylesheet" type="text/css" media="all" />
						<![endif]--> 	<!--[if lte IE 6]>
							<link href="/Imports/mobil_ind_ie.css" rel="stylesheet" type="text/css" media="all" />
						<![endif]-->
				<script type="text/javascript">
					function autoResizeHeight(obj){
					obj.style.height = obj.contentWindow.document.body.scrollHeight + 'px';
					}
				</script>	<!--[if gte IE 5.1]>
				<script type="text/javascript">
					try 
					{
						document.execCommand("BackgroundImageCache", false, true);
					} 
					catch(err) {}
				</script><![endif]--><!-- Set 'expires' in http header, start --><% string cacheExpireDateStr="3/9/2016 9:51:15 AM";
        DateTime cacheExpireDate = Convert.ToDateTime(cacheExpireDateStr); 
        Response.AddHeader("Expires",cacheExpireDate.ToUniversalTime().ToString("ddd, dd MMM yyyy HH:mm:ss 'GMT'")); %><!-- end --></head><body class="article"><a href="#mainContent" class="skip">Skip to Main Content</a><div id="container"><!--#include virtual="Navigation/Header.aspx"--><div id="mainPanel" class="clrfix"><!--#include virtual="Navigation/products_left_navigation.aspx"--><div id="toolbar"><!--#include virtual="Services/Toolbox.aspx"--></div><div id="mainContent"><br/><p xmlns=""><span style=" font-size: x-large;"><b>Produits par application<br></b></span><br><span style=" font-size: large;"><b>Trouvez les lubrifiants industriels Mobil&trade; adapt�s � vos besoins<br><br></b></span>Vous recherchez la productivit� la plus �lev�e possible pour vos �quipements. Ils doivent donc fonctionner avec un maximum d&rsquo;efficacit� op�rationnelle, ce qui passe notamment par une fiabilit� et une disponibilit� optimales. Les lubrifiants industriels Mobil&trade; sont con�us pour pouvoir vous aider � atteindre ces objectifs. Des lubrifiants synth�tiques aux huiles min�rales, en passant par les graisses hautes performances, les huiles pour compresseurs d&rsquo;air ou bien encore les huiles de coupe, etc&hellip;, nous avons probablement dans notre gamme les lubrifiants industriels dont vous avez besoin pour satisfaire les exigences techniques de vos diff�rentes applications. Utilisez le tableau ci-dessous pour rechercher le type de lubrifiant adapt� � vos besoins, puis cliquez sur le nom du produit pour avoir plus d&rsquo;informations et en savoir plus sur la fa�on dont il pourrait satisfaire vos exigences techniques. Vous d�couvrirez notamment ses avantages et performances, ses propri�t�s et caract�ristiques typiques, ainsi que les principales applications recommand�es pour ce produit. Vous pouvez contacter �galement votre distributeur local de lubrifiants Mobil&trade; pour une v�rification et avoir la confirmation que le produit s�lectionn� convient bien � votre application sp�cifique, � ses conditions de fonctionnement et qu&rsquo;il est effectivement disponible � la vente localement.</p><p xmlns=""><a title="This link will open a new window." target="_new" href="/ind/french/contactus.aspx">Nous contacter</a></p>										
										<iframe id="iframe1" src="/ind/french/imports/products_by_applications/products_applications.html" width="100%" height="610px" frameborder="0" scrolling="no" marginheight="0" onLoad="autoResizeHeight(this);"></iframe>
										</div></div><!--#include virtual="Navigation/Footer.aspx"--></div></body></html>