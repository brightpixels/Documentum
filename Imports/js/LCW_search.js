//Function clearBox() is activated on the onClick event of the Search Input Box.
//This function clears the contents of the Search Input Box.
			
		function clearBox() 
		{
			document.frmSimpleSearch.q.value = "" ;
		}  //end clearBox()
		function clearBoxTop() 
		{
			document.searchForm.q.value = "" ;
		}  //end clearBox()

			
//Function CheckInput() is activated on the onSubmit event of the Search Form.
//This function checks the contents of the Search Input Box for unchanged default input or blank input.
			
		function CheckInput() 
		{	
			validity = false;
			var strcurURL = document.frmSimpleSearch.q.value;
			var strLanguage = document.frmSimpleSearch.la.value;
			
			if (strLanguage =="en" && (document.frmSimpleSearch.q.value == "" || document.frmSimpleSearch.q.value == "keywords" || document.frmSimpleSearch.q.value == "keyword"))
			{
				alert("Please enter the search criteria in the search box") ;
				document.frmSimpleSearch.q.value = "" ;
				document.frmSimpleSearch.q.focus();
			}
			else if (strLanguage =="fr" && (document.frmSimpleSearch.q.value=="" || document.frmSimpleSearch.q.value=="mots clefs"))
			{
				alert("Entrez un crit\u00E8re de recherche ou un nom de produit") ;
				document.frmSimpleSearch.q.value = "" ;
				document.frmSimpleSearch.q.focus();
			}
			else if (strLanguage =="ja" && document.frmSimpleSearch.q.value=="")
			{
				alert("\u691C\u7D22\u30D1\u30E9\u30E1\u30FC\u30BF\u307E\u305F\u306F\u88FD\u54C1\u540D\u3092\u5165\u529B\u3057\u3066\u304F\u3060\u3055\u3044\u3002") ;
				document.frmSimpleSearch.q.value = "" ;
				document.frmSimpleSearch.q.focus();
			}
			else if (strLanguage =="de" && (document.frmSimpleSearch.q.value=="" || document.frmSimpleSearch.q.value=="Suchbegriffe"))
			{
				alert("Bitte Tragen Sie Suchenkriterien in den Suche Kasten Ein.") ;
				document.frmSimpleSearch.q.value = "" ;
				document.frmSimpleSearch.q.focus();
			}
			else if (strLanguage =="pl" && document.frmSimpleSearch.q.value=="")
			{
				alert("Wprowad\u017A parametr wyszukiwania lub nazw\u0119 produktu") ;
				document.frmSimpleSearch.q.value = "" ;
				document.frmSimpleSearch.q.focus();
			}
			else if (strLanguage =="th" && (document.frmSimpleSearch.q.value=="" || document.frmSimpleSearch.q.value=="\u0E04\u0E33\u0E2B\u0E25\u0E31\u0E01"))
			{
				alert("\u0E23\u0E30\u0E1A\u0E38\u0E02\u0E2D\u0E1A\u0E40\u0E02\u0E15\u0E02\u0E2D\u0E07\u0E01\u0E32\u0E23\u0E04\u0E49\u0E19\u0E2B\u0E32\u0E2B\u0E23\u0E37\u0E2D\u0E0A\u0E37\u0E48\u0E2D\u0E1C\u0E25\u0E34\u0E15\u0E20\u0E31\u0E13\u0E11\u0E4C") ;
				document.frmSimpleSearch.q.value = "" ;
				document.frmSimpleSearch.q.focus();
			}
			else if (strLanguage =="pt" && document.frmSimpleSearch.q.value=="")
			{
				alert("Introduzir um par\u00E2metro de busca ou nome de produto") ;
				document.frmSimpleSearch.q.value = "" ;
				document.frmSimpleSearch.q.focus();
			}
			else if (strLanguage =="zh" && document.frmSimpleSearch.q.value=="")
			{
				alert("\u8F38\u5165\u641C\u5C0B\u7BC4\u570D\u6216\u7522\u54C1\u540D\u7A31") ;
				document.frmSimpleSearch.q.value = "" ;
				document.frmSimpleSearch.q.focus();
			}
			else if (strLanguage =="ru" && (document.frmSimpleSearch.q.value=="" || document.frmSimpleSearch.q.value=="\u043A\u043B\u044E\u0447\u0435\u0432\u044B\u0435 \u0441\u043B\u043E\u0432\u0430"))
			{
				alert("\u0412\u0432\u0435\u0434\u0438\u0442\u0435 \u043F\u0430\u0440\u0430\u043C\u0435\u0442\u0440 \u043F\u043E\u0438\u0441\u043A\u0430 \u0438\u043B\u0438 \u043D\u0430\u0437\u0432\u0430\u043D\u0438\u0435 \u043F\u0440\u043E\u0434\u0443\u043A\u0442\u0430") ;
				document.frmSimpleSearch.q.value = "" ;
				document.frmSimpleSearch.q.focus();
			}
			else if (strLanguage =="it" && (document.frmSimpleSearch.q.value=="" || document.frmSimpleSearch.q.value=="Parole chiave"))
			{
				alert("Inserire un parametro di ricerca oppure il nome del prodotto") ;
				document.frmSimpleSearch.q.value = "" ;
				document.frmSimpleSearch.q.focus();
			}
			else if (strLanguage =="es" && document.frmSimpleSearch.q.value=="")
			{
				alert("Introduzca un par\u00E1metro de b\u00FAsqueda o un nombre de producto") ;
				document.frmSimpleSearch.q.value = "" ;
				document.frmSimpleSearch.q.focus();
			}
			else if (strLanguage =="fn" && (document.frmSimpleSearch.q.value=="" || document.frmSimpleSearch.q.value=="avainsanat"))
			{
				alert("Anna Etsiparametri tai tuotenimi") ;
				document.frmSimpleSearch.q.value = "" ;
				document.frmSimpleSearch.q.focus();
			}
			else if (strLanguage =="sv" && document.frmSimpleSearch.q.value=="")
			{
				alert("Mata in en s\u00F6kparameter eller ett produktnamn") ;
				document.frmSimpleSearch.q.value = "" ;
				document.frmSimpleSearch.q.focus();
			}
			else if (strLanguage =="no" && (document.frmSimpleSearch.q.value=="" || document.frmSimpleSearch.q.value=="n\u00F8kkelord"))
			{
				alert("Legg inn en s\u00F8keparameter eller poduktnavn.") ;
				document.frmSimpleSearch.q.value = "" ;
				document.frmSimpleSearch.q.focus();
			}
			else if (strLanguage =="nl" && (document.frmSimpleSearch.q.value=="" || document.frmSimpleSearch.q.value=="sleutelwoorden"))
			{
				alert("Voer een zoekcriterion of productnaam in") ;
				document.frmSimpleSearch.q.value = "" ;
				document.frmSimpleSearch.q.focus();
			}
			else if (strLanguage =="ko" && document.frmSimpleSearch.q.value=="")
			{
				alert("\uAC80\uC0C9 \uAE30\uC900\uC774\uB098 \uC81C\uD488\uBA85\uC744 \uC785\uB825\uD558\uC2ED\uC2DC\uC624") ;
				document.frmSimpleSearch.q.value = "" ;
				document.frmSimpleSearch.q.focus();
			}
			else
			{
				validity = true;
				document.frmSimpleSearch.action = "/Search/search.aspx";
				//alert(strServerName);
			}
			return validity;


			//return validity;
		}  //end CheckInput()


		function CheckInputTop() 
		{	
			validity = false;

			if (document.searchForm.q.value == "" || document.searchForm.q.value == "Search for:" )
			{
				alert("Please Enter Search Criteria in the Search box") ;
				document.searchForm.q.value = "" ;
				document.searchForm.q.focus();
			}//end if

			else
			{
				validity = true;
			}

			return validity;
		}  //end CheckInput()
