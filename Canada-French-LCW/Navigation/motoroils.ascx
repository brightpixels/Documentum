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
		document.getElementById('motoroils').setAttribute("class","mnNavOn");
		document.getElementById('motoroils').className = "mnNavOn";
		
		addFallback(-1,document.getElementById('motoroils').href);
		document.getElementById('navTitle').innerHTML = document.getElementById('motoroils').innerHTML;
		document.getElementById('navPanel').style.backgroundImage = "url('../Shared-Images-LCW/header_920x60_car-engine-oils_eame.jpg')";</script><a xmlns:asp="http://schemas.microsoft.com/ASPNET/20" xmlns:xalan-nodeset="org.apache.xalan.xslt.extensions.Nodeset" xmlns:java="http://xml.apache.org/xslt/java" xmlns:fo="http://www.w3.org/1999/XSL/Format" href="#mainContent" class="skip">Skip to Main Content</a><div xmlns:asp="http://schemas.microsoft.com/ASPNET/20" class="subnav">
    <div class="subL">
        <div class="subR">
            <div class="capTL">
                <div class="capTR"></div>
            </div>
            <asp:panel visible="true" id="L1_1" Runat="server">
                <ul>
                    <li>
                        <asp:HyperLink runat="server" id="aL1_1" NavigateUrl="/Canada-French-LCW/carengineoils_oems.aspx">quelle huile pour votre la voiture</asp:HyperLink>
                    </li>
                    <asp:panel visible="false" id="L1_1_L2_1" Runat="server">
                        <ul>
                            <li class="endpoint">
                                <asp:HyperLink runat="server" id="aL1_1_L2_1" NavigateUrl="/Canada-French-LCW/carengineoils_oems-chevrolet.aspx">quelle huile pour votre chevrolet</asp:HyperLink>
                            </li>
                        </ul><% Response.Write((aL1_1_L2_1.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(2,\"carengineoils_oems-chevrolet.aspx\")</script>" : ""); %></asp:panel>
                    <asp:panel visible="false" id="L1_1_L2_2" Runat="server">
                        <ul>
                            <li class="endpoint">
                                <asp:HyperLink runat="server" id="aL1_1_L2_2" NavigateUrl="/Canada-French-LCW/carengineoils_oems-dodge.aspx">quelle huile pour votre dodge</asp:HyperLink>
                            </li>
                        </ul><% Response.Write((aL1_1_L2_2.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(2,\"carengineoils_oems-dodge.aspx\")</script>" : ""); %></asp:panel>
                    <asp:panel visible="false" id="L1_1_L2_3" Runat="server">
                        <ul>
                            <li class="endpoint">
                                <asp:HyperLink runat="server" id="aL1_1_L2_3" NavigateUrl="/Canada-French-LCW/carengineoils_oems-ford.aspx">quelle huile pour votre ford</asp:HyperLink>
                            </li>
                        </ul><% Response.Write((aL1_1_L2_3.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(2,\"carengineoils_oems-ford.aspx\")</script>" : ""); %></asp:panel>
                    <asp:panel visible="false" id="L1_1_L2_4" Runat="server">
                        <ul>
                            <li class="endpoint">
                                <asp:HyperLink runat="server" id="aL1_1_L2_4" NavigateUrl="/Canada-French-LCW/carengineoils_oems-honda.aspx">quelle huile pour votre honda</asp:HyperLink>
                            </li>
                        </ul><% Response.Write((aL1_1_L2_4.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(2,\"carengineoils_oems-honda.aspx\")</script>" : ""); %></asp:panel>
                    <asp:panel visible="false" id="L1_1_L2_5" Runat="server">
                        <ul>
                            <li class="endpoint">
                                <asp:HyperLink runat="server" id="aL1_1_L2_5" NavigateUrl="/Canada-French-LCW/carengineoils_oems-infiniti.aspx">quelle huile pour votre infinti</asp:HyperLink>
                            </li>
                        </ul><% Response.Write((aL1_1_L2_5.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(2,\"carengineoils_oems-infiniti.aspx\")</script>" : ""); %></asp:panel>
                    <asp:panel visible="false" id="L1_1_L2_6" Runat="server">
                        <ul>
                            <li class="endpoint">
                                <asp:HyperLink runat="server" id="aL1_1_L2_6" NavigateUrl="/Canada-French-LCW/carengineoils_oems-mitsubishi.aspx">quelle huile pour votre mitsubishi</asp:HyperLink>
                            </li>
                        </ul><% Response.Write((aL1_1_L2_6.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(2,\"carengineoils_oems-mitsubishi.aspx\")</script>" : ""); %></asp:panel>
                    <asp:panel visible="false" id="L1_1_L2_7" Runat="server">
                        <ul>
                            <li class="endpoint">
                                <asp:HyperLink runat="server" id="aL1_1_L2_7" NavigateUrl="/Canada-French-LCW/carengineoils_oems-nissan.aspx">quelle huile pour votre nissan</asp:HyperLink>
                            </li>
                        </ul><% Response.Write((aL1_1_L2_7.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(2,\"carengineoils_oems-nissan.aspx\")</script>" : ""); %></asp:panel>
                    <asp:panel visible="false" id="L1_1_L2_8" Runat="server">
                        <ul>
                            <li class="endpoint">
                                <asp:HyperLink runat="server" id="aL1_1_L2_8" NavigateUrl="/Canada-French-LCW/carengineoils_oems-porsche.aspx">quelle huile pour votre porsche</asp:HyperLink>
                            </li>
                        </ul><% Response.Write((aL1_1_L2_8.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(2,\"carengineoils_oems-porsche.aspx\")</script>" : ""); %></asp:panel>
                    <asp:panel visible="false" id="L1_1_L2_9" Runat="server">
                        <ul>
                            <li class="endpoint">
                                <asp:HyperLink runat="server" id="aL1_1_L2_9" NavigateUrl="/Canada-French-LCW/carengineoils_oems-subaru.aspx">quelle huile pour votre subaru</asp:HyperLink>
                            </li>
                        </ul><% Response.Write((aL1_1_L2_9.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(2,\"carengineoils_oems-subaru.aspx\")</script>" : ""); %></asp:panel>
                    <asp:panel visible="false" id="L1_1_L2_10" Runat="server">
                        <ul>
                            <li class="endpoint">
                                <asp:HyperLink runat="server" id="aL1_1_L2_10" NavigateUrl="/Canada-French-LCW/carengineoils_oems-toyota.aspx">quelle huile pour votre toyota</asp:HyperLink>
                            </li>
                        </ul><% Response.Write((aL1_1_L2_10.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(2,\"carengineoils_oems-toyota.aspx\")</script>" : ""); %></asp:panel>
                </ul><% Response.Write((aL1_1.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(1,\"carengineoils_oems.aspx\")</script>" : ""); %></asp:panel>
            <asp:panel visible="true" id="L1_2" Runat="server">
                <ul style="display:none;">
                    <li class="endpoint">
                        <asp:HyperLink runat="server" id="aL1_2" NavigateUrl="/Canada-French-LCW/Save-Fuel-With-Mobil-1-Oil-Change.aspx">Économisez du carburant avec un changement d'huile Mobil 1</asp:HyperLink>
                    </li>
                </ul><% Response.Write((aL1_2.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(1,\"Save-Fuel-With-Mobil-1-Oil-Change.aspx\")</script>" : ""); %></asp:panel>
            <asp:panel visible="true" id="L1_3" Runat="server">
                <ul>
                    <li>
                        <asp:HyperLink runat="server" id="aL1_3" NavigateUrl="/Canada-French-LCW/carengineoils_products.aspx">produits</asp:HyperLink>
                    </li>
                    <asp:panel visible="false" id="L1_3_L2_1" Runat="server">
                        <ul>
                            <li>
                                <asp:HyperLink runat="server" id="aL1_3_L2_1" NavigateUrl="/Canada-French-LCW/carengineoils_products_mobil-1.aspx">Mobil 1</asp:HyperLink>
                            </li>
                            <asp:panel visible="false" id="L1_3_L2_1_L3_1" Runat="server">
                                <ul>
                                    <li class="endpoint">
                                        <asp:HyperLink runat="server" id="aL1_3_L2_1_L3_1" NavigateUrl="/Canada-French-LCW/carengineoils_products_mobil-1_0w40.aspx">Mobil 1 FS 0W-40</asp:HyperLink>
                                    </li>
                                </ul><% Response.Write((aL1_3_L2_1_L3_1.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(3,\"carengineoils_products_mobil-1_0w40.aspx\")</script>" : ""); %></asp:panel>
                            <asp:panel visible="false" id="L1_3_L2_1_L3_2" Runat="server">
                                <ul>
                                    <li class="endpoint">
                                        <asp:HyperLink runat="server" id="aL1_3_L2_1_L3_2" NavigateUrl="/Canada-French-LCW/carengineoils_products_mobil-1_5w20.aspx">Mobil 1 5W-20</asp:HyperLink>
                                    </li>
                                </ul><% Response.Write((aL1_3_L2_1_L3_2.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(3,\"carengineoils_products_mobil-1_5w20.aspx\")</script>" : ""); %></asp:panel>
                            <asp:panel visible="false" id="L1_3_L2_1_L3_3" Runat="server">
                                <ul>
                                    <li class="endpoint">
                                        <asp:HyperLink runat="server" id="aL1_3_L2_1_L3_3" NavigateUrl="/Canada-French-LCW/carengineoils_products_mobil-1_5w30.aspx">Mobil 1 5W-30</asp:HyperLink>
                                    </li>
                                </ul><% Response.Write((aL1_3_L2_1_L3_3.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(3,\"carengineoils_products_mobil-1_5w30.aspx\")</script>" : ""); %></asp:panel>
                            <asp:panel visible="false" id="L1_3_L2_1_L3_4" Runat="server">
                                <ul>
                                    <li class="endpoint">
                                        <asp:HyperLink runat="server" id="aL1_3_L2_1_L3_4" NavigateUrl="/Canada-French-LCW/carengineoils_products_mobil-1_10w30.aspx">Mobil 1 10W-30</asp:HyperLink>
                                    </li>
                                </ul><% Response.Write((aL1_3_L2_1_L3_4.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(3,\"carengineoils_products_mobil-1_10w30.aspx\")</script>" : ""); %></asp:panel>
                            <asp:panel visible="false" id="L1_3_L2_1_L3_5" Runat="server">
                                <ul>
                                    <li class="endpoint">
                                        <asp:HyperLink runat="server" id="aL1_3_L2_1_L3_5" NavigateUrl="/Canada-French-LCW/carengineoils_products_mobil-1_15w50.aspx">Mobil 1 15W-50</asp:HyperLink>
                                    </li>
                                </ul><% Response.Write((aL1_3_L2_1_L3_5.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(3,\"carengineoils_products_mobil-1_15w50.aspx\")</script>" : ""); %></asp:panel>
                            <asp:panel visible="false" id="L1_3_L2_1_L3_6" Runat="server">
                                <ul>
                                    <li class="endpoint">
                                        <asp:HyperLink runat="server" id="aL1_3_L2_1_L3_6" NavigateUrl="/Canada-French-LCW/carengineoils_products_mobil-1_afe-0w20.aspx">Mobil 1 Économie importante de carburant 0W-20</asp:HyperLink>
                                    </li>
                                </ul><% Response.Write((aL1_3_L2_1_L3_6.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(3,\"carengineoils_products_mobil-1_afe-0w20.aspx\")</script>" : ""); %></asp:panel>
                            <asp:panel visible="false" id="L1_3_L2_1_L3_7" Runat="server">
                                <ul>
                                    <li class="endpoint">
                                        <asp:HyperLink runat="server" id="aL1_3_L2_1_L3_7" NavigateUrl="/Canada-French-LCW/carengineoils_products_mobil-1_afe-0w30.aspx">Mobil 1 Économie importante de carburant 0W-30</asp:HyperLink>
                                    </li>
                                </ul><% Response.Write((aL1_3_L2_1_L3_7.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(3,\"carengineoils_products_mobil-1_afe-0w30.aspx\")</script>" : ""); %></asp:panel>
                            <asp:panel visible="false" id="L1_3_L2_1_L3_8" Runat="server">
                                <ul>
                                    <li class="endpoint">
                                        <asp:HyperLink runat="server" id="aL1_3_L2_1_L3_8" NavigateUrl="/Canada-French-LCW/carengineoils_products_mobil-1_esp-0w30.aspx">Mobil 1 ESP 0W-30</asp:HyperLink>
                                    </li>
                                </ul><% Response.Write((aL1_3_L2_1_L3_8.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(3,\"carengineoils_products_mobil-1_esp-0w30.aspx\")</script>" : ""); %></asp:panel>
                            <asp:panel visible="false" id="L1_3_L2_1_L3_9" Runat="server">
                                <ul>
                                    <li class="endpoint">
                                        <asp:HyperLink runat="server" id="aL1_3_L2_1_L3_9" NavigateUrl="/Canada-French-LCW/carengineoils_products_mobil-1_esp-formula-5w30.aspx">Mobil 1 ESP Formula 5W-30</asp:HyperLink>
                                    </li>
                                </ul><% Response.Write((aL1_3_L2_1_L3_9.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(3,\"carengineoils_products_mobil-1_esp-formula-5w30.aspx\")</script>" : ""); %></asp:panel>
                            <asp:panel visible="false" id="L1_3_L2_1_L3_10" Runat="server">
                                <ul>
                                    <li class="endpoint">
                                        <asp:HyperLink runat="server" id="aL1_3_L2_1_L3_10" NavigateUrl="/Canada-French-LCW/carengineoils_products_mobil-1_formula-m-5w40.aspx">Mobil 1 Formula M 5W-40</asp:HyperLink>
                                    </li>
                                </ul><% Response.Write((aL1_3_L2_1_L3_10.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(3,\"carengineoils_products_mobil-1_formula-m-5w40.aspx\")</script>" : ""); %></asp:panel>
                            <asp:panel visible="false" id="L1_3_L2_1_L3_11" Runat="server">
                                <ul>
                                    <li class="endpoint">
                                        <asp:HyperLink runat="server" id="aL1_3_L2_1_L3_11" NavigateUrl="/Canada-French-LCW/carengineoils_products_mobil-1_ep-0w20.aspx">Mobil 1 Performance Prolongée 0W-20</asp:HyperLink>
                                    </li>
                                </ul><% Response.Write((aL1_3_L2_1_L3_11.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(3,\"carengineoils_products_mobil-1_ep-0w20.aspx\")</script>" : ""); %></asp:panel>
                            <asp:panel visible="false" id="L1_3_L2_1_L3_12" Runat="server">
                                <ul>
                                    <li class="endpoint">
                                        <asp:HyperLink runat="server" id="aL1_3_L2_1_L3_12" NavigateUrl="/Canada-French-LCW/carengineoils_products_mobil-1_ep-5w20.aspx">Mobil 1 Performance Prolongée 5W-20</asp:HyperLink>
                                    </li>
                                </ul><% Response.Write((aL1_3_L2_1_L3_12.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(3,\"carengineoils_products_mobil-1_ep-5w20.aspx\")</script>" : ""); %></asp:panel>
                            <asp:panel visible="false" id="L1_3_L2_1_L3_13" Runat="server">
                                <ul>
                                    <li class="endpoint">
                                        <asp:HyperLink runat="server" id="aL1_3_L2_1_L3_13" NavigateUrl="/Canada-French-LCW/carengineoils_products_mobil-1_ep-10w-30.aspx">Mobil 1 Performance Prolongée 10W-30</asp:HyperLink>
                                    </li>
                                </ul><% Response.Write((aL1_3_L2_1_L3_13.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(3,\"carengineoils_products_mobil-1_ep-10w-30.aspx\")</script>" : ""); %></asp:panel>
                            <asp:panel visible="false" id="L1_3_L2_1_L3_14" Runat="server">
                                <ul>
                                    <li class="endpoint">
                                        <asp:HyperLink runat="server" id="aL1_3_L2_1_L3_14" NavigateUrl="/Canada-French-LCW/carengineoils_products_mobil-1_ep-5w30_Copy.aspx">Mobil 1 Performance Prolongée 5W-30</asp:HyperLink>
                                    </li>
                                </ul><% Response.Write((aL1_3_L2_1_L3_14.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(3,\"carengineoils_products_mobil-1_ep-5w30_Copy.aspx\")</script>" : ""); %></asp:panel>
                            <asp:panel visible="false" id="L1_3_L2_1_L3_15" Runat="server">
                                <ul>
                                    <li class="endpoint">
                                        <asp:HyperLink runat="server" id="aL1_3_L2_1_L3_15" NavigateUrl="/Canada-French-LCW/high-mileage_5w-20.aspx">Mobil 1 High Mileage 5W-20</asp:HyperLink>
                                    </li>
                                </ul><% Response.Write((aL1_3_L2_1_L3_15.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(3,\"high-mileage_5w-20.aspx\")</script>" : ""); %></asp:panel>
                            <asp:panel visible="false" id="L1_3_L2_1_L3_16" Runat="server">
                                <ul>
                                    <li class="endpoint">
                                        <asp:HyperLink runat="server" id="aL1_3_L2_1_L3_16" NavigateUrl="/Canada-French-LCW/high-mileage_5w-30.aspx">Mobil 1 High Mileage 5W-30</asp:HyperLink>
                                    </li>
                                </ul><% Response.Write((aL1_3_L2_1_L3_16.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(3,\"high-mileage_5w-30.aspx\")</script>" : ""); %></asp:panel>
                            <asp:panel visible="false" id="L1_3_L2_1_L3_17" Runat="server">
                                <ul>
                                    <li class="endpoint">
                                        <asp:HyperLink runat="server" id="aL1_3_L2_1_L3_17" NavigateUrl="/Canada-French-LCW/carengineoils_products_mobil-1_tdt-5w-40.aspx">Mobil 1 Turbo Diesel Truck 5W-40</asp:HyperLink>
                                    </li>
                                </ul><% Response.Write((aL1_3_L2_1_L3_17.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(3,\"carengineoils_products_mobil-1_tdt-5w-40.aspx\")</script>" : ""); %></asp:panel>
                        </ul><% Response.Write((aL1_3_L2_1.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(2,\"carengineoils_products_mobil-1.aspx\")</script>" : ""); %></asp:panel>
                    <asp:panel visible="false" id="L1_3_L2_2" Runat="server">
                        <ul>
                            <li class="endpoint">
                                <asp:HyperLink runat="server" id="aL1_3_L2_2" NavigateUrl="/Canada-French-LCW/carengineoils_changez.aspx">Mobil 1 Économie importante de carburant</asp:HyperLink>
                            </li>
                        </ul><% Response.Write((aL1_3_L2_2.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(2,\"carengineoils_changez.aspx\")</script>" : ""); %></asp:panel>
                    <asp:panel visible="false" id="L1_3_L2_3" Runat="server">
                        <ul>
                            <li class="endpoint">
                                <asp:HyperLink runat="server" id="aL1_3_L2_3" NavigateUrl="/Canada-French-LCW/carengineoils_products_mobil-1-oil-filter.aspx">filtre à huile Mobil 1 &ndash; performance prolongée</asp:HyperLink>
                            </li>
                        </ul><% Response.Write((aL1_3_L2_3.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(2,\"carengineoils_products_mobil-1-oil-filter.aspx\")</script>" : ""); %></asp:panel>
                    <asp:panel visible="false" id="L1_3_L2_4" Runat="server">
                        <ul>
                            <li>
                                <asp:HyperLink runat="server" id="aL1_3_L2_4" NavigateUrl="/Canada-French-LCW/carengineoils_products_mobil-super.aspx">Mobil Super</asp:HyperLink>
                            </li>
                            <asp:panel visible="false" id="L1_3_L2_4_L3_1" Runat="server">
                                <ul>
                                    <li class="endpoint">
                                        <asp:HyperLink runat="server" id="aL1_3_L2_4_L3_1" NavigateUrl="/Canada-French-LCW/carengineoils_products_mobil-super_1000-5w30.aspx">Mobil Super 1000 </asp:HyperLink>
                                    </li>
                                </ul><% Response.Write((aL1_3_L2_4_L3_1.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(3,\"carengineoils_products_mobil-super_1000-5w30.aspx\")</script>" : ""); %></asp:panel>
                            <asp:panel visible="false" id="L1_3_L2_4_L3_2" Runat="server">
                                <ul>
                                    <li class="endpoint">
                                        <asp:HyperLink runat="server" id="aL1_3_L2_4_L3_2" NavigateUrl="/Canada-French-LCW/carengineoils_products_mobil-super_2000-5w30.aspx">Mobil Super 2000 </asp:HyperLink>
                                    </li>
                                </ul><% Response.Write((aL1_3_L2_4_L3_2.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(3,\"carengineoils_products_mobil-super_2000-5w30.aspx\")</script>" : ""); %></asp:panel>
                            <asp:panel visible="false" id="L1_3_L2_4_L3_3" Runat="server">
                                <ul>
                                    <li class="endpoint">
                                        <asp:HyperLink runat="server" id="aL1_3_L2_4_L3_3" NavigateUrl="/Canada-French-LCW/carengineoils_products_mobil-super_3000-0w20.aspx">Mobil Super 3000 0W-20</asp:HyperLink>
                                    </li>
                                </ul><% Response.Write((aL1_3_L2_4_L3_3.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(3,\"carengineoils_products_mobil-super_3000-0w20.aspx\")</script>" : ""); %></asp:panel>
                            <asp:panel visible="false" id="L1_3_L2_4_L3_4" Runat="server">
                                <ul>
                                    <li class="endpoint">
                                        <asp:HyperLink runat="server" id="aL1_3_L2_4_L3_4" NavigateUrl="/Canada-French-LCW/carengineoils_products_mobil-super_3000-formula-d1-0W-20.aspx">Mobil Super 3000 Formula D1 0W-20</asp:HyperLink>
                                    </li>
                                </ul><% Response.Write((aL1_3_L2_4_L3_4.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(3,\"carengineoils_products_mobil-super_3000-formula-d1-0W-20.aspx\")</script>" : ""); %></asp:panel>
                            <asp:panel visible="false" id="L1_3_L2_4_L3_5" Runat="server">
                                <ul>
                                    <li class="endpoint">
                                        <asp:HyperLink runat="server" id="aL1_3_L2_4_L3_5" NavigateUrl="/Canada-French-LCW/carengineoils_products_mobil-super_3000-formula-d1-5w-30.aspx">Mobil Super 3000 Formula D1 5W-30</asp:HyperLink>
                                    </li>
                                </ul><% Response.Write((aL1_3_L2_4_L3_5.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(3,\"carengineoils_products_mobil-super_3000-formula-d1-5w-30.aspx\")</script>" : ""); %></asp:panel>
                        </ul><% Response.Write((aL1_3_L2_4.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(2,\"carengineoils_products_mobil-super.aspx\")</script>" : ""); %></asp:panel>
                </ul><% Response.Write((aL1_3.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(1,\"carengineoils_products.aspx\")</script>" : ""); %></asp:panel>
            <asp:panel visible="true" id="L1_4" Runat="server">
                <ul>
                    <li class="endpoint">
                        <asp:HyperLink runat="server" id="aL1_4" NavigateUrl="/Canada-French-LCW/LSPI-Protection.aspx">Protection exceptionnelle contre le LSPI</asp:HyperLink>
                    </li>
                </ul><% Response.Write((aL1_4.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(1,\"LSPI-Protection.aspx\")</script>" : ""); %></asp:panel>
            <asp:panel visible="true" id="L1_5" Runat="server">
                <ul>
                    <li class="endpoint">
                        <asp:HyperLink runat="server" id="aL1_5" NavigateUrl="/Canada-French-LCW/carengineoils_dexos-1-approved-mobil-synthetic-lubricants.aspx">dexos1 certifié</asp:HyperLink>
                    </li>
                </ul><% Response.Write((aL1_5.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(1,\"carengineoils_dexos-1-approved-mobil-synthetic-lubricants.aspx\")</script>" : ""); %></asp:panel>
            <asp:panel visible="true" id="L1_6" Runat="server">
                <ul>
                    <li class="endpoint">
                        <asp:HyperLink runat="server" id="aL1_6" NavigateUrl="/Canada-French-LCW/benefits-of-synthetics.aspx">avantages des huiles synthétiques</asp:HyperLink>
                    </li>
                </ul><% Response.Write((aL1_6.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(1,\"benefits-of-synthetics.aspx\")</script>" : ""); %></asp:panel>
            <asp:panel visible="true" id="L1_7" Runat="server">
                <ul>
                    <li class="endpoint">
                        <asp:HyperLink runat="server" id="aL1_7" NavigateUrl="/Canada-French-LCW/cold-pour-video.aspx#">Huile synthétique vs huile conventionnelle</asp:HyperLink>
                    </li>
                </ul><% Response.Write((aL1_7.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(1,\"cold-pour-video.aspx#\")</script>" : ""); %></asp:panel>
            <asp:panel visible="true" id="L1_8" Runat="server">
                <ul>
                    <li class="endpoint">
                        <asp:HyperLink runat="server" id="aL1_8" NavigateUrl="/Canada-French-LCW/votre-motre-plus-performant.aspx">votre motre plus performant</asp:HyperLink>
                    </li>
                </ul><% Response.Write((aL1_8.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(1,\"votre-motre-plus-performant.aspx\")</script>" : ""); %></asp:panel>
            <asp:panel visible="true" id="L1_9" Runat="server">
                <ul>
                    <li>
                        <asp:HyperLink runat="server" id="aL1_9" NavigateUrl="/Canada-French-LCW/carengineoils_other-products.aspx">autres produits</asp:HyperLink>
                    </li>
                    <asp:panel visible="false" id="L1_9_L2_1" Runat="server">
                        <ul>
                            <li>
                                <asp:HyperLink runat="server" id="aL1_9_L2_1" NavigateUrl="/Canada-French-LCW/carengineoils_other-products_gear_oils.aspx">huile pour engrenages</asp:HyperLink>
                            </li>
                            <asp:panel visible="false" id="L1_9_L2_1_L3_1" Runat="server">
                                <ul>
                                    <li class="endpoint">
                                        <asp:HyperLink runat="server" id="aL1_9_L2_1_L3_1" NavigateUrl="/Canada-French-LCW/carengineoils_other-products_gear-oils_mobil-1-synthetic-gear-lubricant-75w90.aspx">Huiles pour engrenages synthétiques Mobil 1 75W-90</asp:HyperLink>
                                    </li>
                                </ul><% Response.Write((aL1_9_L2_1_L3_1.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(3,\"carengineoils_other-products_gear-oils_mobil-1-synthetic-gear-lubricant-75w90.aspx\")</script>" : ""); %></asp:panel>
                        </ul><% Response.Write((aL1_9_L2_1.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(2,\"carengineoils_other-products_gear_oils.aspx\")</script>" : ""); %></asp:panel>
                    <asp:panel visible="false" id="L1_9_L2_2" Runat="server">
                        <ul>
                            <li>
                                <asp:HyperLink runat="server" id="aL1_9_L2_2" NavigateUrl="/Canada-French-LCW/automatic-transmission-fluid.aspx">fluides pour transmission automatique</asp:HyperLink>
                            </li>
                            <asp:panel visible="false" id="L1_9_L2_2_L3_1" Runat="server">
                                <ul>
                                    <li class="endpoint">
                                        <asp:HyperLink runat="server" id="aL1_9_L2_2_L3_1" NavigateUrl="/Canada-French-LCW/automatic-transmission-fluid_mobil-1-synthetic-atf.aspx">FTA synthétique Mobil 1</asp:HyperLink>
                                    </li>
                                </ul><% Response.Write((aL1_9_L2_2_L3_1.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(3,\"automatic-transmission-fluid_mobil-1-synthetic-atf.aspx\")</script>" : ""); %></asp:panel>
                            <asp:panel visible="false" id="L1_9_L2_2_L3_2" Runat="server">
                                <ul>
                                    <li class="endpoint">
                                        <asp:HyperLink runat="server" id="aL1_9_L2_2_L3_2" NavigateUrl="/Canada-French-LCW/automatic-transmission-fluid_mobil-super-atf-3309.aspx">Mobil ATF 3309</asp:HyperLink>
                                    </li>
                                </ul><% Response.Write((aL1_9_L2_2_L3_2.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(3,\"automatic-transmission-fluid_mobil-super-atf-3309.aspx\")</script>" : ""); %></asp:panel>
                            <asp:panel visible="false" id="L1_9_L2_2_L3_3" Runat="server">
                                <ul>
                                    <li class="endpoint">
                                        <asp:HyperLink runat="server" id="aL1_9_L2_2_L3_3" NavigateUrl="/Canada-French-LCW/automatic-transmission-fluid_mobil-super-atf-plus4.aspx">Mobil ATF +4</asp:HyperLink>
                                    </li>
                                </ul><% Response.Write((aL1_9_L2_2_L3_3.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(3,\"automatic-transmission-fluid_mobil-super-atf-plus4.aspx\")</script>" : ""); %></asp:panel>
                            <asp:panel visible="false" id="L1_9_L2_2_L3_4" Runat="server">
                                <ul>
                                    <li class="endpoint">
                                        <asp:HyperLink runat="server" id="aL1_9_L2_2_L3_4" NavigateUrl="/Canada-French-LCW/automatic-transmission-fluid_mobil-super-atf-dm.aspx">FTA Mobil D/M</asp:HyperLink>
                                    </li>
                                </ul><% Response.Write((aL1_9_L2_2_L3_4.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(3,\"automatic-transmission-fluid_mobil-super-atf-dm.aspx\")</script>" : ""); %></asp:panel>
                            <asp:panel visible="false" id="L1_9_L2_2_L3_5" Runat="server">
                                <ul>
                                    <li class="endpoint">
                                        <asp:HyperLink runat="server" id="aL1_9_L2_2_L3_5" NavigateUrl="/Canada-French-LCW/automatic-transmission-fluid_mobil-super-dexron-vi-atf.aspx">Mobil DEXRON-VI ATF</asp:HyperLink>
                                    </li>
                                </ul><% Response.Write((aL1_9_L2_2_L3_5.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(3,\"automatic-transmission-fluid_mobil-super-dexron-vi-atf.aspx\")</script>" : ""); %></asp:panel>
                            <asp:panel visible="false" id="L1_9_L2_2_L3_6" Runat="server">
                                <ul>
                                    <li class="endpoint">
                                        <asp:HyperLink runat="server" id="aL1_9_L2_2_L3_6" NavigateUrl="/Canada-French-LCW/automatic-transmission-fluid_mobil-super-multi-vehicle-atf.aspx">FTA Mobil pour véhicules multiples</asp:HyperLink>
                                    </li>
                                </ul><% Response.Write((aL1_9_L2_2_L3_6.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(3,\"automatic-transmission-fluid_mobil-super-multi-vehicle-atf.aspx\")</script>" : ""); %></asp:panel>
                        </ul><% Response.Write((aL1_9_L2_2.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(2,\"automatic-transmission-fluid.aspx\")</script>" : ""); %></asp:panel>
                </ul><% Response.Write((aL1_9.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(1,\"carengineoils_other-products.aspx\")</script>" : ""); %></asp:panel>
            <asp:panel visible="true" id="L1_10" Runat="server">
                <ul>
                    <li>
                        <asp:HyperLink runat="server" id="aL1_10" NavigateUrl="/Canada-French-LCW/car-care-tips.aspx">conseils d&rsquo;entretien automobile</asp:HyperLink>
                    </li>
                    <asp:panel visible="false" id="L1_10_L2_1" Runat="server">
                        <ul>
                            <li class="endpoint">
                                <asp:HyperLink runat="server" id="aL1_10_L2_1" NavigateUrl="/Canada-French-LCW/car-care-tips_faqs.aspx">FAQ sur l&rsquo;entretien automobile</asp:HyperLink>
                            </li>
                        </ul><% Response.Write((aL1_10_L2_1.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(2,\"car-care-tips_faqs.aspx\")</script>" : ""); %></asp:panel>
                </ul><% Response.Write((aL1_10.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(1,\"car-care-tips.aspx\")</script>" : ""); %></asp:panel>
            <asp:panel visible="true" id="L1_11" Runat="server">
                <ul>
                    <li>
                        <asp:HyperLink runat="server" id="aL1_11" NavigateUrl="/Canada-French-LCW/carengineoils_motorsport.aspx">Mobil 1 dans les sports motorises</asp:HyperLink>
                    </li>
                    <asp:panel visible="false" id="L1_11_L2_1" Runat="server">
                        <ul>
                            <li class="endpoint">
                                <asp:HyperLink runat="server" id="aL1_11_L2_1" NavigateUrl="/Canada-French-LCW/carengineoils_motorsport_the-heritage.aspx">l'héritage</asp:HyperLink>
                            </li>
                        </ul><% Response.Write((aL1_11_L2_1.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(2,\"carengineoils_motorsport_the-heritage.aspx\")</script>" : ""); %></asp:panel>
                    <asp:panel visible="false" id="L1_11_L2_2" Runat="server">
                        <ul>
                            <li class="endpoint">
                                <asp:HyperLink runat="server" id="aL1_11_L2_2" NavigateUrl="/Canada-French-LCW/carengineoils_motorsport_inside-track.aspx">la voie intérieure</asp:HyperLink>
                            </li>
                        </ul><% Response.Write((aL1_11_L2_2.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(2,\"carengineoils_motorsport_inside-track.aspx\")</script>" : ""); %></asp:panel>
                    <asp:panel visible="false" id="L1_11_L2_3" Runat="server">
                        <ul>
                            <li>
                                <asp:HyperLink runat="server" id="aL1_11_L2_3" NavigateUrl="/Canada-French-LCW/carengineoils_motorsport_teams.aspx">les écuries</asp:HyperLink>
                            </li>
                            <asp:panel visible="false" id="L1_11_L2_3_L3_1" Runat="server">
                                <ul>
                                    <li class="endpoint">
                                        <asp:HyperLink runat="server" id="aL1_11_L2_3_L3_1" NavigateUrl="/Canada-French-LCW/carengineoils_motorsport_teams-stewart-haas-racing.aspx">Stewart-Haas Racing</asp:HyperLink>
                                    </li>
                                </ul><% Response.Write((aL1_11_L2_3_L3_1.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(3,\"carengineoils_motorsport_teams-stewart-haas-racing.aspx\")</script>" : ""); %></asp:panel>
                            <asp:panel visible="false" id="L1_11_L2_3_L3_2" Runat="server">
                                <ul>
                                    <li class="endpoint">
                                        <asp:HyperLink runat="server" id="aL1_11_L2_3_L3_2" NavigateUrl="/Canada-French-LCW/carengineoils_motorsport_teams-porsche-mobil-1-supercup.aspx">Porsche Mobil 1 Supercup</asp:HyperLink>
                                    </li>
                                </ul><% Response.Write((aL1_11_L2_3_L3_2.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(3,\"carengineoils_motorsport_teams-porsche-mobil-1-supercup.aspx\")</script>" : ""); %></asp:panel>
                            <asp:panel visible="false" id="L1_11_L2_3_L3_3" Runat="server">
                                <ul>
                                    <li class="endpoint">
                                        <asp:HyperLink runat="server" id="aL1_11_L2_3_L3_3" NavigateUrl="http://lubes.mobil.com/Canada-French-LCW/carengineoils_motorsport_teams-red-bull-racing.aspx">Red Bull Racing </asp:HyperLink>
                                    </li>
                                </ul><% Response.Write((aL1_11_L2_3_L3_3.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(3,\"http://lubes.mobil.com/Canada-French-LCW/carengineoils_motorsport_teams-red-bull-racing.aspx\")</script>" : ""); %></asp:panel>
                        </ul><% Response.Write((aL1_11_L2_3.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(2,\"carengineoils_motorsport_teams.aspx\")</script>" : ""); %></asp:panel>
                </ul><% Response.Write((aL1_11.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(1,\"carengineoils_motorsport.aspx\")</script>" : ""); %></asp:panel>
            <div class="capBL">
                <div class="capBR"></div>
            </div>
        </div>
    </div>
</div>
