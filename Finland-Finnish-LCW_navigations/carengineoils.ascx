<%@ Control Language="C#" AutoEventWireup="true" Inherits="xom.crown.nav.DynamicNavigation" %><script xmlns:asp="http://schemas.microsoft.com/ASPNET/20" type="text/javascript">
		function addFallback(idx,url){
			var form = document.getElementById('language_selector_form');
			if(!(form = null || !form)){
				var input = document.createElement("input");
				input.setAttribute("type", "hidden");
				input.setAttribute("name","FALLBACK_"+(idx+1));
				input.setAttribute("id","FALLBACK_"+(idx+1));
				input.setAttribute("value",url);
				document.getElementById('language_selector_form').appendChild(input);

				var numFb = document.getElementById('NUM_FALLBACKS')

				numFb.value = parseInt(numFb.value) + 1;
			}
		}
		document.getElementById('carengineoils').setAttribute("class","mnNavOn");
		document.getElementById('carengineoils').className = "mnNavOn";
		
		addFallback(-1,document.getElementById('carengineoils').href);
		document.getElementById('navTitle').innerHTML = document.getElementById('carengineoils').innerHTML;
		document.getElementById('navPanel').style.backgroundImage = "url('../Shared-Images-LCW/header_920x60_car-engine-oils_eame.jpg')";</script><a xmlns:asp="http://schemas.microsoft.com/ASPNET/20" xmlns:xalan-nodeset="org.apache.xalan.xslt.extensions.Nodeset" xmlns:java="http://xml.apache.org/xslt/java" xmlns:fo="http://www.w3.org/1999/XSL/Format" href="#mainContent" class="skip">Skip to Main Content</a><div xmlns:asp="http://schemas.microsoft.com/ASPNET/20" class="subnav">
    <div class="subL">
        <div class="subR">
            <div class="capTL">
                <div class="capTR"></div>
            </div>
            <asp:panel visible="true" id="L1_1" Runat="server">
                <ul>
                    <li>
                        <asp:HyperLink runat="server" id="aL1_1" NavigateUrl="/Finland-Finnish-LCW/carengineoils_products.aspx">henkil�autojen moottori�ljytuotteet</asp:HyperLink>
                    </li>
                    <asp:panel visible="false" id="L1_1_L2_1" Runat="server">
                        <ul>
                            <li>
                                <asp:HyperLink runat="server" id="aL1_1_L2_1" NavigateUrl="/Finland-Finnish-LCW/carengineoils_products_mobil-1.aspx">Mobil 1</asp:HyperLink>
                            </li>
                            <asp:panel visible="false" id="L1_1_L2_1_L3_1" Runat="server">
                                <ul>
                                    <li class="endpoint">
                                        <asp:HyperLink runat="server" id="aL1_1_L2_1_L3_1" NavigateUrl="/Finland-Finnish-LCW/carengineoils_products_mobil-1-esp-5w30.aspx">Mobil 1 ESP 5W-30</asp:HyperLink>
                                    </li>
                                </ul><% Response.Write((aL1_1_L2_1_L3_1.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(3,\"carengineoils_products_mobil-1-esp-5w30.aspx\")</script>" : ""); %></asp:panel>
                            <asp:panel visible="false" id="L1_1_L2_1_L3_2" Runat="server">
                                <ul>
                                    <li class="endpoint">
                                        <asp:HyperLink runat="server" id="aL1_1_L2_1_L3_2" NavigateUrl="/Finland-Finnish-LCW/carengineoils_products_mobil-1-esp-0w30.aspx">Mobil 1 ESP 0W-30</asp:HyperLink>
                                    </li>
                                </ul><% Response.Write((aL1_1_L2_1_L3_2.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(3,\"carengineoils_products_mobil-1-esp-0w30.aspx\")</script>" : ""); %></asp:panel>
                            <asp:panel visible="false" id="L1_1_L2_1_L3_3" Runat="server">
                                <ul>
                                    <li class="endpoint">
                                        <asp:HyperLink runat="server" id="aL1_1_L2_1_L3_3" NavigateUrl="/Finland-Finnish-LCW/carengineoils_products_mobil-1-esp-0w40.aspx">Mobil 1 ESP 0W-40</asp:HyperLink>
                                    </li>
                                </ul><% Response.Write((aL1_1_L2_1_L3_3.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(3,\"carengineoils_products_mobil-1-esp-0w40.aspx\")</script>" : ""); %></asp:panel>
                            <asp:panel visible="false" id="L1_1_L2_1_L3_4" Runat="server">
                                <ul>
                                    <li class="endpoint">
                                        <asp:HyperLink runat="server" id="aL1_1_L2_1_L3_4" NavigateUrl="/Finland-Finnish-LCW/carengineoils_products_mobil-1-fuel-economy-0w30.aspx">Mobil 1 Fuel Economy 0W-30</asp:HyperLink>
                                    </li>
                                </ul><% Response.Write((aL1_1_L2_1_L3_4.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(3,\"carengineoils_products_mobil-1-fuel-economy-0w30.aspx\")</script>" : ""); %></asp:panel>
                            <asp:panel visible="false" id="L1_1_L2_1_L3_5" Runat="server">
                                <ul>
                                    <li class="endpoint">
                                        <asp:HyperLink runat="server" id="aL1_1_L2_1_L3_5" NavigateUrl="/Finland-Finnish-LCW/carengineoils_products_mobil-1-0w20.aspx">Mobil 1 0W-20</asp:HyperLink>
                                    </li>
                                </ul><% Response.Write((aL1_1_L2_1_L3_5.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(3,\"carengineoils_products_mobil-1-0w20.aspx\")</script>" : ""); %></asp:panel>
                            <asp:panel visible="false" id="L1_1_L2_1_L3_6" Runat="server">
                                <ul>
                                    <li class="endpoint">
                                        <asp:HyperLink runat="server" id="aL1_1_L2_1_L3_6" NavigateUrl="/Finland-Finnish-LCW/carengineoils_products_mobil-1-fs-0w40.aspx">Mobil 1 FS 0W-40</asp:HyperLink>
                                    </li>
                                </ul><% Response.Write((aL1_1_L2_1_L3_6.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(3,\"carengineoils_products_mobil-1-fs-0w40.aspx\")</script>" : ""); %></asp:panel>
                            <asp:panel visible="false" id="L1_1_L2_1_L3_7" Runat="server">
                                <ul>
                                    <li class="endpoint">
                                        <asp:HyperLink runat="server" id="aL1_1_L2_1_L3_7" NavigateUrl="/Finland-Finnish-LCW/heavydutyoils_example.aspx">Example Page Title</asp:HyperLink>
                                    </li>
                                </ul><% Response.Write((aL1_1_L2_1_L3_7.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(3,\"heavydutyoils_example.aspx\")</script>" : ""); %></asp:panel>
                            <asp:panel visible="false" id="L1_1_L2_1_L3_8" Runat="server">
                                <ul>
                                    <li class="endpoint">
                                        <asp:HyperLink runat="server" id="aL1_1_L2_1_L3_8" NavigateUrl="/Finland-Finnish-LCW/carengineoils_products_mobil-1-fs-x1-5w50.aspx">Mobil 1 FS x1 5W-50</asp:HyperLink>
                                    </li>
                                </ul><% Response.Write((aL1_1_L2_1_L3_8.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(3,\"carengineoils_products_mobil-1-fs-x1-5w50.aspx\")</script>" : ""); %></asp:panel>
                            <asp:panel visible="false" id="L1_1_L2_1_L3_9" Runat="server">
                                <ul>
                                    <li class="endpoint">
                                        <asp:HyperLink runat="server" id="aL1_1_L2_1_L3_9" NavigateUrl="/Finland-Finnish-LCW/carengineoils_products_mobil-1-esp-x2-0w20.aspx#">Mobil 1 ESP x2 0W-20</asp:HyperLink>
                                    </li>
                                </ul><% Response.Write((aL1_1_L2_1_L3_9.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(3,\"carengineoils_products_mobil-1-esp-x2-0w20.aspx#\")</script>" : ""); %></asp:panel>
                        </ul><% Response.Write((aL1_1_L2_1.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(2,\"carengineoils_products_mobil-1.aspx\")</script>" : ""); %></asp:panel>
                    <asp:panel visible="false" id="L1_1_L2_2" Runat="server">
                        <ul>
                            <li>
                                <asp:HyperLink runat="server" id="aL1_1_L2_2" NavigateUrl="/Finland-Finnish-LCW/carengineoils_products_mobil-super.aspx">Mobil Super </asp:HyperLink>
                            </li>
                            <asp:panel visible="false" id="L1_1_L2_2_L3_1" Runat="server">
                                <ul>
                                    <li class="endpoint">
                                        <asp:HyperLink runat="server" id="aL1_1_L2_2_L3_1" NavigateUrl="/Finland-Finnish-LCW/carengineoils_products_mobil-super-3000-formula-ld-0w30.aspx">Mobil Super 3000 Formula LD 0W-30</asp:HyperLink>
                                    </li>
                                </ul><% Response.Write((aL1_1_L2_2_L3_1.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(3,\"carengineoils_products_mobil-super-3000-formula-ld-0w30.aspx\")</script>" : ""); %></asp:panel>
                            <asp:panel visible="false" id="L1_1_L2_2_L3_2" Runat="server">
                                <ul>
                                    <li class="endpoint">
                                        <asp:HyperLink runat="server" id="aL1_1_L2_2_L3_2" NavigateUrl="/Finland-Finnish-LCW/carengineoils_products_mobil-super-3000-xe-5w30.aspx">Mobil Super 3000 XE 5W-30</asp:HyperLink>
                                    </li>
                                </ul><% Response.Write((aL1_1_L2_2_L3_2.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(3,\"carengineoils_products_mobil-super-3000-xe-5w30.aspx\")</script>" : ""); %></asp:panel>
                            <asp:panel visible="false" id="L1_1_L2_2_L3_3" Runat="server">
                                <ul>
                                    <li class="endpoint">
                                        <asp:HyperLink runat="server" id="aL1_1_L2_2_L3_3" NavigateUrl="/Finland-Finnish-LCW/carengineoils_products_mobil-super-3000-x1-formula-fe-5w30.aspx">Mobil Super 3000 X1 Formula FE 5W-30</asp:HyperLink>
                                    </li>
                                </ul><% Response.Write((aL1_1_L2_2_L3_3.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(3,\"carengineoils_products_mobil-super-3000-x1-formula-fe-5w30.aspx\")</script>" : ""); %></asp:panel>
                            <asp:panel visible="false" id="L1_1_L2_2_L3_4" Runat="server">
                                <ul>
                                    <li class="endpoint">
                                        <asp:HyperLink runat="server" id="aL1_1_L2_2_L3_4" NavigateUrl="/Finland-Finnish-LCW/carengineoils_products_mobil-super-3000-x1-5w40.aspx">Mobil Super 3000 X1 5W-40</asp:HyperLink>
                                    </li>
                                </ul><% Response.Write((aL1_1_L2_2_L3_4.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(3,\"carengineoils_products_mobil-super-3000-x1-5w40.aspx\")</script>" : ""); %></asp:panel>
                            <asp:panel visible="false" id="L1_1_L2_2_L3_5" Runat="server">
                                <ul>
                                    <li class="endpoint">
                                        <asp:HyperLink runat="server" id="aL1_1_L2_2_L3_5" NavigateUrl="/Finland-Finnish-LCW/carengineoils_products_mobil-super-2000-10w40.aspx">Mobil Super 2000 10W-40</asp:HyperLink>
                                    </li>
                                </ul><% Response.Write((aL1_1_L2_2_L3_5.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(3,\"carengineoils_products_mobil-super-2000-10w40.aspx\")</script>" : ""); %></asp:panel>
                        </ul><% Response.Write((aL1_1_L2_2.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(2,\"carengineoils_products_mobil-super.aspx\")</script>" : ""); %></asp:panel>
                </ul><% Response.Write((aL1_1.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(1,\"carengineoils_products.aspx\")</script>" : ""); %></asp:panel>
            <asp:panel visible="true" id="L1_2" Runat="server">
                <ul>
                    <li class="endpoint">
                        <asp:HyperLink runat="server" id="aL1_2" NavigateUrl="/Finland-Finnish-LCW/carengineoils_mobil-lubricant-selector.aspx">�ljynvalitsin autoasi varten</asp:HyperLink>
                    </li>
                </ul><% Response.Write((aL1_2.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(1,\"carengineoils_mobil-lubricant-selector.aspx\")</script>" : ""); %></asp:panel>
            <asp:panel visible="true" id="L1_3" Runat="server">
                <ul>
                    <li>
                        <asp:HyperLink runat="server" id="aL1_3" NavigateUrl="/Finland-Finnish-LCW/carengineoils_carcaretips.aspx">autonhoitovinkkej�</asp:HyperLink>
                    </li>
                    <asp:panel visible="false" id="L1_3_L2_1" Runat="server">
                        <ul>
                            <li class="endpoint">
                                <asp:HyperLink runat="server" id="aL1_3_L2_1" NavigateUrl="/Finland-Finnish-LCW/carengineoils_carcaretips_faqs.aspx">usein kysyttyj� kysymyksi� autonhoidosta</asp:HyperLink>
                            </li>
                        </ul><% Response.Write((aL1_3_L2_1.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(2,\"carengineoils_carcaretips_faqs.aspx\")</script>" : ""); %></asp:panel>
                </ul><% Response.Write((aL1_3.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(1,\"carengineoils_carcaretips.aspx\")</script>" : ""); %></asp:panel>
            <div class="capBL">
                <div class="capBR"></div>
            </div>
        </div>
    </div>
</div>
