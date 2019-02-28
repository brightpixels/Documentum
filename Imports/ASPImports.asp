
<%
	Session.CodePage = 65001
	Response.CharSet = "utf-8"
	
	' Add HTTP Header to content
	Dim fs, f, f_sub, f_month, f_day, f_year, lastmodified, f_hour, f_minute, f_second
	Dim strRequestedURL

	strRequestedURL = Request.ServerVariables("URL")
	set fs = Server.CreateObject("Scripting.FileSystemObject")
	set f = fs.GetFile(Server.MapPath(strRequestedURL))

	f_year = Year(f.DateLastModified)
	f_month = Month(f.DateLastModified)
	f_day = Weekday(f.DateLastModified)
	f_hour = Hour(f.DateLastModified)
		If len(f_hour) = 1 Then f_hour = "0" & f_hour
	f_minute = Minute(f.DateLastModified)
		If len(f_minute) = 1 Then f_minute = "0" & f_minute
	f_second = Second(f.DateLastModified)
		If len(f_second) = 1 Then f_second = "0" & f_second

	lastmodified = WeekdayName(weekday(f.DateLastModified),true) & ", " & day(f.DateLastModified) & " " & MonthName(f_month,true) & " " & f_year & " " & f_hour & ":" & f_minute & ":" & f_second & " GMT"
	Response.AddHeader "Last-modified",lastmodified

	set f=nothing
	set fs=nothing
	
	Function DisplayNavigation( NavigationView )
	
		Dim objNavEngine
		Dim navigationMenu
		Dim objParams
		Dim objXSLParams
		Dim objFolderMap
		Dim strRequestedURL
		
		strRequestedURL = Request.ServerVariables("URL")
		
		'Add the Parameters that will be used for the XSL Transformations
		Set objXSLParams = Server.CreateObject("Scripting.Dictionary")
		Call objXSLParams.Add( "desiredURL", strRequestedURL )			
				
		'Add Folder Map Parameters
		Set objFolderMap = Server.CreateObject("Scripting.Dictionary")
		Call objFolderMap.Add( "/imports", Server.MapPath("/imports"))
		Call objFolderMap.Add( "/", Server.MapPath("/"))
		Call objFolderMap.Add( "/chemicals", Server.MapPath("/chemicals"))
		Call objFolderMap.Add( "/siteflow", Server.MapPath("/siteflow"))
		Call objFolderMap.Add( "/corporate", Server.MapPath("/corporate"))
		Call objFolderMap.Add( "/chad", Server.MapPath("/chad"))
		Call objFolderMap.Add( "/USA-English", Server.MapPath("/MOBIL/USA-English"))
		
		Set objNavEngine = Server.CreateObject("Navigation.NavigationEngine")
		
		navigationMenu = objNavEngine.GetNavigation( strRequestedURL, _
																									NavigationView, _
																									objFolderMap, _
																									objXSLParams )
		
		Set objXSLParams = Nothing
		Set objFolderMap = Nothing
		Set objNavEngine = Nothing
		
		DisplayNavigation = navigationMenu
		
	End Function
	
	Sub  getServer()

		strRequestedURL = Request.ServerVariables("URL")
		getServer = strRequestedURL 

	End Sub


	Sub  DisplayIndustryIndex ()

		navigationMenu = DisplayNavigation("IndIndex")		
		
		If ( "" = navigationMenu ) Then
			Response.Write( "Industry Index Unavailable At This Time.  Please have a nice day." )
		Else
			Response.Write navigationMenu
		End If	

	End Sub

	Sub  DisplayProductNameAndTagLine ()

		navigationMenu = DisplayNavigation("ProductName")		
		
		If ( "" = navigationMenu ) Then
			Response.Write( "<table width=""378"" border=""0"" cellpadding=""0"" cellspacing=""0"">" & vbCrLf )
			Response.Write( "<tr><td class=""text"">Navigation Unavailable for this page</td></tr>" & vbCrLf )
			Response.Write( "</table>" & vbCrLf )
		Else
			Response.Write navigationMenu
		End If	

	End Sub

	Sub DisplayProductPageNameHeader()

		Dim desiredView
		desiredView = DetermineView("ProductPNH")
		navigationMenu = DisplayNavigation(desiredView)
		
		If ( "" = navigationMenu ) Then
			Response.Write( "<table width=""368"" border=""0"" cellpadding=""0"" cellspacing=""0"">" & vbCrLf )
			Response.Write( "<tr><td class=""text"">Navigation Unavailable for this page</td></tr>" & vbCrLf )
			Response.Write( "</table>" & vbCrLf )
		Else
			Response.Write navigationMenu
		End If	
	
	End Sub

	Sub DisplayPageNameHeader()
			
		navigationMenu = DisplayNavigation("PNH")
		
		If ( "" = navigationMenu ) Then
			Response.Write( "<table width=""180"" border=""0"" cellpadding=""0"" cellspacing=""0"">" & vbCrLf )
			Response.Write( "<tr><td class=""text"">Header Unavailable for this page</td></tr>" & vbCrLf )
			Response.Write( "</table>" & vbCrLf )
		Else
			Response.Write navigationMenu
		End If
	
	End Sub
	
	Sub DisplayPageNameHeader1()
			
		navigationMenu = DisplayNavigation("PNH1")
		
		If ( "" = navigationMenu ) Then
			Response.Write( "<table width=""180"" border=""0"" cellpadding=""0"" cellspacing=""0"">" & vbCrLf )
			Response.Write( "<tr><td class=""text"">Header Unavailable for this page HA HA HA</td></tr>" & vbCrLf )
			Response.Write( "</table>" & vbCrLf )
		Else
			Response.Write navigationMenu
		End If
	
	End Sub


	Sub DisplayPageNameHeader2()
			
		navigationMenu = DisplayNavigation("PNH2")
		
		If ( "" = navigationMenu ) Then
			Response.Write( "<table width=""200"" border=""0"" cellpadding=""0"" cellspacing=""0"">" & vbCrLf )
			Response.Write( "<tr><td class=""text"">Navigation Unavailable for this page</td></tr>" & vbCrLf )
			Response.Write( "</table>" & vbCrLf )
		Else
			Response.Write navigationMenu
		End If
	
	End Sub
	
	Sub DisplayPageNameHeader3()
			
		navigationMenu = DisplayNavigation("PNH3")
		
		If ( "" = navigationMenu ) Then
			Response.Write( "<table width=""180"" border=""0"" cellpadding=""0"" cellspacing=""0"">" & vbCrLf )
			Response.Write( "<tr><td class=""text"">Header Unavailable for this page HA HA HA</td></tr>" & vbCrLf )
			Response.Write( "</table>" & vbCrLf )
		Else
			Response.Write navigationMenu
		End If
	
	End Sub


	Sub DisplayLeftNavigation
		
		Dim desiredView
		desiredView = DetermineView("LeftHandNav")
		navigationMenu = DisplayNavigation(desiredView)
		
		If ( "" = navigationMenu ) Then
			Response.Write( "<table width=""180"" border=""0"" cellpadding=""0"" cellspacing=""0"">" & vbCrLf )
			Response.Write( "<tr><td class=""text"">Left Navigation is not for this page</td></tr>" & vbCrLf )
			Response.Write( "</table>" & vbCrLf )
		Else
			Response.Write navigationMenu
		End IF
	
	End Sub
	
	Sub DisplayLeftNavigation1
		
		Dim desiredView
		desiredView = DetermineView("LeftHandNav1")
		navigationMenu = DisplayNavigation(desiredView)
		
		If ( "" = navigationMenu ) Then
			Response.Write( "<table width=""180"" border=""0"" cellpadding=""0"" cellspacing=""0"">" & vbCrLf )
			Response.Write( "<tr><td class=""text"">Left Navigation is not for this industry page</td></tr>" & vbCrLf )
			Response.Write( "</table>" & vbCrLf )
		Else
			Response.Write navigationMenu
		End IF
	
	End Sub

	
	Sub DisplayTopNavigation
		
		navigationMenu = DisplayNavigation("TopNav")
		
		If ( "" = navigationMenu ) Then
			Response.Write( "<table width=""200"" border=""0"" cellpadding=""0"" cellspacing=""0"">" & vbCrLf )
			Response.Write( "<tr><td class=""text"">Top Navigation is not for this page</td></tr>" & vbCrLf )
			Response.Write( "</table>" & vbCrLf )
		Else
			Response.Write navigationMenu
		End If
	
	End Sub	

	
	Sub DisplayChadTopNavigation
		
		navigationMenu = DisplayNavigation("ChadTopNav")
		
		If ( "" = navigationMenu ) Then
			Response.Write( "<table width=""200"" border=""0"" cellpadding=""0"" cellspacing=""0"">" & vbCrLf )
			Response.Write( "<tr><td class=""text"">Navigation Unavailable for this page</td></tr>" & vbCrLf )
			Response.Write( "</table>" & vbCrLf )
		Else
			Response.Write navigationMenu
		End If
	
	End Sub	

	
	Sub DisplayCenterPageNameHeader()
			
		navigationMenu = DisplayNavigation("CPNH")
		
		If ( "" = navigationMenu ) Then
			Response.Write( "<table width=""200"" border=""0"" cellpadding=""0"" cellspacing=""0"">" & vbCrLf )
			Response.Write( "<tr><td class=""text"">Navigation Unavailable for this page</td></tr>" & vbCrLf )
			Response.Write( "</table>" & vbCrLf )
		Else
			Response.Write navigationMenu
		End If
	
	End Sub	
	
	Sub DisplayTeemCenterPageNameHeader()
			
		navigationMenu = DisplayNavigation("PNHRed")
		
		If ( "" = navigationMenu ) Then
			Response.Write( "<table width=""180"" border=""0"" cellpadding=""0"" cellspacing=""0"">" & vbCrLf )
			Response.Write( "<tr><td class=""text"">Navigation Unavailable for this page</td></tr>" & vbCrLf )
			Response.Write( "</table>" & vbCrLf )
		Else
			Response.Write navigationMenu
		End If
	
	End Sub	

	
	Sub DisplayBluePageNameHeader()
		
		navigationMenu = DisplayNavigation("BluePNH")
		
		If ( "" = navigationMenu ) Then
			Response.Write( "<table width=""200"" border=""0"" cellpadding=""0"" cellspacing=""0"">" & vbCrLf )
			Response.Write( "<tr><td class=""text"">Navigation Unavailable for this page</td></tr>" & vbCrLf )
			Response.Write( "</table>" & vbCrLf )
		Else
			Response.Write navigationMenu
		End If
	
	End Sub	
	
	Sub DisplayTeemBluePageNameHeader2()
		
		navigationMenu = DisplayNavigation("BluePNH2")
		
		If ( "" = navigationMenu ) Then
			Response.Write( "<table width=""180"" border=""0"" cellpadding=""0"" cellspacing=""0"">" & vbCrLf )
			Response.Write( "<tr><td class=""text"">Page Header Unavailable for this page</td></tr>" & vbCrLf )
			Response.Write( "</table>" & vbCrLf )
		Else
			Response.Write navigationMenu
		End If
	
	End Sub		
	
	Sub DisplayProductJumpPageNavigation()
	
		navigationMenu = DisplayNavigation("P_Jump")
		
		If ( "" = navigationMenu ) Then
			Response.Write( "<table>" & vbCrLf )
			Response.Write( "<tr><td class=""text"">Navigation Unavailable for this page</td></tr>" & vbCrLf )
			Response.Write( "</table>" & vbCrLf )
		Else
			Response.Write navigationMenu
		End If	
	
	End Sub	
	
	Sub DisplayProductHomePageHeader()
	
		navigationMenu = DisplayNavigation("P_HomePage")
		
		If ( "" = navigationMenu ) Then
			Response.Write( "<table>" & vbCrLf )
			Response.Write( "<tr><td class=""text"">Navigation Unavailable for this page</td></tr>" & vbCrLf )
			Response.Write( "</table>" & vbCrLf )
		Else
			Response.Write navigationMenu
		End If	
	
	End Sub		
	
	Sub DisplayPageTitle()
			
		Dim desiredView
		desiredView = DetermineView("Title")
		navigationMenu = DisplayNavigation(desiredView)
		
		If ( "" = navigationMenu ) Then
			Response.Write( "Title Unavailable" & vbCrLf )
		Else
			Response.Write navigationMenu
		End If
	
	End Sub	
	
	Sub DisplayPSSiteMap()
			
		navigationMenu = DisplayNavigation("PSSiteMap")
		
		If ( "" = navigationMenu ) Then
			Response.Write( "<table width=""176"" border=""0"" cellpadding=""0"" cellspacing=""0"">" & vbCrLf )
			Response.Write( "<tr><td class=""text"">Navigation P Unavailable for this page</td></tr>" & vbCrLf )
			Response.Write( "</table>" & vbCrLf )
		Else
			Response.Write navigationMenu
		End If
	
	End Sub
	
	Sub DisplayAudSiteMap()
			
		navigationMenu = DisplayNavigation("AudSiteMap")
		
		If ( "" = navigationMenu ) Then
			Response.Write( "<table width=""176"" border=""0"" cellpadding=""0"" cellspacing=""0"">" & vbCrLf )
			Response.Write( "<tr><td class=""text"">Navigation A Unavailable for this page</td></tr>" & vbCrLf )
			Response.Write( "</table>" & vbCrLf )
		Else
			Response.Write navigationMenu
		End If
	
	End Sub	
	
	Sub DisplayConsPromSiteMap()
			
		navigationMenu = DisplayNavigation("ConsPromSiteMap")
		
		If ( "" = navigationMenu ) Then
			Response.Write( "<table width=""176"" border=""0"" cellpadding=""0"" cellspacing=""0"">" & vbCrLf )
			Response.Write( "<tr><td class=""text"">Navigation C Unavailable for this page</td></tr>" & vbCrLf )
			Response.Write( "</table>" & vbCrLf )
		Else
			Response.Write navigationMenu
		End If
	
	End Sub	
	
	Sub DisplayIndSiteMap()
			
		navigationMenu = DisplayNavigation("IndSiteMap")
		
		If ( "" = navigationMenu ) Then
			Response.Write( "<table width=""176"" border=""0"" cellpadding=""0"" cellspacing=""0"">" & vbCrLf )
			Response.Write( "<tr><td class=""text"">Navigation I Unavailable for this page</td></tr>" & vbCrLf )
			Response.Write( "</table>" & vbCrLf )
		Else
			Response.Write navigationMenu
		End If
	
	End Sub	
	
	Sub DisplayHTBSiteMap()
			
		navigationMenu = DisplayNavigation("HTBSiteMap")
		
		If ( "" = navigationMenu ) Then
			Response.Write( "<table width=""176"" border=""0"" cellpadding=""0"" cellspacing=""0"">" & vbCrLf )
			Response.Write( "<tr><td class=""text"">Navigation H Unavailable for this page</td></tr>" & vbCrLf )
			Response.Write( "</table>" & vbCrLf )
		Else
			Response.Write navigationMenu
		End If
	
	End Sub	
	
	Sub DisplaySMFooterNav
		navigationMenu = DisplayNavigation("SMFooterNav")

			If ( "" = navigationMenu ) Then
				Response.Write( "<table width=""200"" border=""0"" cellpadding=""0"" cellspacing=""0"">" & vbCrLf )
				Response.Write( "<tr><td class=""text"">Footer Navigation is NOT available for this page</td></tr>" & vbCrLf )
				Response.Write( "</table>" & vbCrLf )
			Else
				Response.Write navigationMenu
			End If
	End Sub
	Sub DisplayFooter
		navigationMenu = DisplayNavigation("FooterNav")

			If ( "" = navigationMenu ) Then
				Response.Write( "<table width=""200"" border=""0"" cellpadding=""0"" cellspacing=""0"">" & vbCrLf )
				Response.Write( "<tr><td class=""text"">Footer Navigation is NOT available for this page</td></tr>" & vbCrLf )
				Response.Write( "</table>" & vbCrLf )
			Else
				Response.Write navigationMenu
			End If
	End Sub
	'******* Sitemap for MotorOil ****************************************
		Sub DisplaySMFooter
		navigationMenu = DisplayNavigation("SMFooter")

			If ( "" = navigationMenu ) Then
				Response.Write( "<table width=""200"" border=""0"" cellpadding=""0"" cellspacing=""0"">" & vbCrLf )
				Response.Write( "<tr><td class=""text"">Footer Navigation is NOT available for this page</td></tr>" & vbCrLf )
				Response.Write( "</table>" & vbCrLf )
			Else
				Response.Write navigationMenu
			End If
	End Sub
	Sub DisplaySYNSiteMap()
			
		navigationMenu = DisplayNavigation("SYNSiteMap")
		
		If ( "" = navigationMenu ) Then
			Response.Write( "<table width=""176"" border=""0"" cellpadding=""0"" cellspacing=""0"">" & vbCrLf )
			Response.Write( "<tr><td class=""text"">Navigation Synthetic Unavailable for this page</td></tr>" & vbCrLf )
			Response.Write( "</table>" & vbCrLf )
		Else
			Response.Write navigationMenu
		End If
	
	End Sub

		Sub DisplayFactoryFillSiteMap()		' MotorOil FactoryFill
			
		navigationMenu = DisplayNavigation("FactoryFillSiteMap")
		
		If ( "" = navigationMenu ) Then
			Response.Write( "<table width=""176"" border=""0"" cellpadding=""0"" cellspacing=""0"">" & vbCrLf )
			Response.Write( "<tr><td class=""text"">Cannot Find Factory Fill Site Map.</td></tr>" & vbCrLf )
			Response.Write( "</table>" & vbCrLf )
		Else
			Response.Write("<!--stopindex-->") 
            			Response.Write navigationMenu 
            			Response.Write("<!--startindex-->")
		End If
	
	End Sub	

	Sub DisplayAskMobilSiteMap()		
			
		navigationMenu = DisplayNavigation("AskMobilSiteMap")
		
		If ( "" = navigationMenu ) Then
			Response.Write( "<table width=""176"" border=""0"" cellpadding=""0"" cellspacing=""0"">" & vbCrLf )
			Response.Write( "<tr><td class=""text"">Cannot Find Ask Mobil Site Map.</td></tr>" & vbCrLf )
			Response.Write( "</table>" & vbCrLf )
		Else
			Response.Write("<!--stopindex-->") 
			Response.Write navigationMenu 
			Response.Write("<!--startindex-->")
		End If
	
	End Sub


	Sub DisplayCCSiteMap()
			
		navigationMenu = DisplayNavigation("CCSiteMap")
		
		If ( "" = navigationMenu ) Then
			Response.Write( "<table width=""176"" border=""0"" cellpadding=""0"" cellspacing=""0"">" & vbCrLf )
			Response.Write( "<tr><td class=""text"">Navigation Car Care Unavailable for this page</td></tr>" & vbCrLf )
			Response.Write( "</table>" & vbCrLf )
		Else
			Response.Write navigationMenu
		End If
	
	End Sub
		
	Sub DisplayOILSiteMap()
			
		navigationMenu = DisplayNavigation("OILSiteMap")
		
		If ( "" = navigationMenu ) Then
			Response.Write( "<table width=""176"" border=""0"" cellpadding=""0"" cellspacing=""0"">" & vbCrLf )
			Response.Write( "<tr><td class=""text"">Navigation Oils Unavailable for this page</td></tr>" & vbCrLf )
			Response.Write( "</table>" & vbCrLf )
		Else
			Response.Write navigationMenu
		End If
	
	End Sub
		
	Sub DisplayOPRSiteMap()
			
		navigationMenu = DisplayNavigation("OPRSiteMap")
		
		If ( "" = navigationMenu ) Then
			Response.Write( "<table width=""176"" border=""0"" cellpadding=""0"" cellspacing=""0"">" & vbCrLf )
			Response.Write( "<tr><td class=""text"">Navigation Other Products Unavailable for this page</td></tr>" & vbCrLf )
			Response.Write( "</table>" & vbCrLf )
		Else
			Response.Write navigationMenu
		End If
	
	End Sub
	
	Sub DisplayREWSiteMap()
			
		navigationMenu = DisplayNavigation("REWSiteMap")
		
		If ( "" = navigationMenu ) Then
			Response.Write( "<table width=""176"" border=""0"" cellpadding=""0"" cellspacing=""0"">" & vbCrLf )
			Response.Write( "<tr><td class=""text"">Navigation Reward Unavailable for this page</td></tr>" & vbCrLf )
			Response.Write( "</table>" & vbCrLf )
		Else
			Response.Write navigationMenu
		End If
	
	End Sub
	Sub DisplayTVSiteMap()
			
		navigationMenu = DisplayNavigation("TVSiteMap")
		
		If ( "" = navigationMenu ) Then
			Response.Write( "<table width=""176"" border=""0"" cellpadding=""0"" cellspacing=""0"">" & vbCrLf )
			Response.Write( "<tr><td class=""text"">Navigation TV Ads Unavailable for this page</td></tr>" & vbCrLf )
			Response.Write( "</table>" & vbCrLf )
		Else
			Response.Write navigationMenu
		End If
	
	End Sub

	Sub DisplayPROSiteMap()
			
		navigationMenu = DisplayNavigation("PROSiteMap")
		
		If ( "" = navigationMenu ) Then
			Response.Write( "<table width=""176"" border=""0"" cellpadding=""0"" cellspacing=""0"">" & vbCrLf )
			Response.Write( "<tr><td class=""text"">Navigation PRO Unavailable for this page</td></tr>" & vbCrLf )
			Response.Write( "</table>" & vbCrLf )
		Else
			Response.Write navigationMenu
		End If
	
	End Sub	
	
	Sub DisplayREWSiteMap()
			
		navigationMenu = DisplayNavigation("REWSiteMap")
		
		If ( "" = navigationMenu ) Then
			Response.Write( "<table width=""176"" border=""0"" cellpadding=""0"" cellspacing=""0"">" & vbCrLf )
			Response.Write( "<tr><td class=""text"">Navigation REW Unavailable for this page</td></tr>" & vbCrLf )
			Response.Write( "</table>" & vbCrLf )
		Else
			Response.Write navigationMenu
		End If
	
	End Sub	
	
	'-----------------------------------------------------------------------------------

	Sub DisplayRacingSiteMap()		' for MotorOil Racing.  11/1/2007 BDE
			
		navigationMenu = DisplayNavigation("RacingSiteMap")
		
		If ( "" = navigationMenu ) Then
			Response.Write( "<table width=""176"" border=""0"" cellpadding=""0"" cellspacing=""0"">" & vbCrLf )
			Response.Write( "<tr><td class=""text"">Cannot Find Racing Site Map.</td></tr>" & vbCrLf )
			Response.Write( "</table>" & vbCrLf )
		Else
			Response.Write("<!--stopindex-->") 
            Response.Write navigationMenu 
            Response.Write("<!--startindex-->")
		End If
	
	End Sub	

	'**********************************************************************	
	Sub DisplaySiteMapTopNavigation
	
		navigationMenu = DisplayNavigation("SMTopNav")
		
		If ( "" = navigationMenu ) Then
			Response.Write( "<table width=""200"" border=""0"" cellpadding=""0"" cellspacing=""0"">" & vbCrLf )
			Response.Write( "<tr><td class=""text"">Navigation Unavailable for this page</td></tr>" & vbCrLf )
			Response.Write( "</table>" & vbCrLf )
		Else
			Response.Write navigationMenu
		End If
	
	End Sub		
	'*********************************************************************
	Sub DisplayRootSiteMap()
			
		navigationMenu = DisplayNavigation("RootSiteMap")
		
		If ( "" = navigationMenu ) Then
			Response.Write( "<table width=""176"" border=""0"" cellpadding=""0"" cellspacing=""0"">" & vbCrLf )
			Response.Write( "<tr><td class=""text"">Navigation Root Unavailable for this page</td></tr>" & vbCrLf )
			Response.Write( "</table>" & vbCrLf )
		Else
			Response.Write navigationMenu
		End If
	
	End Sub	
	
	Sub DisplayAUTSiteMap()
			
		navigationMenu = DisplayNavigation("AUTSiteMap")
		
		If ( "" = navigationMenu ) Then
			Response.Write( "<table width=""176"" border=""0"" cellpadding=""0"" cellspacing=""0"">" & vbCrLf )
			Response.Write( "<tr><td class=""text"">Navigation AUT Unavailable for this page</td></tr>" & vbCrLf )
			Response.Write( "</table>" & vbCrLf )
		Else
			Response.Write navigationMenu
		End If
	
	End Sub

    	Sub DisplayDAWSiteMap()	
			navigationMenu = DisplayNavigation("DriveSiteMap")
			If ( "" = navigationMenu ) Then
				Response.Write( "<table width=""176"" border=""0"" cellpadding=""0"" cellspacing=""0"">" & vbCrLf )
				Response.Write( "<tr><td class=""text"">Cannot Find Drive Around the World Site Map.</td></tr>" & vbCrLf )
				Response.Write( "</table>" & vbCrLf )
			Else
				Response.Write("<!--stopindex-->") 
				Response.Write navigationMenu 
				Response.Write("<!--startindex-->")
			End If
		End Sub	
	
	Sub DisplayLUBSiteMap()
			
		navigationMenu = DisplayNavigation("LUBSiteMap")
		
		If ( "" = navigationMenu ) Then
			Response.Write( "<table width=""176"" border=""0"" cellpadding=""0"" cellspacing=""0"">" & vbCrLf )
			Response.Write( "<tr><td class=""text"">Navigation LUB Unavailable for this page</td></tr>" & vbCrLf )
			Response.Write( "</table>" & vbCrLf )
		Else
			Response.Write navigationMenu
		End If
	
	End Sub	
		
	Sub DisplayYINDSiteMap()
			
		navigationMenu = DisplayNavigation("YINDSiteMap")
		
		If ( "" = navigationMenu ) Then
			Response.Write( "<table width=""176"" border=""0"" cellpadding=""0"" cellspacing=""0"">" & vbCrLf )
			Response.Write( "<tr><td class=""text"">Navigation YIND Unavailable for this page</td></tr>" & vbCrLf )
			Response.Write( "</table>" & vbCrLf )
		Else
			Response.Write navigationMenu
		End If
	
	End Sub	


	'*********************************************************************
	
	Function DetermineView( defaultView )
	
		Dim updatedView
		Dim displayedPageURL

		'Always default to the value given.
		updatedView = defaultView
	
		'Following Code is for Chemicals only, but it will not effect the
		'operation of the other areas of the site, provided they do not have
		'a region inside their URL.  See configuration guide for more information.	
		'This is here so we can have only a single navigation file which contains
		'information for multiple regions.  This code will determine which
		'navigation view to use.
		
		displayedPageURL = LCase(Request.ServerVariables("URL"))
		
		If ( InStr( displayedPageURL, "/asiapacific/" ) ) Then
			updatedView = defaultView & "AP"
		ElseIf ( InStr( displayedPageURL, "/europe/" ) ) Then
			updatedView = defaultView & "EU"	
		ElseIf ( InStr( displayedPageURL, "/latinamerica/" ) ) Then
			updatedView = defaultView & "LA"	
		ElseIf ( InStr( displayedPageURL, "/mideastafrica/" ) ) Then
			updatedView = defaultView & "ME"		
		ElseIf ( InStr( displayedPageURL, "/northamerica/" ) ) Then
			updatedView = defaultView & "NA"	
		ElseIf ( InStr( displayedPageURL, "/worldwide/" ) ) Then
			updatedView = defaultView & "WW"			
		End If
		
		'End of Chemcials Region Code
	
		DetermineView = updatedView
	
	End Function	
	
	Function DisplayNewsroomSearch( searchView )
	
	Dim tableBG, searchFolder
	
	Select Case searchView

		Case "News Releases"
			searchFolder = "/Corporate/Newsroom/NewsReleases/"
			IndexFile = searchFolder & "NewsReleaseIndex.asp"
			
		CAse "Op-Eds"
			searchFolder = "/Files/Corporate/"
			IndexFile = "/Corporate/Newsroom/OpEds/OpEdsSearch.asp"
		
		Case "Speeches & Interviews"
			searchFolder = "/Corporate/Newsroom/SpchsIntvws/"
			IndexFile = searchFolder & "SpeechesInterviewsSearch.asp"
			
		Case "Publications"
			searchFolder = "/Corporate/Newsroom/Publications/"
			IndexFile = searchFolder & "PublicationsSearch.asp"
			
		Case "News Releases Index Archive Chemicals"
			searchFolder = "/Corporate/Newsroom/NewsReleases/"
			IndexFile = searchFolder & "NewsReleaseIndexArchiveChemicals.asp"
			
		Case "News Releases Index Archive ExxonMobil"
			searchFolder = "/Corporate/Newsroom/NewsReleases/"
			IndexFile = searchFolder & "NewsReleaseIndexArchiveExxonMobil.asp"
		
		Case "News Releases Index Archive Mobil"
			searchFolder = "/Corporate/Newsroom/NewsReleases/"
			IndexFile = searchFolder & "NewsReleaseIndexArchiveMobil.asp"

		Case "News Releases Index Archive Exxon"
			searchFolder = "/Corporate/Newsroom/NewsReleases/"
			IndexFile = searchFolder & "NewsReleaseIndexArchiveExxon.asp"
			
		Case Else
			searchFolder = "/Corporate/Newsroom/"
			IndexFile = searchFolder 
	End Select
	%>
			<table width="550" border="0" cellpadding="1" cellspacing="0" bgcolor="#CCCCCC">
		<tr>
		<td>
			<table width="548" border="0" cellpadding="1" cellspacing="0" bgcolor="#E8F4FF">
			<tr>
			<td>

