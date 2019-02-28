<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUS.aspx.cs" Inherits="ContactUS.ContactUS" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Contact US</title>
    <link href="/Imports/Sitecore-PVL.css" rel="stylesheet" type="text/css" />
    <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
    <script src="/imports/js/jquery-1.9.1_fromEndrosedRepo.min.js"></script>
    <script>
	function getURLParameterByName(name) {
    		name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
    		var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
        	results = regex.exec(location.search);
    		return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
	}

	$(document).ready(function(){
		var country = getURLParameterByName("country");
		if(country == "RU")
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
			
	});
    </script>
</head>

<body class="contactus" style="text-align: left;">
    <a class="skip" href="#mainBody">Skip to Main Content</a>
    <div id="">
        <div id="">
            <div id="mainBody">

                <asp:Label ID="PageErrMsg" runat="server" CssClass="errorText"></asp:Label>
                <form id="EnquiryForm" runat="server">
                    <asp:TextBox ID="scrollToTop" Style="filter: alpha(opacity=0); opacity: 0;" Width="1px" runat="server" onfocus="this.blur()"></asp:TextBox>
                    <asp:Panel ID="MainPage" runat="server" CssClass="formHolder clrfix">
                        <asp:Label ID="lbTitle" runat="server" Visible="false"></asp:Label>
                        <p>
                            <em>*</em>&nbsp;<asp:Label ID="lbRequire" runat="server"></asp:Label>
                        </p>

                        <div id="divRegion" runat="server" class="">
                            <!-- Region -->
                            <label>
                                <asp:Label ID="lbRegion" runat="server"></asp:Label>:
                            </label>
                            <asp:DropDownList ID="drpRegion" runat="server" AutoPostBack="True"
                                OnSelectedIndexChanged="drpRegion_SelectedIndexChanged" Width="200px">
                            </asp:DropDownList>
                        </div>

                        <p>
                            <asp:Label ID="CountryError" runat="server" CssClass="errorText"></asp:Label>
                        </p>

                        <div id="divCountry" class="fieldHolder wide" runat="server">
                            <!-- Country -->
                            <label>
                                <asp:Label ID="lbCountry" runat="server"></asp:Label>: <em>*</em>
                            </label>
                            <asp:DropDownList ID="drpCountry" runat="server" AutoPostBack="True" OnSelectedIndexChanged="drpCountry_SelectedIndexChanged" Width="280px">
                            </asp:DropDownList>
                        </div>

                        <div id="SubjectErr">
                            <asp:Label ID="SubjectError" runat="server" CssClass="errorText"></asp:Label>
                        </div>

                        <div id="lbMoreSubjectMesg">
                            <p>
                                <asp:Label ID="lbMoreSubjectMesg" runat="server" Visible="False" Style="font-weight: bold;"></asp:Label>
                            </p>
                        </div>

                        <div id="divSubject" runat="server" class="fieldHolder wide">
                            <!-- Subject -->
                            <label>
                                <asp:Label ID="lbSubject" runat="server"></asp:Label>: <em>*</em>
                            </label>
                            <asp:ListBox ID="ltSubject" runat="server" OnSelectedIndexChanged="ltSubject_SelectedIndexChanged" Rows="8" Width="350px"></asp:ListBox>
                        </div>

                        <p>
                            <br />
                        </p>
                        <p>
                            <asp:Label ID="EmailError" ForeColor="#FF0033" runat="server" Font-Bold="True"></asp:Label>
                        </p>

                        <div class="fieldHolder wide">
                            <label>
                                <asp:Label ID="lbEmail" runat="server"></asp:Label>: <em>*</em>
                            </label>
                            <asp:TextBox ID="EmailFrom" runat="server" Width="280px"></asp:TextBox>
                        </div>

                        <p>
                            <asp:Label ID="CustomerError" runat="server" CssClass="errorText"></asp:Label>
                        </p>

                        <div id="CustomerP" class="fieldHolder">

                            <!-- Current Customer? -->
                            <label>
                                <asp:Label ID="lbCustomer" runat="server"></asp:Label>:<em> *</em></label>

                            <asp:RadioButtonList ID="CurrentCustomer" runat="server" RepeatDirection="Horizontal"
                                RepeatLayout="Flow" CssClass="radioClass">
                                <asp:ListItem Selected="True" Value="Yes" />
                                <asp:ListItem Value="No" />
                            </asp:RadioButtonList>
                        </div>

                        <p>
                            <asp:Label ID="QuestionError" runat="server" CssClass="errorText"></asp:Label>
                        </p>

                        <div class="fieldHolder wide">

                            <!-- Your request or question.... -->
                            <label style="display: block;">
                                <asp:Label ID="lbQuestion" runat="server"></asp:Label>: <em>*</em></label>


                            <asp:TextBox ID="Question" runat="server" Width="280px" Height="150px"
                                TextMode="MultiLine"></asp:TextBox>
                        </div>

                        <asp:Panel ID="FirstNameP" runat="server" CssClass="fieldHolder">

                            <!-- First Name -->
                            <p></p>
                            <p></p>
                            <%-- for a bit of vertical gap. --%>
                            <label>
                                <asp:Label ID="lbFirstName"
                                    runat="server"></asp:Label>:
                            </label>
                            <asp:TextBox ID="FirstName" runat="server"
                                Width="150px"></asp:TextBox>
                        </asp:Panel>

                        <asp:Panel ID="LastNameP" runat="server" CssClass="fieldHolder">

                            <!-- Last Name -->
                            <p></p>
                            <!-- for a bit of vertical gap. -->
                            <label>
                                <asp:Label ID="lbLastname"
                                    runat="server"></asp:Label>:
                            </label>
                            <asp:TextBox ID="LastName" runat="server"
                                Width="150px"></asp:TextBox>
                        </asp:Panel>

                        <asp:Panel ID="PositionP" runat="server" CssClass="fieldHolder">

                            <!-- Position? -->
                            <p></p>
                            <!-- for a bit of vertical gap. -->
                            <label>
                                <asp:Label ID="lbPosition"
                                    runat="server"></asp:Label>:
                            </label>
                            <asp:TextBox ID="Position" runat="server"
                                Width="150px"></asp:TextBox>
                        </asp:Panel>

                        <asp:Panel ID="CompanyP" runat="server" CssClass="fieldHolder">
                            <!-- 

