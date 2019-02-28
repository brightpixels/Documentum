<%@ Language=VBScript %>	
<%
'Get the PATH_INFO server variable and read the country and language.
'Check the Accept vaule is true, if not redirect it to TNC page of respective country and language
'this is helpful if contact us page is called directly.
'
'This code assuming that country and language are always the first string after domain.
'
'******************************************************
'This peice of code has to be in top, since it has to redirect before html any rendering starts
'******************************************************
Session.CodePage = 65001
Response.CharSet = "utf-8"

Dim strCountryCode, strLanguage, strTNCPagePath, strTNCAccept, strContactAddress, strUsage, strHitsValue
Dim strBrandName, strServerName, strPortNumber, strPathInfo

strServerName = Request.ServerVariables("SERVER_NAME")
strPortNumber = Request.ServerVariables("SERVER_PORT")
strPathInfo = Request.ServerVariables("PATH_INFO")

strCountryCode = ""
strLanguage = ""
strBrandName = ""
strUsage = ""

strCountryCode = Request("CountryCode")
strLanguage = Request("Language")
strBrandName = Request("Brand")
strUsage = Request("Usage")
strSite = Request("Site")

If strCountryCode = "" Then
	strCountryCode = "Global"
End If

If strLanguage = "" Then
	strLanguage = "English"
End If

If strBrandName = "" Then
	strBrandName = "ExxonMobil"
End If

'If strUsage = 0 or if no parameter is passed, then work normally with given BCL
'If strUsage = 1 then use "English" TNC and "English" Contact Us, but pull given Country dropdowns
If strUsage <> "" Then
	strLanguage = "English"
	'Check if this is prodouction environment, if not use respective environment server name
	'strContactAddress = "http://hoedcw86.na.xom.com:5001/Imports/Contact_Us/contact_us.asp"
	If UCase(left(strServerName,3)) = "WWW" Then
		strContactAddress = "http://" + strServerName + strPathInfo
		strTNCPagePath = "http://www.exxonmobil.com/Global-All/Legal/TC_" + strUsage +"_"+ strLanguage + ".asp?sourcepage=contactus&CountryCode=" + strCountryCode + "&Language=" + strLanguage + "&Brand=" + strBrandName + "&Site=" + strSite + "&sourceaddress=" + strContactAddress
	Else
		strContactAddress = "http://" + strServerName + ":" + strPortNumber + strPathInfo
		strTNCPagePath = "http://hoedcw86.na.xom.com:4001/Global-All/Legal/TC_" + strUsage +"_"+ strLanguage + ".asp?sourcepage=contactus&CountryCode=" + strCountryCode + "&Language=" + strLanguage + "&Brand=" + strBrandName + "&Site=" + strSite + "&sourceaddress=" + strContactAddress
	End If
Else
	'Check if this is prodouction environment, if not use respective environment server name
	'strContactAddress = "http://hoedcw86.na.xom.com:5001/Imports/Contact_Us/contact_us.asp"
	If UCase(left(strServerName,3)) = "WWW" Then
		strContactAddress = "http://" + strServerName + strPathInfo
		strTNCPagePath = "http://www.exxonmobil.com/Global-All/Legal/TC_" + strCountryCode +"_"+ strLanguage + ".asp?sourcepage=contactus&CountryCode=" + strCountryCode + "&Language=" + strLanguage + "&Brand=" + strBrandName + "&Site=" + strSite + "&sourceaddress=" + strContactAddress
	Else
		strContactAddress = "http://" + strServerName + ":" + strPortNumber + strPathInfo
		strTNCPagePath = "http://hoedcw86.na.xom.com:4001/Global-All/Legal/TC_" + strCountryCode +"_"+ strLanguage + ".asp?sourcepage=contactus&CountryCode=" + strCountryCode + "&Language=" + strLanguage + "&Brand=" + strBrandName + "&Site=" + strSite + "&sourceaddress=" + strContactAddress
	End If
End If



