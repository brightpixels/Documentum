
  
  <%@ Page Language="C#" AutoEventWireup="false" Inherits="XOM.Common.Web.XOMPage" %>
  <%@ Register TagPrefix="XOM" Namespace="XOM.Common.Web" Assembly="XOMCommon" %>
<%@ Register Src="Navigation/industrialandspecialtylubricants.ascx" TagName="Navigation" TagPrefix="xom" %><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml" xml:lang="th" lang="th">
    <head><meta http-equiv="X-UA-Compatible" content="IE=8">
        <title>&#3612;&#3621;&#3636;&#3605;&#3616;&#3633;&#3603;&#3601;&#3660;&#3627;&#3621;&#3656;&#3629;&#3621;&#3639;&#3656;&#3609;&#3629;&#3640;&#3605;&#3626;&#3634;&#3627;&#3585;&#3619;&#3619;&#3617; &#3609;&#3657;&#3635;&#3617;&#3633;&#3609; &#3629;&#3640;&#3605;&#3626;&#3634;&#3627;&#3585;&#3619;&#3619;&#3617; | &#3650;&#3617;&#3610;&#3636;&#3621; &#3611;&#3619;&#3632;&#3648;&#3607;&#3624;&#3652;&#3607;&#3618;</title>
        <meta name="keywords" content="&#3609;&#3657;&#3635;&#3617;&#3633;&#3609;&#3627;&#3621;&#3656;&#3629;&#3621;&#3639;&#3656;&#3609;&#3629;&#3640;&#3605;&#3626;&#3634;&#3627;&#3585;&#3619;&#3619;&#3617;, &#3609;&#3657;&#3635;&#3617;&#3633;&#3609; &#3629;&#3640;&#3605;&#3626;&#3634;&#3627;&#3585;&#3619;&#3619;&#3617;, &#3609;&#3657;&#3635;&#3617;&#3633;&#3609;&#3626;&#3635;&#3627;&#3619;&#3633;&#3610;&#3629;&#3640;&#3605;&#3626;&#3627;&#3634;&#3585;&#3619;&#3619;&#3617;, &#3627;&#3634;&#3609;&#3657;&#3635;&#3617;&#3633;&#3609;&#3627;&#3621;&#3656;&#3629;&#3621;&#3639;&#3656;&#3609;, &#3609;&#3657;&#3635;&#3617;&#3633;&#3609;&#3627;&#3621;&#3656;&#3629;&#3621;&#3639;&#3656;&#3609;, &#3627;&#3621;&#3656;&#3629;&#3621;&#3639;&#3656;&#3609;&#3626;&#3635;&#3627;&#3619;&#3633;&#3610;&#3629;&#3640;&#3605;&#3626;&#3634;&#3627;&#3585;&#3619;&#3619;&#3617;, &#3648;&#3604;&#3636;&#3609;&#3648;&#3619;&#3639;&#3629;, &#3623;&#3636;&#3648;&#3588;&#3619;&#3634;&#3632;&#3627;&#3660;&#3609;&#3657;&#3635;&#3617;&#3633;&#3609;, Signum Oil Analysis, &#3648;&#3629;&#3655;&#3585;&#3595;&#3629;&#3609;&#3650;&#3617;&#3610;&#3636;&#3621;, &#3608;&#3640;&#3619;&#3585;&#3636;&#3592;, &#3609;&#3657;&#3635;&#3617;&#3633;&#3609;&#3650;&#3619;&#3591;&#3591;&#3634;&#3609;, &#3609;&#3657;&#3635;&#3617;&#3633;&#3609;&#3626;&#3635;&#3627;&#3619;&#3633;&#3610; &#3648;&#3604;&#3636;&#3609;&#3648;&#3619;&#3639;&#3629;, &#3648;&#3627;&#3617;&#3634;&#3632;, &#3626;&#3648;&#3611;&#3588;, &#3617;&#3634;&#3605;&#3619;&#3600;&#3634;&#3609;, &#3612;&#3621;&#3636;&#3605;&#3616;&#3633;&#3603;&#3601;&#3660;&#3627;&#3621;&#3656;&#3629;&#3621;&#3639;&#3656;&#3609;"/>
        <meta name="description" content="&#3612;&#3621;&#3636;&#3605;&#3616;&#3633;&#3603;&#3601;&#3660;&#3609;&#3657;&#3635;&#3617;&#3633;&#3609;&#3627;&#3621;&#3656;&#3629;&#3621;&#3639;&#3656;&#3609;&#3629;&#3640;&#3605;&#3626;&#3634;&#3627;&#3585;&#3619;&#3619;&#3617; &#3609;&#3657;&#3635;&#3617;&#3633;&#3609; &#3629;&#3640;&#3605;&#3626;&#3634;&#3627;&#3585;&#3619;&#3619;&#3617; &#3649;&#3621;&#3632;&#3612;&#3621;&#3636;&#3605;&#3616;&#3633;&#3603;&#3601;&#3660;&#3614;&#3636;&#3648;&#3624;&#3625; &#3627;&#3634;&#3612;&#3621;&#3636;&#3605;&#3616;&#3633;&#3603;&#3601;&#3660;&#3627;&#3621;&#3656;&#3629;&#3621;&#3639;&#3656;&#3609;&#3607;&#3637;&#3656;&#3648;&#3627;&#3617;&#3634;&#3632;&#3626;&#3617;&#3626;&#3635;&#3627;&#3619;&#3633;&#3610;&#3629;&#3640;&#3605;&#3626;&#3634;&#3627;&#3585;&#3619;&#3619;&#3617;&#3586;&#3629;&#3591;&#3588;&#3640;&#3603; &#3612;&#3621;&#3636;&#3605;&#3616;&#3633;&#3603;&#3601;&#3660;&#3627;&#3621;&#3656;&#3629;&#3621;&#3639;&#3656;&#3609;&#3626;&#3635;&#3627;&#3619;&#3633;&#3610;&#3629;&#3640;&#3605;&#3626;&#3634;&#3627;&#3585;&#3619;&#3619;&#3617; &#3612;&#3621;&#3636;&#3605;&#3616;&#3633;&#3603;&#3601;&#3660;&#3604;&#3657;&#3634;&#3609;&#3585;&#3634;&#3619;&#3648;&#3604;&#3636;&#3609;&#3648;&#3619;&#3639;&#3629; &#3649;&#3621;&#3632; &#3585;&#3634;&#3619;&#3623;&#3636;&#3648;&#3588;&#3619;&#3634;&#3632;&#3627;&#3660;&#3609;&#3657;&#3635;&#3617;&#3633;&#3609; (Signum Oil Analysis)"/>
        <meta name="date" content="2011-11-01"/>
        <meta name="language" content="th"/>
        <meta http-equiv="Content-Language" content="th"/>
        <meta name="WT.ti" content="&#3612;&#3621;&#3636;&#3605;&#3616;&#3633;&#3603;&#3601;&#3660;&#3627;&#3621;&#3656;&#3629;&#3621;&#3639;&#3656;&#3609;&#3629;&#3640;&#3605;&#3626;&#3634;&#3627;&#3585;&#3619;&#3619;&#3617; &#3609;&#3657;&#3635;&#3617;&#3633;&#3609; &#3629;&#3640;&#3605;&#3626;&#3634;&#3627;&#3585;&#3619;&#3619;&#3617; | &#3650;&#3617;&#3610;&#3636;&#3621; &#3611;&#3619;&#3632;&#3648;&#3607;&#3624;&#3652;&#3607;&#3618;"/>
        <meta name="WT.cg_n" content="Landing"/>
        <meta name="WT.cg_s" content=""/>
        <meta name="WT.si_n" content="purchase funnel"/>
        <link type="text/css" rel="stylesheet" media="all" href="/Imports/LCW_xom.css"/>
        <link type="text/css" rel="stylesheet" media="print" href="/Imports/LCW_xom_print.css"/>
        <link type="text/css" title="medium" rel="stylesheet" href="/Imports/LCW_xom_web_medium.css"/>
        <link type="text/css" title="large" rel="alternate stylesheet" href="/Imports/LCW_xom_web_large.css"/>
        <link type="text/css" title="small" rel="alternate stylesheet" href="/Imports/LCW_xom_web_small.css"/>
        <link type="text/css" rel="stylesheet" media="all" href="/Imports/LCW_xom_lightview.css"/>
      <script type="text/javascript" src="/Imports/js/LCW_styleswitcher.js"></script>
      <script type="text/javascript" src="/Imports/js/LCW_footnotelinks.js"></script>
      <script language="Javascript" src="/Imports/js/LCW_xom.js"></script>
      <script type="text/javascript" src="/Imports/js/LCW_search.js"></script>
      <script type="text/javascript" src="/Imports/js/LCW_redesign_swfobject.js"></script>
      <script type="text/javascript" src="/Imports/js/prototype.js"></script>
      <script type="text/javascript" src="quickedit/quickedit.js"></script>
      <script type="text/javascript" src="/quickedit/LCW/custom.js"></script>
      <script type="text/javascript" src="/Imports/js/scriptaculous.js"></script>
      <script type="text/javascript" src="/Imports/js/lightview.js"></script>
      <script type="text/javascript" src="/Imports/js/toggleContent.js"></script>
    
        <script type="text/javascript">
    var PAGE_ID="0915881d808d13de";
    </script>
    
    <!--[if lt IE 8]><link href="/Imports/LCW_xom_ie.css"   rel="stylesheet" type="text/css" media="all" /><![endif]-->
    <!--[if IE 7]>   <link href="/Imports/LCW_xom_ie_7.css" rel="stylesheet" type="text/css" media="all" /><![endif]-->
    <!--[if IE 8]>   <link href="/Imports/LCW_xom_ie_8.css" rel="stylesheet" type="text/css" media="all" /><![endif]-->
    
    
      <!--[if gte IE 5.1]>
    <script type="text/javascript">
      try
      {
        document.execCommand("BackgroundImageCache", false, true);
      }
      catch(err) {}
    </script><![endif]--></head>
    <body class="landing nosubfeatures">
        <div style="text-align:left">
            <script type="text/javascript">displaySuperPencil("0915881d813256ba");</script>
        </div>
        <a href="#mainContent" class="skip">Skip to Main Content</a>
        <div id="container"><!--#include file="Navigation/Header.aspx" -->
            <div class="clrfix">
                <div id="navPanel">
                    <div id="navTitle"/>
                </div>
            </div>
            <div id="navPanelBottomBg" class="clrfix">
                <div id="navPanelBottom"/>
            </div></div>
            <div id="mainPanel" class="clrfix"><!-- googleoff: all -->
                <script type="text/javascript">quickEditForm('0915881d813256ba','/Content',false,'../forms/LCWLeftNav','','500px','300px','Display/Hide Left Navigation','','pencil.gif','10px');</script><!-- googleon: all -->
                <div id="sideBar" class="clrfix"><xom:Navigation ID="LeftNav" runat="server" /><!--#include file="Navigation/QuickLinks_industrialandspecialtylubricants.aspx"--></div>
                <div id="mainContent"><div class="layoutRow clrfix"><!-- googleoff: all -->
                    <div style="z-index:450;">
                        <script type="text/javascript">quickEditForm("0915881d813256ba", "/Content/Feature",true,"../forms/LCWLandingFeature","","790px","700px","Landing Page Feature and Subfeatures","","pencil.gif","210px");</script>
                    </div><!-- googleon: all -->
                    <div id="mainFeature">
                        <p xmlns="">
                            <img src="../Shared-Images-LCW/article_150x150_oil-pour-on-gears_gbl.jpg" height="150" width="150" alt="&#3612;&#3621;&#3636;&#3605;&#3616;&#3633;&#3603;&#3601;&#3660;&#3609;&#3657;&#3635;&#3617;&#3633;&#3609;&#3627;&#3621;&#3656;&#3629;&#3621;&#3639;&#3656;&#3609;&#3629;&#3640;&#3605;&#3626;&#3634;&#3627;&#3585;&#3619;&#3619;&#3617;&#3649;&#3621;&#3632;&#3612;&#3621;&#3636;&#3605;&#3616;&#3633;&#3603;&#3601;&#3660;&#3614;&#3636;&#3648;&#3624;&#3625; &#3609;&#3657;&#3635;&#3617;&#3633;&#3609; &#3629;&#3640;&#3605;&#3626;&#3634;&#3627;&#3585;&#3619;&#3619;&#3617;" title="&#3612;&#3621;&#3636;&#3605;&#3616;&#3633;&#3603;&#3601;&#3660;&#3609;&#3657;&#3635;&#3617;&#3633;&#3609;&#3627;&#3621;&#3656;&#3629;&#3621;&#3639;&#3656;&#3609;&#3629;&#3640;&#3605;&#3626;&#3634;&#3627;&#3585;&#3619;&#3619;&#3617;&#3649;&#3621;&#3632;&#3612;&#3621;&#3636;&#3605;&#3616;&#3633;&#3603;&#3601;&#3660;&#3614;&#3636;&#3648;&#3624;&#3625; &#3609;&#3657;&#3635;&#3617;&#3633;&#3609; &#3629;&#3640;&#3605;&#3626;&#3634;&#3627;&#3585;&#3619;&#3619;&#3617;" align="left" border="0" hspace="0" class="imgFloatLeft"></p>
                        <h1 xmlns="">&#3612;&#3621;&#3636;&#3605;&#3616;&#3633;&#3603;&#3601;&#3660;&#3627;&#3621;&#3656;&#3629;&#3621;&#3639;&#3656;&#3609;&#3648;&#3594;&#3636;&#3591;&#3629;&#3640;&#3605;&#3626;&#3634;&#3627;&#3585;&#3619;&#3619;&#3617; &#3609;&#3657;&#3635;&#3617;&#3633;&#3609; &#3629;&#3640;&#3605;&#3626;&#3634;&#3627;&#3585;&#3619;&#3619;&#3617;&#3649;&#3621;&#3632;&#3612;&#3621;&#3636;&#3605;&#3616;&#3633;&#3603;&#3601;&#3660;&#3614;&#3636;&#3648;&#3624;&#3625;</h1>
                        <p xmlns="">&nbsp;</p>
                        <p xmlns="">&#3627;&#3634;&#3612;&#3621;&#3636;&#3605;&#3616;&#3633;&#3603;&#3601;&#3660;&#3627;&#3621;&#3656;&#3629;&#3621;&#3639;&#3656;&#3609;&#3607;&#3637;&#3656;&#3648;&#3627;&#3617;&#3634;&#3632;&#3626;&#3617;&#3626;&#3635;&#3627;&#3619;&#3633;&#3610;&#3629;&#3640;&#3605;&#3626;&#3634;&#3627;&#3585;&#3619;&#3619;&#3617;&#3586;&#3629;&#3591;&#3588;&#3640;&#3603; &#3650;&#3604;&#3618;&#3651;&#3594;&#3657;&#3621;&#3636;&#3591;&#3588;&#3660;&#3605;&#3656;&#3629;&#3652;&#3611;&#3609;&#3637;&#3657;</p>�</div>
            <div id="subfeatureCallouts">
            </div>
          
          </div>
          
                    <div class="layoutRow clrfix">
                        <div class="subfeature csingle cleft"><!-- googleoff: all -->
                            <script type="text/javascript">quickEditForm("0915881d813256ba", "/Content/SLeftColumn/Section",true,"../forms/LCWLandingColumns","20px","820px","700px","Left Landing Page Column","","pencil.gif","");</script><!-- googleon: all --><div xmlns="" class="headerbar">
                                <h3>
                                    <a title="" target="_self" onclick="trackClick(this);" href="http://www.mobilindustrial.com/">&#3612;&#3621;&#3636;&#3605;&#3616;&#3633;&#3603;&#3601;&#3660;&#3609;&#3657;&#3635;&#3617;&#3633;&#3609;&#3627;&#3621;&#3656;&#3629;&#3621;&#3639;&#3656;&#3609;&#3629;&#3640;&#3605;&#3626;&#3634;&#3627;&#3585;&#3619;&#3619;&#3617; (&#3609;&#3657;&#3635;&#3617;&#3633;&#3609; &#3629;&#3640;&#3605;&#3626;&#3634;&#3627;&#3585;&#3619;&#3619;&#3617;)<span></span></a>
                                </h3>
                            </div>
                            <div xmlns="" class="padding">
                                <div class="img60 left"><a href="http://www.mobilindustrial.com/" title="&#3612;&#3621;&#3636;&#3605;&#3616;&#3633;&#3603;&#3601;&#3660;&#3609;&#3657;&#3635;&#3617;&#3633;&#3609;&#3627;&#3621;&#3656;&#3629;&#3621;&#3639;&#3656;&#3609;&#3629;&#3640;&#3605;&#3626;&#3634;&#3627;&#3585;&#3619;&#3619;&#3617; (&#3609;&#3657;&#3635;&#3617;&#3633;&#3609; &#3629;&#3640;&#3605;&#3626;&#3634;&#3627;&#3585;&#3619;&#3619;&#3617;)" target="_self" onclick="trackClick(this);"><img title="&#3612;&#3621;&#3636;&#3605;&#3616;&#3633;&#3603;&#3601;&#3660;&#3609;&#3657;&#3635;&#3617;&#3633;&#3609;&#3627;&#3621;&#3656;&#3629;&#3621;&#3639;&#3656;&#3609;&#3629;&#3640;&#3605;&#3626;&#3634;&#3627;&#3585;&#3619;&#3619;&#3617; &#3609;&#3657;&#3635;&#3617;&#3633;&#3609; &#3629;&#3640;&#3605;&#3626;&#3634;&#3627;&#3585;&#3619;&#3619;&#3617;" src="../Thailand-Thai-LCW/Images/teaser_60x60_mil-ball-bearing.jpg" longdesc="" class="floatimgleft" border="0" alt="&#3612;&#3621;&#3636;&#3605;&#3616;&#3633;&#3603;&#3601;&#3660;&#3609;&#3657;&#3635;&#3617;&#3633;&#3609;&#3627;&#3621;&#3656;&#3629;&#3621;&#3639;&#3656;&#3609;&#3629;&#3640;&#3605;&#3626;&#3634;&#3627;&#3585;&#3619;&#3619;&#3617; &#3609;&#3657;&#3635;&#3617;&#3633;&#3609; &#3629;&#3640;&#3605;&#3626;&#3634;&#3627;&#3585;&#3619;&#3619;&#3617;"></a></div>
                                <p>&#3650;&#3617;&#3610;&#3636;&#3621; &#3586;&#3629;&#3648;&#3626;&#3609;&#3629;&#3612;&#3621;&#3636;&#3605;&#3616;&#3633;&#3603;&#3601;&#3660;&#3627;&#3621;&#3656;&#3629;&#3621;&#3639;&#3656;&#3609;&#3607;&#3637;&#3656;&#3627;&#3621;&#3634;&#3585;&#3627;&#3621;&#3634;&#3618; &#3605;&#3633;&#3657;&#3591;&#3649;&#3605;&#3656;&#3619;&#3632;&#3604;&#3633;&#3610;&#3608;&#3619;&#3619;&#3617;&#3604;&#3634;&#3652;&#3611;&#3592;&#3609;&#3606;&#3638;&#3591;&#3612;&#3621;&#3636;&#3605;&#3616;&#3633;&#3603;&#3601;&#3660;&#3626;&#3633;&#3591;&#3648;&#3588;&#3619;&#3634;&#3632;&#3627;&#3660;&#3649;&#3607;&#3657;&#3607;&#3640;&#3585;&#3619;&#3632;&#3604;&#3633;&#3610; &#3649;&#3621;&#3632;&#3651;&#3609;&#3600;&#3634;&#3609;&#3632;&#3612;&#3641;&#3657;&#3609;&#3635;&#3651;&#3609;&#3604;&#3657;&#3634;&#3609;&#3617;&#3634;&#3605;&#3619;&#3600;&#3634;&#3609;&#3588;&#3623;&#3634;&#3617;&#3648;&#3611;&#3655;&#3609;&#3648;&#3621;&#3636;&#3624;&#3586;&#3629;&#3591;&#3612;&#3621;&#3636;&#3605;&#3616;&#3633;&#3603;&#3601;&#3660;&#3609;&#3657;&#3635;&#3617;&#3633;&#3609;&#3627;&#3621;&#3656;&#3629;&#3621;&#3639;&#3656;&#3609;&#3629;&#3640;&#3605;&#3626;&#3634;&#3627;&#3585;&#3619;&#3619;&#3617; (&#3609;&#3657;&#3635;&#3617;&#3633;&#3609;&#3629;&#3640;&#3605;&#3626;&#3634;&#3627;&#3585;&#3619;&#3619;&#3617;) &#3648;&#3619;&#3634;&#3626;&#3634;&#3617;&#3634;&#3619;&#3606;&#3594;&#3656;&#3623;&#3618;&#3651;&#3627;&#3657;&#3608;&#3640;&#3619;&#3585;&#3636;&#3592;&#3586;&#3629;&#3591;&#3607;&#3656;&#3634;&#3609; <br>