<script language="JavaScript" >
<!--***Function checkNewsSearchInput() is activated on the onSubmit event of the Search Form.****  -->
<!--***This function checks the contents of the Search Input Box for unchanged default input or blank input.****  -->
<!--******************************************************************  -->
	function checkNewsSearchInput() 
	{	
		validity = false;
		
		if (document.frmNewsroomSearch.qt.value == "")
		{
			alert("Please Enter Search Criteria in the Search box") ;
			document.frmNewsroomSearch.qt.value = "" ;
			document.frmNewsroomSearch.qt.focus();
		}//end if
		
		else
		{
			validity = true;
		}
		
		return validity;
	}  //end checkNewsSearchInput()
	
	function redirectNewsroomList()
	{
		loc = "<%=IndexFile%>" + "#" + document.frmNewsroomList.mon.value + document.frmNewsroomList.yr.value;
		window.location.href = loc;
		return false;
	}//end redirectNewsroomList()
</script>			
<%if searchView = "Op-Eds" or searchView = "Speeches & Interviews" or searchView = "News Releases" or searchView = "News Releases Index Archive Chemicals" or searchView = "News Releases Index Archive ExxonMobil" or searchView = "News Releases Index Archive Mobil" or searchView = "News Releases Index Archive Exxon" then%>

				<table width="540" border="0" cellpadding="2" cellspacing="0" bgcolor="#E8F4FF">
					<tr>
						<td width="6">&nbsp;</td>
						<td width="140">
							<span class="cnhdr-blue12">Search ExxonMobil</span><br /><span class="cnhdr-grey12"><%=searchView%>:</span>
						</td>