Company -->
                            <p></p>
                            <!-- for a bit of vertical gap. -->
                            <label>
                                <asp:Label ID="lbCompany"
                                    runat="server"></asp:Label>:
                            </label>
                            <asp:TextBox ID="Company" runat="server"
                                Width="150px"></asp:TextBox>
                        </asp:Panel>

                        <asp:Panel ID="AddressP" runat="server" CssClass="fieldHolder">
                            <!-- 

Address -->
                            <p></p>
                            <!-- for a bit of vertical gap. -->
                            <label>
                                <asp:Label ID="lbAddress"
                                    runat="server"></asp:Label>:
                            </label>
                            <asp:TextBox ID="Address" runat="server"
                                Width="150px"></asp:TextBox>
                        </asp:Panel>

                        <asp:Panel ID="CitytownP" runat="server" CssClass="fieldHolder">

                            <!-- City -->
                            <p></p>
                            <!-- for a bit of vertical gap. -->
                            <label>
                                <asp:Label ID="lbCity" runat="server"></asp:Label>:
                            </label>
                            <asp:TextBox ID="Citytown" runat="server"
                                Width="150px"></asp:TextBox>
                        </asp:Panel>

                        <asp:Panel ID="StateP" runat="server" CssClass="fieldHolder">
                            <!-- 

