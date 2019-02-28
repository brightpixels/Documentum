<%@ Page language="c#" Codebehind="contact_us.aspx.cs" AutoEventWireup="false" Inherits="Corporate.contact_us" validateRequest="false" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="STYLESHEET" href="/Imports/teem_main.css"/>


<title>
	<%=strTitle%>
</title>
<style type="text/css">
.class1 A:link {text-decoration: none}
.class1 A:visited {text-decoration: none}
.class1 A:active {text-decoration: none}
.class1 A:hover {text-decoration: underline; color: blue;}
</style>
<script type="JAVASCRIPT">
var gDate;
    var gTime;
    var gScript;
    gDate = new Date();
    gTime = gDate.getTime();
    gScript = "<img src='http://pro.hit.gemius.pl/_"+gTime+"/redot.gif/id=.WBKsecPR8vz01a5uUj1OcdvP6N88gbfit5gXQ1MvZv.57' width='1' height='1' border='0'>";
</script>
<script src="/imports/js/jquery-1.9.1_fromEndrosedRepo.min.js"></script>
<script>
	$(document).ready(function(){
		if($("#DisplayLang").val() == "Russian")
		{
			$("#CustomerP").css("display","none");
			$("#FirstNameP").css("display","none");
			$("#LastNameP").css("display","none");
			$("#PositionP").css("display","none");
			$("#CompanyP").css("display","none");
			$("#AddressP").css("display","none");
			$("#CitytownP").css("display","none");
			$("#StateP").css("display","none");
			$("#PostalCodeP").css("display","none");
			$("#PhoneP").css("display","none");
			$("#FaxP").css("display","none");
			
		}
		if( $('a[href="http://www.exxonmobil.com/Global-All/Legal/TC_xom_French.aspx"]').length ) {
				$('a[href="http://www.exxonmobil.com/Global-All/Legal/TC_xom_French.aspx"]').attr("href", "http://corporate.esso.fr/fr-fr/legal-pages/donn%C3%A9es-personnelles");
			}
		if( $('a[href="http://www.exxonmobil.com/Global-All/Legal/TC_xom_Italian.aspx"]').length ) {
				$('a[href="http://www.exxonmobil.com/Global-All/Legal/TC_xom_Italian.aspx"]').attr("href", "http://www.exxonmobil.it/it-it/pagine-legali/privacy-policy");
			}
			
	});
