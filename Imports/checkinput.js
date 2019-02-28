<!--***Function CheckInput() is activated on the onSubmit event of the Search Form.****  -->
<!--***This function checks the contents of the Search Input Box for unchanged default input or blank input.****  -->
<!--******************************************************************  -->
function CheckInput(strLang)
{	
	validity = false;
	var strURL = window.location.href;
	var strURLLen = strURL.length;
	var strLang;
	if (strLang == "")
	{
		if (strURL.indexOf("&la=") != -1)
		{
			strLang = strURL.substring(strURL.indexOf("&la="),strURLLen);
			strLang = strLang.substring(4,6);
		}
		else
		{
			strLang = "en";
		}
	}
	if (strLang == "en" && (document.frmSimpleSearch.q.value == "" || document.frmSimpleSearch.q.value == "Search for:" ))
	// English
	{
		alert("Please enter search criteria in the search box") ;
		document.frmSimpleSearch.q.value = "" ;
		document.frmSimpleSearch.q.focus();
	}
	
	else if (strLang == "fr" && (document.frmSimpleSearch.q.value == "" || document.frmSimpleSearch.q.value == "Rechercher:" ))
	{
	// French
		alert("Entrez un crit\u00E8re de recherche ou un nom de produit") ;
		document.frmSimpleSearch.q.value = "" ;
		document.frmSimpleSearch.q.focus();
	}
	
	else if (strLang == "ja" && (document.frmSimpleSearch.q.value == "" || document.frmSimpleSearch.q.value == "検索:" ))
	{
	// Japanese
		alert("\u691C\u7D22\u30D1\u30E9\u30E1\u30FC\u30BF\u307E\u305F\u306F\u88FD\u54C1\u540D\u3092\u5165\u529B\u3057\u3066\u304F\u3060\u3055\u3044\u3002") ;
		document.frmSimpleSearch.q.value = "" ;
		document.frmSimpleSearch.q.focus();
	}
	
	else if (strLang == "de" && (document.frmSimpleSearch.q.value == "" || document.frmSimpleSearch.q.value == "Suche:" ))
	{
	// German
		alert("Bitte Tragen Sie Suchenkriterien in den Suche Kasten Ein.") ;
		document.frmSimpleSearch.q.value = "" ;
		document.frmSimpleSearch.q.focus();
	}
	
	else if (strLang == "pl" && (document.frmSimpleSearch.q.value == "" || document.frmSimpleSearch.q.value == "Szukaj:" ))
	{
	// German
		alert("Wprowad\u017A parametr wyszukiwania lub nazw\u0119 produktu") ;
		document.frmSimpleSearch.q.value = "" ;
		document.frmSimpleSearch.q.focus();
	}
	
	else if (strLang == "th" && (document.frmSimpleSearch.q.value == "" || document.frmSimpleSearch.q.value == "ค้นหา:" ))
	{
	// Thai
		alert("\u0E23\u0E30\u0E1A\u0E38\u0E02\u0E2D\u0E1A\u0E40\u0E02\u0E15\u0E02\u0E2D\u0E07\u0E01\u0E32\u0E23\u0E04\u0E49\u0E19\u0E2B\u0E32\u0E2B\u0E23\u0E37\u0E2D\u0E0A\u0E37\u0E48\u0E2D\u0E1C\u0E25\u0E34\u0E15\u0E20\u0E31\u0E13\u0E11\u0E4C") ;
		document.frmSimpleSearch.q.value = "" ;
		document.frmSimpleSearch.q.focus();
	}
	
	else if (strLang == "pt" && (document.frmSimpleSearch.q.value == "" || document.frmSimpleSearch.q.value == "Pesquisa:" ))
	{
	// Portuguese
		alert("N\xE3o introduziu um Nome de Produto/Palavra Chave") ;
		document.frmSimpleSearch.q.value = "" ;
		document.frmSimpleSearch.q.focus();
	}
	
	else if (strLang == "zh" && (document.frmSimpleSearch.q.value == "" || document.frmSimpleSearch.q.value == "搜索内容:" ))
	{
	// Chinese
		alert("\u8F38\u5165\u641C\u5C0B\u7BC4\u570D\u6216\u7522\u54C1\u540D\u7A31") ;
		document.frmSimpleSearch.q.value = "" ;
		document.frmSimpleSearch.q.focus();
	}
	
	else if (strLang == "ru" && (document.frmSimpleSearch.q.value == "" || document.frmSimpleSearch.q.value == "Поиск:" ))
	{
	// Russian
		alert("\u0412\u0432\u0435\u0434\u0438\u0442\u0435 \u043F\u0430\u0440\u0430\u043C\u0435\u0442\u0440 \u043F\u043E\u0438\u0441\u043A\u0430 \u0438\u043B\u0438 \u043D\u0430\u0437\u0432\u0430\u043D\u0438\u0435 \u043F\u0440\u043E\u0434\u0443\u043A\u0442\u0430") ;
		document.frmSimpleSearch.q.value = "" ;
		document.frmSimpleSearch.q.focus();
	}
	
	else if (strLang == "it" && (document.frmSimpleSearch.q.value == "" || document.frmSimpleSearch.q.value == "Ricerca:" ))
	{
	// Italian
		alert("Inserire un parametro di ricerca oppure il nome del prodotto") ;
		document.frmSimpleSearch.q.value = "" ;
		document.frmSimpleSearch.q.focus();
	}
	
	else if (strLang == "es" && (document.frmSimpleSearch.q.value == "" || document.frmSimpleSearch.q.value == "Buscar por:" ))
	{
	// Spanish
		alert("Introduzca un par\xE1metro de b\xFAsqueda o un nombre de producto") ;
		document.frmSimpleSearch.q.value = "" ;
		document.frmSimpleSearch.q.focus();
	}
	
	else if (strLang == "fn" && (document.frmSimpleSearch.q.value == "" || document.frmSimpleSearch.q.value == "Etsi:" ))
	{
	// Finnish
		alert("Kirjoita hakusana ja klikkaa hae-nuolta.") ;
		document.frmSimpleSearch.q.value = "" ;
		document.frmSimpleSearch.q.focus();
	}
	
	else if (strLang == "sv" && (document.frmSimpleSearch.q.value == "" || document.frmSimpleSearch.q.value == "Sök efter:" ))
	{
	// Swedish
		alert("Mata in en s\xF6kparameter eller ett produktnamn") ;
		document.frmSimpleSearch.q.value = "" ;
		document.frmSimpleSearch.q.focus();
	}
	
	else if (strLang == "no" && (document.frmSimpleSearch.q.value == "" || document.frmSimpleSearch.q.value == "S&#248;k:" ))
	{
	// Norwegian
		alert("Legg inn en s\xF8keparameter eller poduktnavn.") ;
		document.frmSimpleSearch.q.value = "" ;
		document.frmSimpleSearch.q.focus();
	}
	
	else if (strLang == "nl" && (document.frmSimpleSearch.q.value == "" || document.frmSimpleSearch.q.value == "Zoeken:" ))
	{
	// Dutch
		alert("Voer een zoekcriterion of productnaam in") ;
		document.frmSimpleSearch.q.value = "" ;
		document.frmSimpleSearch.q.focus();
	}
	
	else if (strLang == "ko" && (document.frmSimpleSearch.q.value == "" || document.frmSimpleSearch.q.value == "찾기:" ))
	{
	// Korean
		alert("\uAC80\uC0C9 \uAE30\uC900\uC774\uB098 \uC81C\uD488\uBA85\uC744 \uC785\uB825\uD558\uC2ED\uC2DC\uC624") ;
		document.frmSimpleSearch.q.value = "" ;
		document.frmSimpleSearch.q.focus();
	}
	
	/*else if (strLang == "vi" && (document.frmSimpleSearch.q.value == "" || document.frmSimpleSearch.q.value == "Rechercher:" ))
	{
	// Vietnamese
		alert("Please enter search criteria in the search box") ;
		document.frmSimpleSearch.q.value = "" ;
		document.frmSimpleSearch.q.focus();
	}
	
	else if (strLang == "tr" && (document.frmSimpleSearch.q.value == "" || document.frmSimpleSearch.q.value == "Rechercher:" ))
	{
	// Turkish
		alert("Bir arama parametresi ya da \xFCr\xFCn ad\x131 girin") ;
		document.frmSimpleSearch.q.value = "" ;
		document.frmSimpleSearch.q.focus();
	}
	
	else if (strLang == "da" && (document.frmSimpleSearch.q.value == "" || document.frmSimpleSearch.q.value == "Rechercher:" ))
	{
	// Danish
		alert("Indtast s&#248;gekriterier i s&#248;gefeltet") ;
		document.frmSimpleSearch.q.value = "" ;
		document.frmSimpleSearch.q.focus();
	}*/
	
	else
	{
		validity = true;						
		var strServerName = window.location.host;						
		var strServerPort = window.location.port;						
		var strDomainName = "";			
		if (strServerName.indexOf(":") != -1)
		// if port is found in URL						
		{							
			if (strServerPort.indexOf("500") != -1)							
			{								
				strDomainName = "mobil.com";							
			}							
			else if (strServerPort.indexOf("600") != -1)							
			{								
				strDomainName = "exxon.com";							
			}							
			else if (strServerPort.indexOf("700") != -1)							
			{								
				strDomainName = "esso.com";							
			}							
			else if (strServerPort.indexOf("800") != -1)							
			{								
				strDomainName = "imperialoil.com";							
			}							
			else if (strServerPort.indexOf("900") != -1)							
			{								
				strDomainName = "exxonmobilchemical.com";							
			}							
			else							
			{								
				strDomainName = "exxonmobil.com";							
			}						
		}			
		if (strServerName.indexOf("hoedcw21") != -1 || strServerName.indexOf("www.dev") != -1)
		{
			if (strServerName.indexOf(":") != -1)
			{
				strServerName = "www.dev." + strDomainName;							
			}
		}						
		else if (strServerName.indexOf("daldcw44") != -1 || strServerName.indexOf("www.acpt") != -1)
		{
			if (strServerName.indexOf(":") != -1)
			{
				strServerName = "www.acpt." + strDomainName;							
			}
		}	
		else
		{
			if (strServerName.indexOf(":") != -1)
			{
				strServerName = "www." + strDomainName;
			}
		}
		//document.frmSimpleSearch.action = "http://" + strServerName + "/search/search.aspx";
		document.frmSimpleSearch.action = "/search/search.aspx";
	}//end if
	
	return validity;
}