'Check if Terms and conditions are accepted or not?
strTNCAccept = ""
strTNCAccept = Request("AcceptValue")
If strTNCAccept <> "True" Then
	Response.Redirect strTNCPagePath
End If

%>
<!--#include virtual="Imports/ASPImports.asp"--> 	
<!--#include virtual="Imports/lcwdbConnection.asp"-->
<html>
<head>
<SCRIPT LANGUAGE="JAVASCRIPT">
	//Refresh when the country is changed in the drop down list and load appropriate subjects
	//This function has to be in top, since it has to refresh before html any rendering starts
	function ChangeSubjects(val)
	{
		document.EnquiryForm.action = "";
		document.EnquiryForm.submit();
	}
</SCRIPT>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="STYLESHEET" href="/Imports/teem_main.css"/>
<%
''****************************** Read XML File ***************************************
'Variables to hold label strings from xml files
Dim strPageTitle
Dim strRequiredText
Dim strSubjectText
Dim strSelectSubjectText
Dim strFirstNameText
Dim strSurnameNameText
Dim strPositionTitleText
Dim strEmailText
Dim strCompanyText
Dim strAddressText
Dim strCityTownText
Dim strProvinceStateText
Dim strCountryText
Dim strSelectCountryText
Dim strPostalCodeText
Dim strPhoneNumberText
Dim strFaxNumberText
Dim strCurrentCustomerText
Dim strYesText
Dim strNoText
Dim strQuestionText
Dim strSendText
Dim strClearFormText
Dim strErrChooseSubjectText
Dim strErrEnterEmailText
Dim strErrSelectCountryText
Dim strErrValidPhone
Dim strErrValidFax
Dim strErrEnterCustomer
Dim strErrEnterQuestion

'Get Language code
Dim strLanguageCode

If strLanguage = "Polish" Then
strLanguageCode = "PL"
ElseIf  strLanguage = "Portuguese" and  strCountryCode ="PT" Then
strLanguageCode = "PT"
Else
strLanguageCode = left(strLanguage,2)
End If

'Path for the interface strings xml file
Dim strXMLFile
strXMLFile = "Translations/" & strLanguageCode & "InterfaceStrings.asp"

Dim objXML
Set objXML = Server.CreateObject("MSXML2.DOMDocument.3.0")

If objXML Is Nothing Then
	Response.Write "Error 2412: Problem encountered, please contact the administrator."
	Set objXML = Nothing
	Set fileSystem = Nothing
	Response.End
End If

Dim fileSystem
Set fileSystem = CreateObject("Scripting.FileSystemObject")

if fileSystem.fileexists (Server.MapPath(strXMLFile)) then
	objXML.async = False
	objXML.Load (Server.MapPath(strXMLFile))
	'Get all the interface label strings
		
	strPageTitle = objXML.selectSingleNode("root/PageTitle").text
	strRequiredText = objXML.selectSingleNode("root/RequiredText").text
	strSubjectText = objXML.selectSingleNode("root/SubjectText").text
	strSelectSubjectText = objXML.selectSingleNode("root/SelectSubjectText").text

	strFirstNameText = objXML.selectSingleNode("root/FirstNameText").text
	strSurnameNameText = objXML.selectSingleNode("root/SurnameNameText").text
	strPositionTitleText = objXML.selectSingleNode("root/PositionTitleText").text
	strEmailText = objXML.selectSingleNode("root/EmailText").text
	strCompanyText = objXML.selectSingleNode("root/CompanyText").text
	strAddressText = objXML.selectSingleNode("root/AddressText").text
	strCityTownText = objXML.selectSingleNode("root/CityTownText").text
	strProvinceStateText = objXML.selectSingleNode("root/ProvinceStateText").text
	strCountryText = objXML.selectSingleNode("root/CountryText").text
	strSelectCountryText = objXML.selectSingleNode("root/SelectCountryText").text
	strPostalCodeText = objXML.selectSingleNode("root/PostalCodeText").text
	strPhoneNumberText = objXML.selectSingleNode("root/PhoneNumberText").text
	strFaxNumberText = objXML.selectSingleNode("root/FaxNumberText").text
	strCurrentCustomerText = objXML.selectSingleNode("root/CurrentCustomerText").text
	strYesText = objXML.selectSingleNode("root/YesText").text
	strNoText = objXML.selectSingleNode("root/NoText").text
	strQuestionText = objXML.selectSingleNode("root/QuestionText").text
	strSendText = objXML.selectSingleNode("root/SendText").text
	strClearFormText = objXML.selectSingleNode("root/ClearFormText").text

	strErrChooseSubjectText = objXML.selectSingleNode("root/ChooseSubjectText").text
	strErrEnterEmailText = objXML.selectSingleNode("root/EnterEmailText").text 
	strErrSelectCountryText = objXML.selectSingleNode("root/SelectCountryText").text
	strErrValidPhone = objXML.selectSingleNode("root/ValidPhone").text
	strErrValidFax = objXML.selectSingleNode("root/ValidFax").text
	strErrEnterCustomer = objXML.selectSingleNode("root/EnterCustomer").text
	strErrEnterQuestion = objXML.selectSingleNode("root/EnterQuestion").text