</script>
</head>
<body topmargin="6" leftmargin="0" >
<form id="EnquiryForm" action="contact_us.aspx" method="post" runat="server">
<table width="760" cellspacing="2" cellpadding="0" border="0">
<p> <asp:label id="PageErrMsg" runat="server" ForeColor="Red"></asp:label></p>
					
	<asp:panel id="MainPage" Runat="server" class="formHolder clrfix">	

	<tr>
		<td width="45">&nbsp;
		</td>
		<td class="hdr-red" width="715">
			<asp:label id="Label1" runat="server" Font-Bold="True">contact us via e-mail</asp:label>
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
							<strong><asp:label id="Label2" runat="server"> indicates a required field</asp:label></strong>
						</p>
						<table border="0" width="100%" cellspacing="2" cellpadding="0">
							<tr valign="top" class="text">
								<td width="20%" align="left"></td>
								<td width="80%"></td>
							</tr>
						<tr valign="top" class="text">
						<td align="left">												<!-- Country -->
							<label style="text-align:left; width:100px">
								<asp:label id="CountryLabel" runat="server"></asp:label>: <FONT color="red"><em>*</em></FONT>
							</label>		
							<asp:dropdownlist id="CountryCode" Width="200px" runat="server" AutoPostBack="True" 
													DataValueField="CountryCode" DataTextField="countryname">
							</asp:dropdownlist>
						</td>
						<td align="left">
							<asp:Label id="CountryError" ForeColor="#ff0033" runat="server"></asp:Label>
						<td>
						</tr>
						<tr valign="top" class="text">
						<td align="left">
						<div style="width:500; float:none; display:block; overflow:auto; ">
							<label style="text-align:left; width:100px">
							<asp:label id="SubjectLabel" runat="server"></asp:label>: <FONT color="red"><em>*</em></FONT></label>
							
							<asp:dropdownlist id="Subject" runat="server" style="width:345px"></asp:dropdownlist>
						</div>
						
						</td>
						<td align="left">
							<asp:Label id="SubjectError" ForeColor="#ff0033" runat="server" style="text-align:left; width:auto"></asp:Label>
						<td>
						</tr>
						<tr valign="top" class="text">
						<td align="left">

						<asp:Panel id="FirstNameP" Runat="server" Visible="False" CssClass="fieldHolder">	<!-- First Name -->
							<label style="text-align:left; width:100px"><asp:label id="FirstNameLabel" runat="server"></asp:label>:</label>
							<asp:textbox id="FirstName" runat="server" Width="250px"></asp:textbox>
						</asp:Panel>
						<td>
						</tr>
						<tr valign="top" class="text">
						<td align="left">
						<asp:Panel id="LastNameP" Runat="server" Visible="False" CssClass="fieldHolder">	<!-- Last Name -->
							<label style="text-align:left; width:100px"><asp:label id="SurnameLabel" runat="server"></asp:label>:</label>
							<asp:textbox id="LastName" runat="server" Width="250px"></asp:textbox>
						</asp:Panel>
						<td>
						</tr>
						<tr valign="top" class="text">
						<td align="left">
						<asp:Panel id="PositionP" Runat="server" Visible="False" CssClass="fieldHolder">	<!-- Position? -->
							<label style="text-align:left; width:100px"><asp:label id="PositionLabel" runat="server"></asp:label>:</label>
							<asp:textbox id="Position" runat="server" Width="250px"></asp:textbox>
						</asp:Panel>
						<td>
						</tr>
						<tr valign="top" class="text">
						<td align="left">
							<label style="text-align:left; width:100px"><asp:label id="EmailLabel" runat="server"></asp:label>: <FONT color="red"><em>*</em></FONT></label>
							<asp:textbox id="EmailFrom" runat="server" Width="250px"></asp:textbox>
							
						</td>
						
						<td align="left">
							<asp:Label id="EmailError" ForeColor="#ff0033" runat="server" style="text-align:left; width:auto"></asp:Label>
						</td>
						</tr>
						<tr valign="top" class="text">
						<td align="left">

						<asp:Panel id="CompanyP" Runat="server" Visible="False" CssClass="fieldHolder">	<!-- Company -->
							
							<label style="text-align:left; width:100px"><asp:label id="CompanyLabel" runat="server"></asp:label>:</label>
							<asp:textbox id="Company" runat="server" Width="250px"></asp:textbox>
						</asp:Panel>
						</td>
						</tr>
						<tr valign="top" class="text">
						<td align="left">

						<asp:Panel id="AddressP" Runat="server" Visible="False" CssClass="fieldHolder">	<!-- Address -->
							<label style="text-align:left; width:100px"><asp:label id="AddressLabel" runat="server"></asp:label>:</label>
							<asp:textbox id="Address" runat="server" Width="250px"></asp:textbox>
						</asp:Panel>
						</td>
						</tr>
						<tr valign="top" class="text">
						<td align="left">

						<asp:Panel id="CitytownP" Runat="server" Visible="False" CssClass="fieldHolder">	<!-- City -->
							<label style="text-align:left; width:100px"><asp:label id="CityLabel" runat="server"></asp:label>:</label>
							<asp:textbox id="Citytown" runat="server" Width="250px"></asp:textbox>
						</asp:Panel>
						</td>
						</tr>
						<tr valign="top" class="text">
						<td align="left">

						<asp:Panel id="StateP" Runat="server" Visible="False" CssClass="fieldHolder">	<!-- State -->
							<label style="text-align:left; width:100px"><asp:label id="StateLabel" runat="server"></asp:label>:</label>
							<asp:textbox id="State" runat="server" Width="250px"></asp:textbox>
						</asp:Panel>
						</td>
						</tr>
						<tr valign="top" class="text">
						<td align="left">

						<asp:Panel id="PostalCodeP" Runat="server" Visible="False" CssClass="fieldHolder">	<!-- Postal Code -->
							<label style="text-align:left; width:100px"><asp:label id="PostalCodeLabel" runat="server"></asp:label>:</label>
							<asp:textbox id="PostalCode" runat="server" Width="250px"></asp:textbox>
						</asp:Panel>
						</td>
						</tr>
						<tr valign="top" class="text">
						<td align="left">

						<asp:Panel id="PhoneP" Runat="server" Visible="False" CssClass="fieldHolder">	<!-- Phone# -->
							<label style="text-align:left; width:100px"><asp:label id="PhoneLabel" runat="server"></asp:label>:</label>
							<asp:textbox id="Phone" runat="server" Width="250px"></asp:textbox>
						</asp:Panel>
						</td>
						<td align="left">
							<asp:Label id="PhoneError" ForeColor="#ff0033" runat="server" style="width:345px"></asp:Label>
						</td>
						</tr>
						<tr valign="top" class="text">
						<td align="left">

						<asp:Panel id="FaxP" Runat="server" Visible="False" CssClass="fieldHolder">		<!-- Fax# -->
							<label style="text-align:left; width:300px"><asp:label id="FaxLabel" runat="server"></asp:label>:</label>
							<asp:textbox id="Fax" runat="server" Width="150px"></asp:textbox>
						</asp:Panel>
						</td>
						</tr>

						<p>
							
						</p>
						
						<tr id="CustomerP" valign="top" class="text">
						<td align="left">
							<label Style="text-align:left;><asp:label id="CustomerLabel" runat="server"></asp:label>:<FONT color="red"><em>*</em></FONT></label>								<asp:radiobuttonlist id="CurrentCustomer" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" TextAlign="left">			
								<asp:ListItem Selected="True" Value="Yes"/>
								<asp:ListItem Value="No"/>
							</asp:radiobuttonlist>
						</div>
						</td>
						<td align="left">
							<asp:Label id="CustomerError" ForeColor="#ff0033" runat="server" style="text-align:left; width:auto"></asp:Label>
						</td>
						</tr>
						
						
						<tr valign="top" class="text">
						<td align="left">										<!-- Your request or question.... -->
							<label Style="text-align:left;"><asp:label id="QuestionLabel" runat="server"></asp:label>: <FONT color="red"><em>*</em></FONT></label>
							</br>
							<asp:textbox id="Question" runat="server" Width="280px" Height="150px" TextMode="MultiLine"></asp:textbox>
							<asp:Label id="QuestionError" ForeColor="#ff0033" runat="server" style="text-align:left; width:200px"></asp:Label>
						</div>
						</td>
						<td align="left">
							
						</td>
						</tr>
						<tr valign="top" class="text">
						<td align="left">
						
							<p></p> <!-- for a bit of vertical gap. -->
							<hr size="1" style="width:400px"/>
							<p></p> <!-- for a bit of vertical gap. -->
							<asp:Panel id="TC" class="fieldHolder wide" runat="server" Visible="False">
								<p></p> <!-- for a bit of vertical gap. -->
								<hr size="1" style="width:400px"/>
								<p></p> <!-- for a bit of vertical gap. -->
								<div class="fieldHolder">							<!-- Please indicate your acceptance.... -->
									<asp:Label id="ChkLabel1" runat="server"></asp:Label>
								</div>

								<asp:Label id="Chkbox1Error" ForeColor="#ff0033" runat="server"></asp:Label>

								<div class="fieldHolder">									<!-- includes text: I accept the conditions.... -->
									<asp:CheckBox id="TCChkbox1" runat="server"/>			<!-- Nothing appears to affect width of this text. -->
								</div>
							</asp:Panel>

							<asp:Panel id="TC1" class="fieldHolder wide" Runat="server" Visible="False">
								<div class="fieldHolder">
									<asp:Label id="ChkLabel2" runat="server"></asp:Label>
								</div>

								<div class="fieldHolder wide">
									<asp:CheckBox id="TCChkbox2" runat="server"></asp:CheckBox>
								</div>

								<p>
									<asp:Label id="Chkbox2Error" ForeColor="#ff0033" runat="server"></asp:Label>
								</p>
							</asp:Panel>

							<asp:Panel id="TC2" Runat="server" Visible="False">
								<div class="fieldHolder">
									<asp:Label id="ChkLabel3" runat="server"></asp:Label>
								</div>

								<div class="fieldHolder wide">
									<asp:CheckBox id="TCChkbox3" runat="server"></asp:CheckBox>
								</div>

								<p>
									<asp:Label id="Chkbox3Error" ForeColor="#ff0033" runat="server"></asp:Label>
								</p>
							</asp:Panel>
						
						</td>
						</tr>
						<tr valign="top" class="text">
						<td align="left">

						<asp:Panel id="Line1" Runat="server" Visible="False">
								<div class="fieldHolder">
									<p></p>
									<hr size="1" style="width:400px"/>
								</div>
							</asp:Panel>
						

						<div class="fieldHolder">										<!-- Button text is pulled from translations file in C# code. -->
							<div class="buttnHolder">
								<span class="barbgleftSumbit left">
									<span class="barbgrightSubmit" style="margin-right:4px;">
										<asp:button id="Submit" class="middleSubmitBtn" runat="server"/>
										<asp:button id="Clear" class="middleSubmitBtn" runat="server"/>
									</span>
								</span>
							</div>
						</div>
						</td>
						</tr>

						<input type="hidden" name="SitePort"                                 id="SitePort"> 
						<input type="hidden" name="AcceptValue"  value="true"                id="Accept">
						<input type="hidden" name="LanguageCode" value="<%=strCountryCode%>" id="LanguageCode">
						<input type="hidden" name="ShowTC"       value="<%=strTc%>"          id="ShowTC">
						<input type="hidden" name="Language"     value="<%=strLanguage%>"    id="DisplayLang">
						<input type="hidden" name="Country"      value="">
						<input type="hidden" name="Site"         value="<%=strSite%>">
						<input type="hidden" name="Brand"        value="<%=strBrandName%>"   id="Brand">
						
						<tr>
							<td>
							<font color="#FFFFFF">
								<%if(strCountryCode == "Pl" && strLanguage == "Polish" && strBrandName == "MOBIL") {%>
								<SCRIPT LANGUAGE="JAVASCRIPT">
								document.write(gScript);
								</SCRIPT>
								<%}%>
								</font>
							</td>
						</tr>						

					</asp:panel>	<!-- id="MainPage" class="formHolder clrfix" -->

					<asp:panel id="PostPage" Runat="server" Visible="False">
					
						<tr>
							<td width="45">&nbsp;
							</td>
							<td class="hdr-red" width="715">
								<asp:label id="ContactUsLabel" runat="server"></asp:label>
							</td>
						</tr>
						<tr>
							<td colspan="2" class="tdNav" Width="760">&nbsp;
							</td>
						</tr>
						<tr>
							<td width="45">&nbsp;
							</td>
						</tr>
						<tr>
							<td width="45">&nbsp;
							</td>
							<td width="715">
								<asp:label id="ErrorLabel1" runat="server" Width="712px" Font-size="X-Small"></asp:label>

							</td>
						</tr>
						<tr>
						<td width="45">&nbsp;
						</td>
						<td>
						<div class="fieldHolder">
							<div class="buttnHolder">
								<span class="barbgleftSumbit left">
									<span class="barbgrightSubmit">
										<asp:Button id="CloseButton" runat="server" Text="Close" class="middleSubmitBtn"></asp:Button>
									</span>
								</span>
							</div>
						</div>
						</td>
						</tr>
					</asp:panel>

					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>
</form>	

</body>
</html>