&#3586;&#3633;&#3610;&#3648;&#3588;&#3621;&#3639;&#3656;&#3629;&#3609;&#3652;&#3604;&#3657;&#3629;&#3618;&#3656;&#3634;&#3591;&#3585;&#3657;&#3634;&#3623;&#3652;&#3585;&#3621;</p>
                            </div>
                        </div>
                        <div class="subfeature csingle cright"><!-- googleoff: all -->
                            <script type="text/javascript">quickEditForm("0915881d813256ba", "/Content/SRightColumn/Section",true,"../forms/LCWLandingColumns","20px","820px","700px","Right Landing Page Column","","pencil.gif","");</script><!-- googleon: all --><div xmlns="" class="headerbar">
                                <h3>
                                    <a title="" target="_self" onclick="trackClick(this);" href="http://www.exxonmobil.com/lubes/exxonmobil/marine/index.html">&#3612;&#3621;&#3636;&#3605;&#3616;&#3633;&#3603;&#3601;&#3660;&#3604;&#3657;&#3634;&#3609;&#3585;&#3634;&#3619;&#3648;&#3604;&#3636;&#3609;&#3648;&#3619;&#3639;&#3629;<span></span></a>
                                </h3>
                            </div>
                            <div xmlns="" class="padding">
                                <div class="img60 left"><a href="http://www.exxonmobil.com/lubes/exxonmobil/marine/index.html" title="&#3612;&#3621;&#3636;&#3605;&#3616;&#3633;&#3603;&#3601;&#3660;&#3604;&#3657;&#3634;&#3609;&#3585;&#3634;&#3619;&#3648;&#3604;&#3636;&#3609;&#3648;&#3619;&#3639;&#3629;" target="_self" onclick="trackClick(this);"><img title="&#3612;&#3621;&#3636;&#3605;&#3616;&#3633;&#3603;&#3601;&#3660;&#3604;&#3657;&#3634;&#3609;&#3585;&#3634;&#3619;&#3648;&#3604;&#3636;&#3609;&#3648;&#3619;&#3639;&#3629; &#3609;&#3657;&#3635;&#3617;&#3633;&#3609;&#3627;&#3621;&#3656;&#3629;&#3621;&#3639;&#3656;&#3609;&#3629;&#3640;&#3605;&#3626;&#3634;&#3627;&#3585;&#3619;&#3619;&#3617; &#3609;&#3657;&#3635;&#3617;&#3633;&#3609; &#3629;&#3640;&#3605;&#3626;&#3634;&#3627;&#3585;&#3619;&#3619;&#3617;" src="../Shared-Images-LCW/teaser_60x60_large-ship_gbl.jpg" longdesc="" class="floatimgleft" border="0" alt="&#3612;&#3621;&#3636;&#3605;&#3616;&#3633;&#3603;&#3601;&#3660;&#3604;&#3657;&#3634;&#3609;&#3585;&#3634;&#3619;&#3648;&#3604;&#3636;&#3609;&#3648;&#3619;&#3639;&#3629; &#3609;&#3657;&#3635;&#3617;&#3633;&#3609;&#3627;&#3621;&#3656;&#3629;&#3621;&#3639;&#3656;&#3609;&#3629;&#3640;&#3605;&#3626;&#3634;&#3627;&#3585;&#3619;&#3619;&#3617; &#3609;&#3657;&#3635;&#3617;&#3633;&#3609; &#3629;&#3640;&#3605;&#3626;&#3634;&#3627;&#3585;&#3619;&#3619;&#3617;"></a></div>
                                <p>&#3609;&#3657;&#3635;&#3617;&#3633;&#3609;&#3648;&#3594;&#3639;&#3657;&#3629;&#3648;&#3614;&#3621;&#3636;&#3591;&#3649;&#3621;&#3632;&#3612;&#3621;&#3636;&#3605;&#3616;&#3633;&#3603;&#3601;&#3660;&#3627;&#3621;&#3656;&#3629;&#3621;&#3639;&#3656;&#3609;&#3626;&#3635;&#3627;&#3619;&#3633;&#3610;&#3585;&#3634;&#3619;&#3648;&#3604;&#3636;&#3609;&#3648;&#3619;&#3639;&#3629; &#3586;&#3629;&#3591;&#3648;&#3629;&#3655;&#3585;&#3595;&#3629;&#3609;&#3650;&#3617;&#3610;&#3636;&#3621; &#3617;&#3637;&#3592;&#3635;&#3627;&#3609;&#3656;&#3634;&#3618;&#3607;&#3633;&#3656;&#3623;&#3650;&#3621;&#3585; &#3652;&#3604;&#3657;&#3585;&#3635;&#3627;&#3609;&#3604;&#3617;&#3634;&#3605;&#3619;&#3600;&#3634;&#3609;&#3651;&#3627;&#3617;&#3656;&#3651;&#3609;&#3648;&#3619;&#3639;&#3656;&#3629;&#3591;&#3586;&#3629;&#3591;&#3611;&#3619;&#3632;&#3626;&#3636;&#3607;&#3608;&#3636;&#3616;&#3634;&#3614;</p>
                            </div>
                        </div>
                    </div>
                    <div class="layoutRow clrfix">
                        <div class="subfeature csingle cleft">
                            <div xmlns="" class="headerbar">
                                <h3>
                                    <a title="" target="_self" onclick="trackClick(this);" href="http://www.signumoilanalysis.com">&#3585;&#3634;&#3619;&#3623;&#3636;&#3648;&#3588;&#3619;&#3634;&#3632;&#3627;&#3660;&#3609;&#3657;&#3635;&#3617;&#3633;&#3609; (Signum Oil Analysis)<span></span></a>
                                </h3>
                            </div>
                            <div xmlns="" class="padding">
                                <div class="img60 left"><a href="http://www.signumoilanalysis.com" title="&#3585;&#3634;&#3619;&#3623;&#3636;&#3648;&#3588;&#3619;&#3634;&#3632;&#3627;&#3660;&#3609;&#3657;&#3635;&#3617;&#3633;&#3609; (Signum Oil Analysis)" target="_self" onclick="trackClick(this);"><img title="&#3585;&#3634;&#3619;&#3623;&#3636;&#3648;&#3588;&#3619;&#3634;&#3632;&#3627;&#3660;&#3609;&#3657;&#3635;&#3617;&#3633;&#3609; (Signum Oil Analysis) &#3609;&#3657;&#3635;&#3617;&#3633;&#3609;&#3627;&#3621;&#3656;&#3629;&#3621;&#3639;&#3656;&#3609;&#3629;&#3640;&#3605;&#3626;&#3634;&#3627;&#3585;&#3619;&#3619;&#3617; &#3609;&#3657;&#3635;&#3617;&#3633;&#3609; &#3629;&#3640;&#3605;&#3626;&#3634;&#3627;&#3585;&#3619;&#3619;&#3617;" src="../Thailand-Thai-LCW/Images/teaser_60x60_signum-logo.jpg" longdesc="" class="floatimgleft" border="0" alt="&#3585;&#3634;&#3619;&#3623;&#3636;&#3648;&#3588;&#3619;&#3634;&#3632;&#3627;&#3660;&#3609;&#3657;&#3635;&#3617;&#3633;&#3609; (Signum Oil Analysis) &#3609;&#3657;&#3635;&#3617;&#3633;&#3609;&#3627;&#3621;&#3656;&#3629;&#3621;&#3639;&#3656;&#3609;&#3629;&#3640;&#3605;&#3626;&#3634;&#3627;&#3585;&#3619;&#3619;&#3617; &#3609;&#3657;&#3635;&#3617;&#3633;&#3609; &#3629;&#3640;&#3605;&#3626;&#3634;&#3627;&#3585;&#3619;&#3619;&#3617;"></a></div>
                                <p>&#3650;&#3611;&#3619;&#3649;&#3585;&#3619;&#3617;&#3607;&#3637;&#3656;&#3606;&#3641;&#3585;&#3629;&#3629;&#3585;&#3649;&#3610;&#3610;&#3648;&#3593;&#3614;&#3634;&#3632; &#3648;&#3614;&#3639;&#3656;&#3629;&#3614;&#3636;&#3626;&#3641;&#3592;&#3609;&#3660;&#3611;&#3619;&#3632;&#3626;&#3636;&#3607;&#3608;&#3636;&#3616;&#3634;&#3614;&#3651;&#3609;&#3585;&#3634;&#3619;&#3651;&#3594;&#3657;&#3609;&#3657;&#3635;&#3617;&#3633;&#3609; &#3607;&#3637;&#3656;&#3652;&#3604;&#3657;&#3619;&#3632;&#3610;&#3640;&#3605;&#3634;&#3617;&#3626;&#3648;&#3611;&#3588;&#3648;&#3588;&#3619;&#3639;&#3656;&#3629;&#3591;&ndash; &#3614;&#3619;&#3657;&#3629;&#3617;&#3607;&#3633;&#3657;&#3591;&#3651;&#3627;&#3657;&#3588;&#3623;&#3634;&#3617;&#3619;&#3641;&#3657; &#3588;&#3623;&#3634;&#3617;&#3648;&#3586;&#3657;&#3634;&#3651;&#3592;&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;&#3626;&#3616;&#3634;&#3614;&#3586;&#3629;&#3591;&#3609;&#3657;&#3635;&#3617;&#3633;&#3609;&#3627;&#3621;&#3656;&#3629;&#3621;&#3639;&#3656;&#3609; &#3609;&#3657;&#3635;&#3617;&#3633;&#3609;&#3629;&#3640;&#3605;&#3626;&#3634;&#3627;&#3585;&#3619;&#3619;&#3617;&#3649;&#3621;&#3632;&#3629;&#3640;&#3611;&#3585;&#3619;&#3603;&#3660;&#3586;&#3629;&#3591;&#3610;&#3619;&#3636;&#3625;&#3633;&#3607;&#3586;&#3629;&#3591;&#3607;&#3656;&#3634;&#3609;</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!--#include file="Navigation/Footer.aspx" --></div>
    </body>
</html>