State -->
                            <p></p>
                            <!-- for a bit of vertical gap. -->
                            <label>
                                <asp:Label ID="lbState" runat="server"></asp:Label>:
                            </label>
                            <asp:TextBox ID="State" runat="server"
                                Width="150px"></asp:TextBox>
                        </asp:Panel>

                        <asp:Panel ID="PostalCodeP" runat="server" CssClass="fieldHolder">

                            <!-- Postal Code -->
                            <p></p>
                            <!-- for a bit of vertical gap. -->
                            <label>
                                <asp:Label ID="lbPostcode"
                                    runat="server"></asp:Label>:
                            </label>
                            <asp:TextBox ID="PostalCode" runat="server"
                                Width="150px"></asp:TextBox>
                        </asp:Panel>

                        <asp:Panel ID="PhoneP" runat="server" CssClass="fieldHolder">
                            <!-- 

Phone# -->
                            <p></p>
                            <!-- for a bit of vertical gap. -->
                            <label>
                                <asp:Label ID="lbPhone" runat="server"></asp:Label>:
                            </label>
                            <asp:TextBox ID="Phone" runat="server"
                                Width="150px"></asp:TextBox>
                        </asp:Panel>

                        <asp:Panel ID="FaxP" runat="server" CssClass="fieldHolder">

                            <!-- Fax# -->
                            <p></p>
                            <!-- for a bit of vertical gap. -->
                            <label>
                                <asp:Label ID="lbFax" runat="server"></asp:Label>:
                            </label>
                            <asp:TextBox ID="Fax" runat="server" Width="150px"></asp:TextBox>
                        </asp:Panel>

                        <asp:Panel ID="TC" CssClass="fieldHolder wide" runat="server">
                            <p></p>
                            <%-- for a bit of vertical gap. --%>
                            <hr />
                            <p></p>
                            <%-- for a bit of vertical gap. --%>
                            <div class="fieldHolder wide" style="min-height: 2em;">
                                <%-- Please indicate your acceptance.... --%>
                                <asp:Label ID="lbChk" runat="server"></asp:Label>
                            </div>

                            <asp:Label ID="chkError" ForeColor="#ff0033"
                                runat="server"></asp:Label>

                            <div class="checkboxClass">


                                <asp:CheckBox ID="tcChk" runat="server" />
                            </div>
                        </asp:Panel>

                        <asp:Panel ID="Line1" runat="server" Visible="False">
                            <div class="fieldHolder">
                                <p></p>
                                <hr />
                            </div>
                        </asp:Panel>


                        <hr />

                        <a id="goToTopLink" href="#top"></>
					<p></p>

                            <div class="fieldHolder">

                                <!-- Button text is from translations file in C# code. -->
                                <div class="buttnHolder">
                                    <span class="barbgleftSumbit left">
                                        <span class="barbgrightSubmit">
                                            <asp:Button ID="Submit"
                                                CssClass="middleSubmitBtn" Style="float: none;" runat="server" OnClick="Submit_Click" />
                                        </span>
                                    </span>
                                </div>

                                <div class="buttnHolder">
                                    <span class="barbgleftSumbit left">
                                        <span class="barbgrightSubmit">
                                            <asp:Button ID="Clear"
                                                CssClass="middleSubmitBtn" Style="float: none;" runat="server"
                                                OnClick="Clear_Click" />
                                        </span>
                                    </span>
                                </div>
                            </div>
                    </asp:Panel>
                </form>
                <%-- id="EnquiryForm" --%>
            </div>
            <%-- id="mainContent" --%>
        </div>
        <%-- id="mainPanel" --%>

        <div id="divPostPage" runat="server">
            <asp:Label ID="lbMessage" runat="server"></asp:Label>
        </div>

        <div id="divError" runat="server">
            <asp:Label ID="lbError" runat="server" ForeColor="Red"></asp:Label>
        </div>

    </div>
    <!-- end #container -->
</body>
</html>