else
	Response.write "Error 2413: Problem encountered, please contact the administrator."
	Set objXML = Nothing
	Set fileSystem = Nothing
	Response.End
end if


%>
<SCRIPT LANGUAGE="JAVASCRIPT">
	// Do validations for all the required fields
	function validate () {
		var strError = "";
		//Variables to flag the element if there is a validation error
		iSubjectSelect = 0;
		iEmailSelect = 0;
		iCountrySelect = 0;
		iPhoneSelect = 0;
		iFaxSelect = 0;
		iCurrentCustomerSelect = 0;
		iQuestionSelect = 0;
		
		// Validate if subject is selected or not
		if (document.EnquiryForm.Subject.value == "0") {
		 strError += "\n* <%=strErrChooseSubjectText%>";
		 iSubjectSelect = 1;
		}
		
		// Validate if the email is in proper format
		strMail = document.EnquiryForm.EmailFrom.value;
		var myRegExp=/^[\w-\.]{1,}\@([\da-zA-Z-]{1,}\.){1,}[\da-zA-Z-]{2,3}$/;

		var result = myRegExp.test(strMail);

		//result = strMail.match(/\w+@\w+\.\w+/);
		if (result == false) {
		 strError += "\n* <%=strErrEnterEmailText%>";
		 iEmailSelect = 1;
		}

		// Validate if Country is selected or not
		if (document.EnquiryForm.CountryCode.value == "0") {
		 strError += "\n* <%=strErrSelectCountryText%>";
		 iCountrySelect = 1;
		}

		var strValidChars = "0123456789";
		var strChar;
		myOption = -1;
		//  Validate Phone for valid charecters
		for (i = 0; i < document.EnquiryForm.Phone.value.length; i++) {
		   strChar = document.EnquiryForm.Phone.value.charAt(i);
		   if (strValidChars.indexOf(strChar) == -1) {
				myOption = i;
		   }
		}
		if (myOption != -1) {
	   	 strError += "\n* <%=strErrValidPhone%>";
	   	 iPhoneSelect = 1;
		}

		myOption = -1;
		//  Validate Fax for valid charecters
		for (i = 0; i < document.EnquiryForm.Fax.value.length; i++) {
		   strChar = document.EnquiryForm.Fax.value.charAt(i);
		   if (strValidChars.indexOf(strChar) == -1) {
				myOption = i;
		   }
		}
		if (myOption != -1) {
	   	 strError += "\n* <%=strErrValidFax%>"
	   	 iFaxSelect = 1;
		}

		//  Validate CurrentCustomer Radio Button is choosen
		myOption = -1;
		for (i=0; i<document.EnquiryForm.CurrentCustomer.length; i++) {
			if (document.EnquiryForm.CurrentCustomer[i].checked) {
				myOption = i;
			}
		}
		if (myOption == -1) {
	   	 strError += "\n* <%=strErrEnterCustomer%>"
	   	 iCurrentCustomerSelect = 1;
		}

		// Validate if Question is entered or not
		if (document.EnquiryForm.Question.value == "") {
		 strError += "\n* <%=strErrEnterQuestion%>"
		 iQuestionSelect = 1;
		}

		
		//Display the alert
		if (strError) {
			alert (strError);
			//Select and focus the element which does not have valid entry
			if (iSubjectSelect==1) {
	   		 document.EnquiryForm.Subject.focus();
			}
			else if (iEmailSelect==1) {
 	   		 document.EnquiryForm.EmailFrom.select();
	   		 document.EnquiryForm.EmailFrom.focus();
			}
			else if (iCountrySelect==1) {
	   		 document.EnquiryForm.CountryCode.focus();
			}
			else if (iPhoneSelect==1) {
	   		 document.EnquiryForm.Phone.select();
	   		 document.EnquiryForm.Phone.focus();
			}
			else if (iFaxSelect==1) {
	   		 document.EnquiryForm.Fax.select();
	   		 document.EnquiryForm.Fax.focus();
			}
			else if (iCurrentCustomerSelect==1) {
	   		 document.EnquiryForm.CurrentCustomer[0].focus();
			}
			else if (iQuestionSelect==1) {
	   		 document.EnquiryForm.Question.select();
	   		 document.EnquiryForm.Question.focus();
			}
		return false;
	   } 
	}//end 
	
	var gDate;
    var gTime;
    var gScript;
    gDate = new Date();
    gTime = gDate.getTime();
    gScript = "<img src='http://pro.hit.gemius.pl/_"+gTime+"/redot.gif/id=.WBKsecPR8vz01a5uUj1OcdvP6N88gbfit5gXQ1MvZv.57' width='1' height='1' border='0'>";
	