<form name="frmNewsroomList" action="" method="post" onSubmit="javascript: return redirectNewsroomList();">
						<td width="180" valign="center">
						
							<select name="mon" >
								<%
								for i = 1 to 9 
								%>
									<option value="0<%=i%>"><%=Monthname(i) %></option>
								<%
								next
								%>
								<%
								for i = 10 to 12 
								%>
									<option value="<%=i%>"><%=Monthname(i) %></option>
								<%
								next
								%>
							</select>
							<%
								if searchView = "Op-Eds" then
							%>
								<select name="yr" >
									<%
									for i = 1999 to Year(Date) 
									%>
										<option value="<%=i%>"><%=i %></option>
									<%
									next
									%>
								</select>
							<%
								elseif searchView = "Speeches & Interviews" then
							%>
								<select name="yr" >
									<%
									for i = 1997 to Year(Date) 
									%>
										<option value="<%=i%>"><%=i %></option>
									<%
									next
									%>
								</select>
							<%
								elseif searchView = "News Releases" then
							%>
								<select name="yr" >
									<%
									for i = 2000 to Year(Date) %>
										<option value="<%=i%>"><%=i %></option>
									<%
									next
									%>
								</select>
							<%
								elseif searchView = "News Releases Index Archive ExxonMobil" then
							%>
								<select name="yr" >
									<%
									for i = 1999 to Year(Date) %>
										<option value="<%=i%>"><%=i %></option>
									<%
									next
									%>
								</select>
							<%
								elseif searchView = "News Releases Index Archive Chemicals" then
							%>
								<select name="yr" >
									<%
									for i = 1995 to Year(Date) %>
										<option value="<%=i%>"><%=i %></option>
									<%
									next
									%>
								</select>
							<%
								elseif searchView = "News Releases Index Archive Exxon" then
							%>
								<select name="yr" >
									<%
									for i = 1997 to Year(Date) %>
										<option value="<%=i%>"><%=i %></option>
									<%
									next
									%>
								</select>
							<%
								elseif searchView = "News Releases Index Archive Mobil" then
							%>
								<select name="yr" >
									<%
									for i = 1999 to Year(Date) %>
										<option value="<%=i%>"><%=i %></option>
									<%
									next
									%>
								</select>
							<%
								end if
							%>
							
						</td>
						<td>
							<input type="image" name="searchgo" src="/Images/g_red_arrow.gif" border="0" />
						</td>
				</form>							

