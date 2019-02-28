<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contactus_mobil1ru.aspx.cs" Inherits="Mobil1.ContactUs_RU.ContactUs" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
	<title>Mobil 1&#8482; &#1055;&#1086;&#1080;&#1089;&#1082; &#1088;&#1086;&#1079;&#1085;&#1080;&#1095;&#1085;&#1099;&#1093; &#1090;&#1086;&#1095;&#1077;&#1082;</title>
    <link rel="stylesheet" type="text/css" href="LCW_contactus_mobil1ru.css">
</head>
<body>
    <form id="Form1" method="post" runat="server">
		<div class="mainWrapper">
			<asp:panel id="MainPanel" Runat="server" Visible="False"> 
			<div class="mainCol">
				<div class="header">
					<div class="siteLogo">
						<a id="SiteHeader_LogoLink" href="http://www.mobil1.ru">
							<img src="../images/logos/header-mobil-1-logo.jpg">
						</a>
					</div>
				</div>
				<h1>&#1055;&#1086;&#1080;&#1089;&#1082; &#1088;&#1086;&#1079;&#1085;&#1080;&#1095;&#1085;&#1099;&#1093; &#1090;&#1086;&#1095;&#1077;&#1082;</h1><br>
				<label for="email">&#1069;&#1083;&#1077;&#1082;&#1090;&#1088;&#1086;&#1085;&#1085;&#1072;&#1103; &#1087;&#1086;&#1095;&#1090;&#1072;</label><br>
                 <asp:TextBox ID="txtEmail" runat="server" width="100%" autocomplete="off" meta:resourcekey="txtEmailResource1"></asp:TextBox>
                 <asp:Label ID="lblEmailError" runat="server" ForeColor="Red" Text="&#1055;&#1086;&#1078;&#1072;&#1083;&#1091;&#1081;&#1089;&#1090;&#1072;, &#1091;&#1082;&#1072;&#1078;&#1080;&#1090;&#1077; &#1042;&#1072;&#1096; &#1101;&#1083;&#1077;&#1082;&#1090;&#1088;&#1086;&#1085;&#1085;&#1099;&#1081; &#1072;&#1076;&#1088;&#1077;&#1089; &#1074; &#1074;&#1080;&#1076;&#1077;: &#1074;&#1072;&#1096;&#1077;&#1080;&#1084;&#1103;@&#1080;&#1084;&#1103;&#1074;&#1072;&#1096;&#1077;&#1081;&#1082;&#1086;&#1084;&#1087;&#1072;&#1085;&#1080;&#1080;.com" Visible="False" meta:resourcekey="lblEmailErrorResource1"></asp:Label>
                <br><br>
				<label for="question">&#1042;&#1072;&#1096; &#1079;&#1072;&#1082;&#1072;&#1079; &#1080;&#1083;&#1080; &#1074;&#1086;&#1087;&#1088;&#1086;&#1089;</label><br>
                <asp:TextBox ID="txtQuestion" TextMode="MultiLine" width="100%" Rows="10" runat="server" autocomplete="off" meta:resourcekey="txtQuestionResource1"></asp:TextBox>
                <asp:Label ID="lblQuestionError" runat="server" ForeColor="Red" Text="&#1055;&#1086;&#1078;&#1072;&#1083;&#1091;&#1081;&#1089;&#1090;&#1072;, &#1085;&#1072;&#1087;&#1077;&#1095;&#1072;&#1090;&#1072;&#1081;&#1090;&#1077; &#1074;&#1072;&#1096;&#1077; &#1089;&#1086;&#1086;&#1073;&#1097;&#1077;&#1085;&#1080;&#1077;." Visible="False" meta:resourcekey="lblQuestionErrorResource1"></asp:Label>
				<br><br><br>
				<div class="butSub">
                    <asp:button id="Button1" class="middleSubmitBtn" runat="server"  OnClick="btnSubmit_Click" Text="&#1055;&#1088;&#1080;&#1085;&#1080;&#1084;&#1072;&#1102;" meta:resourcekey="Button1Resource1" />
                    <br><br><br>
				</div>
			</div>
            </asp:panel>

            <asp:panel id="ConfirmPanel" Runat="server" >
            <div class="mainCol">
				<div class="header">
					<div class="siteLogo">
						<a id="SiteHeader_LogoLink" href="http://www.mobil1.ru">
							<img src="../images/logos/header-mobil-1-logo.jpg">
						</a>
					</div>
				</div><br>
				<div id="msgConf">
                        &#1055;&#1086;&#1080;&#1089;&#1082; &#1088;&#1086;&#1079;&#1085;&#1080;&#1095;&#1085;&#1099;&#1093; &#1090;&#1086;&#1095;&#1077;&#1082;<br><br>
                        &#1057;&#1087;&#1072;&#1089;&#1080;&#1073;&#1086;! &#1042;&#1072;&#1096;&#1077; &#1089;&#1086;&#1086;&#1073;&#1097;&#1077;&#1085;&#1080;&#1077; &#1073;&#1099;&#1083;&#1086; &#1086;&#1090;&#1087;&#1088;&#1072;&#1074;&#1083;&#1077;&#1085;&#1086; &#1091;&#1089;&#1087;&#1077;&#1096;&#1085;&#1086;. &#1052;&#1099; &#1089;&#1082;&#1086;&#1088;&#1086; &#1089;&#1074;&#1103;&#1078;&#1077;&#1084;&#1089;&#1103; &#1089; &#1042;&#1072;&#1084;&#1080;.<br>
				</div>
            </div>
</asp:panel>

		</div>
	</form>
</body>
</html>