</SCRIPT>
<title>
	<%=strPageTitle%>
</title>
</head>
<body topmargin="6" leftmargin="0">

<table width="760" cellspacing="2" cellpadding="0" border="0">
	<tr>
		<td width="45">&nbsp;
		</td>
		<td class="hdr-red" width="715">
			<%=strPageTitle%>
		</td>
	</tr>
	<tr>
		<td colspan="2" class="tdNav" Width="760">&nbsp;
		</td>
	</tr>
	<tr>
		<td width="45">&nbsp;
		</td>
		<td width="715">
			<table width="550" cellspacing="0" cellpadding="2" border="0">
				<tr>
					<td>							
						<p>
							<b><FONT color="red">*</FONT></b>
							<strong><%=strRequiredText%></strong>
						</p>

						<form name="EnquiryForm" method="post" action="ContactUs.aspx" onSubmit="return validate()" id="form1">
							<table border="0" width="100%" cellspacing="2" cellpadding="0">
								<tr valign="top" class="text">
									<td width="20%" align="left"></td>
									<td width="80%" colSpan="3"></td>
								</tr>
								<tr valign="top" class="text">
									<p>
									<td align="left">
										 <%=strCountryText%>:<FONT color="red">*</FONT>  
									</td>
									<td align="left" colSpan="3">
										<SELECT name="CountryCode" style="WIDTH: 244px" onchange="ChangeSubjects()">
											<option value="0">-- <%=strSelectCountryText%> --</option>
											<%
											'Read Country strings xml file http://hoewwd18/contactus/ContactUs.aspx
											strXMLFile = "Translations/" & strLanguageCode & "CountryStrings.asp"
											if fileSystem.fileexists (Server.MapPath(strXMLFile)) then
												objXML.async = False
												objXML.Load (Server.MapPath(strXMLFile))
												'Error Handler
												if Err.number <> 0 Then
												  Response.Write "Error 2416: Problem encountered, please contact the administrator."
												  Err.Clear
												  noError = false
												  Set objXML = Nothing
												  Set fileSystem = Nothing
												  Response.End
												end if
												'Get the country and put it in option value for the drop down list
												Set oNameList = objXML.getElementsByTagName("countryname")
												Set oCodeList = objXML.getElementsByTagName("countrycode")
												For i = 0 TO (oCodeList.length -1)
												    strTempName = Trim(oNameList.item(i).text)
												    strTempCode = Trim(oCodeList.item(i).text)
													if UCase(strTempCode) = UCase(strCountryCode) then
														Response.Write "<option value='" + strTempCode +"' SELECTED>"
														Response.Write strTempName
														Response.Write "</option>"
														strCountry = strTempName
														'Country name is replaced here, so that, when user selects
														'new country from the drop down, it can be sent to the component
													else
														Response.Write "<option value='" + strTempCode +"'>"
														Response.Write strTempName
														Response.Write "</option>"
													end if
												Next
											else
												Response.write "Error 2414: Problem encountered, please contact the administrator."
												Set objXML = Nothing
												Set fileSystem = Nothing
												Response.End
											end if
											%>
										</SELECT>
									</td>
									</p>
								</tr>
								
								<tr valign="top" class="text">
									<td align="left">
										<p><%=strSubjectText%>:<FONT color="red">*</FONT></p>
									</td>
									<td align="left" colSpan="3">
										<p>
											<SELECT name="Subject" style="WIDTH: 384px">
												<option value="0">-- <%=strSelectSubjectText%> --</option>
													<%
													Set cmd = Server.CreateObject("ADODB.Command")
													Set cmd.ActiveConnection = objConn
													cmd.CommandText = "getTranslation"
													cmd.CommandType = 4	 'ADO constant for 4 - adCmdStoredProc
													If strCountryCode <> "Global" Then 
														cmd.Parameters(1) = strCountryCode
													Else
														cmd.Parameters(1) = "AL"
													End If
													cmd.Parameters(2) = strLanguage
													'Set execute and create our recordset
													set objRS = Server.createObject("ADODB.Recordset")
													objRS.Open cmd.Execute
													
													'Error Handler
													if Err.number <> 0 Then
													  Response.Write "Error 2415: Problem encountered, please contact the administrator."
													  Err.Clear
													  noError = false
													  Set objXML = Nothing
													  Set fileSystem = Nothing
													  Response.End
													end if

													'Loop for all the values of Subject in the database
													Do While Not objRS.EOF
														Response.Write "<option value='" + objRS.Fields("subject_translation") +"'>"
														Response.Write objRS.Fields("subject_translation") & "<br>"
														Response.Write "</option>"
														objRS.MoveNext
													Loop
													' Close our recordset and connection and dispose of the objects
													objRS.Close
													Set objRS = Nothing
													Set cmd = Nothing
													Set objXML = Nothing
													Set fileSystem = Nothing
													objConn.Close
													set objConn = Nothing
													%>
											</SELECT>
										</p>
									</td>
								</tr>
								<tr valign="top" class="text">
									<td align="left">
										<p><%=strFirstNameText%>:</p>
									</td>
									<td align="left" colSpan="3">
										<p>
											<input name="FirstName" style="WIDTH: 153px; HEIGHT: 22px" >
										</p>
									</td>
								</tr>
								<tr valign="top" class="text">
									<td align="left">
										<p><%=strSurnameNameText%>:</p>
									</td>
									<td align="left" colSpan="3">
										<p>
											<input name="LastName" style="WIDTH: 153px; HEIGHT: 22px" >
										</p>
									</td>
								</tr>
								<tr>
									<td align="left">
										<p><%=strPositionTitleText%>:</p>
									</td>
									<td align="left" colSpan="3">
										<p><input name="Postition" style="WIDTH: 153px; HEIGHT: 22px" ></p>
									</td>
								</tr>
								<tr>
									<td align="left"><p><%=strEmailText%>:<FONT color="red">*</FONT></p></td>
									<td align="left" colSpan="3">
										<INPUT name="EmailFrom" style="WIDTH: 153px; HEIGHT: 22px" >
									</td>
								</tr>
								<tr>
									<td align="left"><p><%=strCompanyText%>:</p></td>
									<td align="left" colSpan="3">
										<INPUT name="Company" style="WIDTH: 153px; HEIGHT: 22px" >
									</td>
								</tr>
								<tr>
									<p>
									<td align="left"><%=strAddressText%>:</td>
									<td><INPUT name="Address" style="WIDTH: 153px; HEIGHT: 22px" ></td>
									<td><%=strCityTownText%>:</td>
									<td><INPUT name="Citytown" style="WIDTH: 153px; HEIGHT: 22px"></td>
								</tr>
								<tr valign="top" class="text">
									<p>
									<td align="left"><%=strProvinceStateText%>:</td>
									<td><INPUT name="State" style="WIDTH: 153px; HEIGHT: 22px"></td>
									<td><%=strPostalCodeText%>:</td>
									<td><INPUT name="PostalCode" style="WIDTH: 153px; HEIGHT: 22px"></td>
									</p>
								</tr>
								<tr>
									<p>
									<td align="left"><%=strPhoneNumberText%>:</td>
									<td align="left" colSpan="3">
										<INPUT name="Phone" style="WIDTH: 153px; HEIGHT: 22px" >
									</td>
									</p>
								</tr>
							</table>
							<table border="0" width="100%" cellspacing="2" cellpadding="2">
								<tr>
									<p>
									<td>
										<%=strFaxNumberText%>: <INPUT name="Fax" style="WIDTH: 153px; HEIGHT: 22px">
									</td>
									</p>
								</tr>
								<tr>
									<p>
									<td><%=strCurrentCustomerText%>:<FONT color="red">*</FONT> 
										<INPUT type="radio" name="CurrentCustomer" value="Yes">&nbsp;<%=strYesText%> /&nbsp;
										<INPUT type="radio" name="CurrentCustomer" value="No"> <%=strNoText%>
									</td>
									</p>
								</tr>
								<tr valign="top" class="text">
									<p>
									<td align="left">
										<%=strQuestionText%>:<FONT color="red">*</FONT>
									</td>
									</p>
								</tr>
								<tr>
									<td>
										<p><TEXTAREA name=Question rows=5 wrap=physical cols=34></TEXTAREA>&nbsp;
										</p>
									</td>
								</tr>
								<tr>
									<td>
										<INPUT type="hidden" name="Country" value="<%=strCountry%>">
										<INPUT type="hidden" name="Language" value="<%=strLanguage%>">
										<INPUT type="hidden" name="LanguageCode" value="<%=strLanguageCode%>">
										<% If strSite <> "" Then %>
											<INPUT type="hidden" name="Site" value="<%=strSite%>">
										<% Else %>
											<INPUT type="hidden" name="Site" value="<%=strServerName%>">
										<% End If %>
										<INPUT type="hidden" name="Brand" value="<%=strBrandName%>">
										<INPUT type="hidden" name="SitePort" value="<%=Request.ServerVariables("SERVER_PORT")%>">
										<INPUT type="hidden" name="AcceptValue" value="True">
										<INPUT id="Submit" type="submit" value="<%=strSendText%>" name="Submit">&nbsp; 
										<INPUT type="reset" value="<%=strClearFormText%>" id="Reset1" name="Reset1">
									</td>
								</tr>
								<tr>
									<td>
									<font color="#FFFFFF">
										<%If strCountryCode = "Pl" and strLanguage = "Polish" and strBrandName = "MOBIL" Then%>
										<SCRIPT LANGUAGE="JAVASCRIPT">
										document.write(gScript);
										</SCRIPT>
										<%End If%>
										</font>
									</td>
								</tr>
							</table>
						</form>
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>

</body>
</html>