<form name="frmNewsroomSearch" action="http://search.exxon.mobil.com/portal/query.html" method="get" onSubmit="javascript: return checkNewsSearchInput();">
    <input type="Hidden" name="URL" value="http://search.exxon.mobil.com/portal/query.html">
   <input type="Hidden" name="col" value="xom"> <!-- ultraseek collection to query -->
   <input type="Hidden" name="qc" value="xom"> <!-- ultraseek collection to display -->
   <input type="Hidden" name="nh" value="10"> <!-- parm for number of hits -->
   <input type="Hidden" name="st" value="1"> <!-- parm for starting hit number (always 1 from this FORM) -->
   <input type="Hidden" name="rf" value="0"> <!-- parm for sort order (1-date, 0-relevance) -->
   <input type="Hidden" name="qm" value="0"> <!-- parm for ? (turns something off) -->
   <input type="Hidden" name="pw" value="100%"> <!-- parm for page width -->
   <input type="Hidden" name="ws" value="0"> <!-- parm to turn off word score -->
   <input type="Hidden" name="lk" value="1"> <!-- parm to show summaries -->
   <input type="Hidden" name="rq" value="0"> <!-- parm for TYPE of search (new search) -->
   <input type="Hidden" name="si" value="0"> <!-- parm for allowing "Search the Internet" option -->
						<td><img src="/images/spacer.gif" height="1" width="20" border="0"><span class="cnhdr-grey12">OR</span><img src="/images/spacer.gif" height="1" width="20" border="0"></td>
						<td width="150">
						  <input type="hidden" name="qp" size="18" length="18" maxlength="50" value="url:<%=searchFolder%>" />
						  <input type="text" name="qt" size="18" length="18" maxlength="50" />
						</td>
						<td>
							<input type="image" name="searchgo" src="/Images/g_red_arrow.gif" border="0" />
						</td>
					</tr>
				</form>				
			</table>
<%else%>

				<table width="540" border="0" cellpadding="2" cellspacing="0" bgcolor="#E8F4FF">
<form name="frmNewsroomSearch" action="http://search.exxon.mobil.com/portal/query.html" method="get" onSubmit="javascript: return checkNewsSearchInput();">
    <input type="Hidden" name="URL" value="http://search.exxon.mobil.com/portal/query.html">
   <input type="Hidden" name="col" value="xom"> <!-- ultraseek collection to query -->
   <input type="Hidden" name="qc" value="xom"> <!-- ultraseek collection to display -->
   <input type="Hidden" name="nh" value="10"> <!-- parm for number of hits -->
   <input type="Hidden" name="st" value="1"> <!-- parm for starting hit number (always 1 from this FORM) -->
   <input type="Hidden" name="rf" value="0"> <!-- parm for sort order (1-date, 0-relevance) -->
   <input type="Hidden" name="qm" value="0"> <!-- parm for ? (turns something off) -->
   <input type="Hidden" name="pw" value="100%"> <!-- parm for page width -->
   <input type="Hidden" name="ws" value="0"> <!-- parm to turn off word score -->
   <input type="Hidden" name="lk" value="1"> <!-- parm to show summaries -->
   <input type="Hidden" name="rq" value="0"> <!-- parm for TYPE of search (new search) -->
   <input type="Hidden" name="si" value="0"> <!-- parm for allowing "Search the Internet" option -->
					<tr>
						<td width="6">&nbsp;</td>
						<td width="140">
							<span class="cnhdr-blue12">Search ExxonMobil</span><br /><span class="cnhdr-grey12"><%=searchView%>:</span>
						</td>
						<td width="187">
						  <input type="hidden" name="qp" size="18" length="18" maxlength="50" value="url:<%=searchFolder%>" />
						  <input type="text" name="qt" size="18" length="18" maxlength="50" />
						</td>
						<td>
							<input type="image" name="searchgo" src="/Images/g_red_arrow.gif" border="0" />
						</td>
					</tr>
				</form>				
			</table>
<%end if%>
			</td>
			</tr>
			</table>
		</td>
		</tr>
		</table>
<%		
	End Function	

%>

