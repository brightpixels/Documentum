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
		document.getElementById('heavydutyoils').setAttribute("class","mnNavOn");
		document.getElementById('heavydutyoils').className = "mnNavOn";
		
		addFallback(-1,document.getElementById('heavydutyoils').href);
		document.getElementById('navTitle').innerHTML = document.getElementById('heavydutyoils').innerHTML;
		document.getElementById('navPanel').style.backgroundImage = "url('../Shared-Images-LCW/header_920x60_heavy-duty-engine-oils_eame.jpg')";</script><a xmlns:asp="http://schemas.microsoft.com/ASPNET/20" xmlns:xalan-nodeset="org.apache.xalan.xslt.extensions.Nodeset" xmlns:java="http://xml.apache.org/xslt/java" xmlns:fo="http://www.w3.org/1999/XSL/Format" href="#mainContent" class="skip">Skip to Main Content</a><div xmlns:asp="http://schemas.microsoft.com/ASPNET/20" class="subnav">
    <div class="subL">
        <div class="subR">
            <div class="capTL">
                <div class="capTR"></div>
            </div>
            <asp:panel visible="true" id="L1_1" Runat="server">
                <ul>
                    <li>
                        <asp:HyperLink runat="server" id="aL1_1" NavigateUrl="/Sweden-Swedish-LCW/heavydutyoils_products.aspx">heavy-duty-produkter</asp:HyperLink>
                    </li>
                    <asp:panel visible="false" id="L1_1_L2_1" Runat="server">
                        <ul>
                            <li>
                                <asp:HyperLink runat="server" id="aL1_1_L2_1" NavigateUrl="/Sweden-Swedish-LCW/heavydutyoils_products_engine-oils.aspx">motoroljeprodukter</asp:HyperLink>
                            </li>
                            <asp:panel visible="false" id="L1_1_L2_1_L3_1" Runat="server">
                                <ul>
                                    <li>
                                        <asp:HyperLink runat="server" id="aL1_1_L2_1_L3_1" NavigateUrl="/Sweden-Swedish-LCW/heavydutyoils_products_engine-oils_mobil-delvac-1-le-5w30.aspx">Mobil Delvac 1 LE 5W-30</asp:HyperLink>
                                    </li>
                                    <asp:panel visible="false" id="L1_1_L2_1_L3_1_L4_1" Runat="server">
                                        <ul>
                                            <li class="endpoint">
                                                <asp:HyperLink runat="server" id="aL1_1_L2_1_L3_1_L4_1" NavigateUrl="/Sweden-Swedish-LCW/heavydutyoils_products_engine-oils_mobil-delvac-1-le-5w30-faqs.aspx">Mobil Delvac 1  LE 5W-30 - Vanliga fr�gor och svar</asp:HyperLink>
                                            </li>
                                        </ul><% Response.Write((aL1_1_L2_1_L3_1_L4_1.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(4,\"heavydutyoils_products_engine-oils_mobil-delvac-1-le-5w30-faqs.aspx\")</script>" : ""); %></asp:panel>
                                </ul><% Response.Write((aL1_1_L2_1_L3_1.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(3,\"heavydutyoils_products_engine-oils_mobil-delvac-1-le-5w30.aspx\")</script>" : ""); %></asp:panel>
                            <asp:panel visible="false" id="L1_1_L2_1_L3_2" Runat="server">
                                <ul>
                                    <li class="endpoint">
                                        <asp:HyperLink runat="server" id="aL1_1_L2_1_L3_2" NavigateUrl="/Sweden-Swedish-LCW/heavydutyoils_products_engine-oils_mobil-delvac-1-5W40.aspx">Mobil Delvac 1 5W-40</asp:HyperLink>
                                    </li>
                                </ul><% Response.Write((aL1_1_L2_1_L3_2.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(3,\"heavydutyoils_products_engine-oils_mobil-delvac-1-5W40.aspx\")</script>" : ""); %></asp:panel>
                            <asp:panel visible="false" id="L1_1_L2_1_L3_3" Runat="server">
                                <ul>
                                    <li class="endpoint">
                                        <asp:HyperLink runat="server" id="aL1_1_L2_1_L3_3" NavigateUrl="/Sweden-Swedish-LCW/heavydutyoils_products_engine-oils_mobil-delvac-xhp-esp-10w40.aspx">Mobil Delvac XHP ESP M 10W-40</asp:HyperLink>
                                    </li>
                                </ul><% Response.Write((aL1_1_L2_1_L3_3.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(3,\"heavydutyoils_products_engine-oils_mobil-delvac-xhp-esp-10w40.aspx\")</script>" : ""); %></asp:panel>
                            <asp:panel visible="false" id="L1_1_L2_1_L3_4" Runat="server">
                                <ul>
                                    <li class="endpoint">
                                        <asp:HyperLink runat="server" id="aL1_1_L2_1_L3_4" NavigateUrl="/Sweden-Swedish-LCW/heavydutyoils_products_engine-oils_mobil-delvac-xhp-extra-10w40.aspx">Mobil Delvac XHP Extra 10W-40</asp:HyperLink>
                                    </li>
                                </ul><% Response.Write((aL1_1_L2_1_L3_4.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(3,\"heavydutyoils_products_engine-oils_mobil-delvac-xhp-extra-10w40.aspx\")</script>" : ""); %></asp:panel>
                            <asp:panel visible="false" id="L1_1_L2_1_L3_5" Runat="server">
                                <ul>
                                    <li class="endpoint">
                                        <asp:HyperLink runat="server" id="aL1_1_L2_1_L3_5" NavigateUrl="/Sweden-Swedish-LCW/heavydutyoils_products_engine-oils_mobil-delvac-mx-esp-10w30.aspx">Mobil Delvac MX ESP 10W-30 </asp:HyperLink>
                                    </li>
                                </ul><% Response.Write((aL1_1_L2_1_L3_5.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(3,\"heavydutyoils_products_engine-oils_mobil-delvac-mx-esp-10w30.aspx\")</script>" : ""); %></asp:panel>
                            <asp:panel visible="false" id="L1_1_L2_1_L3_6" Runat="server">
                                <ul>
                                    <li class="endpoint">
                                        <asp:HyperLink runat="server" id="aL1_1_L2_1_L3_6" NavigateUrl="/Sweden-Swedish-LCW/heavydutyoils_products_engine-oils_mobil-delvac-mx-esp-15w40.aspx">Mobil Delvac MX ESP 15W-40</asp:HyperLink>
                                    </li>
                                </ul><% Response.Write((aL1_1_L2_1_L3_6.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(3,\"heavydutyoils_products_engine-oils_mobil-delvac-mx-esp-15w40.aspx\")</script>" : ""); %></asp:panel>
                        </ul><% Response.Write((aL1_1_L2_1.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(2,\"heavydutyoils_products_engine-oils.aspx\")</script>" : ""); %></asp:panel>
                    <asp:panel visible="false" id="L1_1_L2_2" Runat="server">
                        <ul>
                            <li>
                                <asp:HyperLink runat="server" id="aL1_1_L2_2" NavigateUrl="/Sweden-Swedish-LCW/heavydutyoils_products_power-steering.aspx">servostyrning</asp:HyperLink>
                            </li>
                            <asp:panel visible="false" id="L1_1_L2_2_L3_1" Runat="server">
                                <ul>
                                    <li class="endpoint">
                                        <asp:HyperLink runat="server" id="aL1_1_L2_2_L3_1" NavigateUrl="/Sweden-Swedish-LCW/heavydutyoils_products_power-steering_mobil-atf-320.aspx">Mobil ATF 320</asp:HyperLink>
                                    </li>
                                </ul><% Response.Write((aL1_1_L2_2_L3_1.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(3,\"heavydutyoils_products_power-steering_mobil-atf-320.aspx\")</script>" : ""); %></asp:panel>
                            <asp:panel visible="false" id="L1_1_L2_2_L3_2" Runat="server">
                                <ul>
                                    <li class="endpoint">
                                        <asp:HyperLink runat="server" id="aL1_1_L2_2_L3_2" NavigateUrl="/Sweden-Swedish-LCW/heavydutyoils_products_power-steering_mobil-atf-220.aspx">Mobil ATF 220</asp:HyperLink>
                                    </li>
                                </ul><% Response.Write((aL1_1_L2_2_L3_2.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(3,\"heavydutyoils_products_power-steering_mobil-atf-220.aspx\")</script>" : ""); %></asp:panel>
                        </ul><% Response.Write((aL1_1_L2_2.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(2,\"heavydutyoils_products_power-steering.aspx\")</script>" : ""); %></asp:panel>
                    <asp:panel visible="false" id="L1_1_L2_3" Runat="server">
                        <ul>
                            <li>
                                <asp:HyperLink runat="server" id="aL1_1_L2_3" NavigateUrl="/Sweden-Swedish-LCW/heavydutyoils_products_greases.aspx">fetter</asp:HyperLink>
                            </li>
                            <asp:panel visible="false" id="L1_1_L2_3_L3_1" Runat="server">
                                <ul>
                                    <li class="endpoint">
                                        <asp:HyperLink runat="server" id="aL1_1_L2_3_L3_1" NavigateUrl="/Sweden-Swedish-LCW/heavydutyoils_products_greases_mobil-grease-xhp-222.aspx">Mobilgrease XHP 222</asp:HyperLink>
                                    </li>
                                </ul><% Response.Write((aL1_1_L2_3_L3_1.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(3,\"heavydutyoils_products_greases_mobil-grease-xhp-222.aspx\")</script>" : ""); %></asp:panel>
                        </ul><% Response.Write((aL1_1_L2_3.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(2,\"heavydutyoils_products_greases.aspx\")</script>" : ""); %></asp:panel>
                    <asp:panel visible="false" id="L1_1_L2_4" Runat="server">
                        <ul>
                            <li>
                                <asp:HyperLink runat="server" id="aL1_1_L2_4" NavigateUrl="/Sweden-Swedish-LCW/heavydutyoils_products_rear-axle.aspx">bakaxelsm�rjmedel</asp:HyperLink>
                            </li>
                            <asp:panel visible="false" id="L1_1_L2_4_L3_1" Runat="server">
                                <ul>
                                    <li class="endpoint">
                                        <asp:HyperLink runat="server" id="aL1_1_L2_4_L3_1" NavigateUrl="/Sweden-Swedish-LCW/heavydutyoils_products_rear-axle_mobilube-1-shc-75w90.aspx">Mobilube 1 SHC 75W-90</asp:HyperLink>
                                    </li>
                                </ul><% Response.Write((aL1_1_L2_4_L3_1.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(3,\"heavydutyoils_products_rear-axle_mobilube-1-shc-75w90.aspx\")</script>" : ""); %></asp:panel>
                            <asp:panel visible="false" id="L1_1_L2_4_L3_2" Runat="server">
                                <ul>
                                    <li class="endpoint">
                                        <asp:HyperLink runat="server" id="aL1_1_L2_4_L3_2" NavigateUrl="/Sweden-Swedish-LCW/heavydutyoils_products_rear-axle_mobil-delvac-synthetic-gear-oil-75w90.aspx">Mobil Delvac 1 Gear Oil 75W-90</asp:HyperLink>
                                    </li>
                                </ul><% Response.Write((aL1_1_L2_4_L3_2.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(3,\"heavydutyoils_products_rear-axle_mobil-delvac-synthetic-gear-oil-75w90.aspx\")</script>" : ""); %></asp:panel>
                        </ul><% Response.Write((aL1_1_L2_4.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(2,\"heavydutyoils_products_rear-axle.aspx\")</script>" : ""); %></asp:panel>
                    <asp:panel visible="false" id="L1_1_L2_5" Runat="server">
                        <ul>
                            <li>
                                <asp:HyperLink runat="server" id="aL1_1_L2_5" NavigateUrl="/Sweden-Swedish-LCW/heavydutyoils_products_transmission.aspx">manuella och automatiska v�xell�dor</asp:HyperLink>
                            </li>
                            <asp:panel visible="false" id="L1_1_L2_5_L3_1" Runat="server">
                                <ul>
                                    <li class="endpoint">
                                        <asp:HyperLink runat="server" id="aL1_1_L2_5_L3_1" NavigateUrl="/Sweden-Swedish-LCW/heavydutyoils_products_transmission_mobil-delvac-synthetic-atf.aspx">Mobil Delvac 1 ATF</asp:HyperLink>
                                    </li>
                                </ul><% Response.Write((aL1_1_L2_5_L3_1.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(3,\"heavydutyoils_products_transmission_mobil-delvac-synthetic-atf.aspx\")</script>" : ""); %></asp:panel>
                            <asp:panel visible="false" id="L1_1_L2_5_L3_2" Runat="server">
                                <ul>
                                    <li class="endpoint">
                                        <asp:HyperLink runat="server" id="aL1_1_L2_5_L3_2" NavigateUrl="/Sweden-Swedish-LCW/heavydutyoils_products_transmission_mobilube-1-shc-75w90.aspx">Mobilube 1 SHC 75W-90</asp:HyperLink>
                                    </li>
                                </ul><% Response.Write((aL1_1_L2_5_L3_2.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(3,\"heavydutyoils_products_transmission_mobilube-1-shc-75w90.aspx\")</script>" : ""); %></asp:panel>
                        </ul><% Response.Write((aL1_1_L2_5.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(2,\"heavydutyoils_products_transmission.aspx\")</script>" : ""); %></asp:panel>
                </ul><% Response.Write((aL1_1.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(1,\"heavydutyoils_products.aspx\")</script>" : ""); %></asp:panel>
            <asp:panel visible="true" id="L1_2" Runat="server">
                <ul>
                    <li class="endpoint">
                        <asp:HyperLink runat="server" id="aL1_2" NavigateUrl="/Sweden-Swedish-LCW/heavydutyoils_mobil-delvac-product-selector.aspx">Mobil Delvac produktv�ljare</asp:HyperLink>
                    </li>
                </ul><% Response.Write((aL1_2.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(1,\"heavydutyoils_mobil-delvac-product-selector.aspx\")</script>" : ""); %></asp:panel>
            <asp:panel visible="true" id="L1_3" Runat="server">
                <ul>
                    <li>
                        <asp:HyperLink runat="server" id="aL1_3" NavigateUrl="/Sweden-Swedish-LCW/heavydutyoils_engine.aspx">Olja per fordonstillverkare</asp:HyperLink>
                    </li>
                    <asp:panel visible="false" id="L1_3_L2_1" Runat="server">
                        <ul>
                            <li class="endpoint">
                                <asp:HyperLink runat="server" id="aL1_3_L2_1" NavigateUrl="/Sweden-Swedish-LCW/heavydutyoils_engine_man-oil.aspx">MAN</asp:HyperLink>
                            </li>
                        </ul><% Response.Write((aL1_3_L2_1.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(2,\"heavydutyoils_engine_man-oil.aspx\")</script>" : ""); %></asp:panel>
                    <asp:panel visible="false" id="L1_3_L2_2" Runat="server">
                        <ul>
                            <li class="endpoint">
                                <asp:HyperLink runat="server" id="aL1_3_L2_2" NavigateUrl="/Sweden-Swedish-LCW/heavydutyoils_engine_mercedes-oil.aspx">Mercedes</asp:HyperLink>
                            </li>
                        </ul><% Response.Write((aL1_3_L2_2.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(2,\"heavydutyoils_engine_mercedes-oil.aspx\")</script>" : ""); %></asp:panel>
                    <asp:panel visible="false" id="L1_3_L2_3" Runat="server">
                        <ul>
                            <li class="endpoint">
                                <asp:HyperLink runat="server" id="aL1_3_L2_3" NavigateUrl="/Sweden-Swedish-LCW/heavydutyoils_engine_scania-oil.aspx">Scania</asp:HyperLink>
                            </li>
                        </ul><% Response.Write((aL1_3_L2_3.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(2,\"heavydutyoils_engine_scania-oil.aspx\")</script>" : ""); %></asp:panel>
                    <asp:panel visible="false" id="L1_3_L2_4" Runat="server">
                        <ul>
                            <li class="endpoint">
                                <asp:HyperLink runat="server" id="aL1_3_L2_4" NavigateUrl="/Sweden-Swedish-LCW/heavydutyoils_engine_volvo-oil.aspx">Volvo</asp:HyperLink>
                            </li>
                        </ul><% Response.Write((aL1_3_L2_4.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(2,\"heavydutyoils_engine_volvo-oil.aspx\")</script>" : ""); %></asp:panel>
                </ul><% Response.Write((aL1_3.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(1,\"heavydutyoils_engine.aspx\")</script>" : ""); %></asp:panel>
            <asp:panel visible="true" id="L1_4" Runat="server">
                <ul>
                    <li>
                        <asp:HyperLink runat="server" id="aL1_4" NavigateUrl="/Sweden-Swedish-LCW/heavydutyoils_why.aspx">varf�r Mobil Delvac</asp:HyperLink>
                    </li>
                    <asp:panel visible="false" id="L1_4_L2_1" Runat="server">
                        <ul>
                            <li class="endpoint">
                                <asp:HyperLink runat="server" id="aL1_4_L2_1" NavigateUrl="/Sweden-Swedish-LCW/heavydutyoils_why_fuel-economy.aspx">br�nsleekonomi</asp:HyperLink>
                            </li>
                        </ul><% Response.Write((aL1_4_L2_1.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(2,\"heavydutyoils_why_fuel-economy.aspx\")</script>" : ""); %></asp:panel>
                    <asp:panel visible="false" id="L1_4_L2_2" Runat="server">
                        <ul>
                            <li class="endpoint">
                                <asp:HyperLink runat="server" id="aL1_4_L2_2" NavigateUrl="/Sweden-Swedish-LCW/heavydutyoils_why_protection.aspx">skydd</asp:HyperLink>
                            </li>
                        </ul><% Response.Write((aL1_4_L2_2.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(2,\"heavydutyoils_why_protection.aspx\")</script>" : ""); %></asp:panel>
                    <asp:panel visible="false" id="L1_4_L2_3" Runat="server">
                        <ul>
                            <li class="endpoint">
                                <asp:HyperLink runat="server" id="aL1_4_L2_3" NavigateUrl="/Sweden-Swedish-LCW/heavydutyoils_why_emissions.aspx">utsl�pp</asp:HyperLink>
                            </li>
                        </ul><% Response.Write((aL1_4_L2_3.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(2,\"heavydutyoils_why_emissions.aspx\")</script>" : ""); %></asp:panel>
                    <asp:panel visible="false" id="L1_4_L2_4" Runat="server">
                        <ul>
                            <li class="endpoint">
                                <asp:HyperLink runat="server" id="aL1_4_L2_4" NavigateUrl="/Sweden-Swedish-LCW/heavydutyoils_why_synthetics.aspx">varf�r syntestiska sm�rjmedel</asp:HyperLink>
                            </li>
                        </ul><% Response.Write((aL1_4_L2_4.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(2,\"heavydutyoils_why_synthetics.aspx\")</script>" : ""); %></asp:panel>
                    <asp:panel visible="false" id="L1_4_L2_5" Runat="server">
                        <ul>
                            <li>
                                <asp:HyperLink runat="server" id="aL1_4_L2_5" NavigateUrl="/Sweden-Swedish-LCW/heavydutyoils_why_expert-insights.aspx">expertkunskaper</asp:HyperLink>
                            </li>
                            <asp:panel visible="false" id="L1_4_L2_5_L3_1" Runat="server">
                                <ul>
                                    <li class="endpoint">
                                        <asp:HyperLink runat="server" id="aL1_4_L2_5_L3_1" NavigateUrl="/Sweden-Swedish-LCW/heavydutyoils_why_expert-insights_road-transport-training-resources.aspx">expertkunskaper - RTTR</asp:HyperLink>
                                    </li>
                                </ul><% Response.Write((aL1_4_L2_5_L3_1.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(3,\"heavydutyoils_why_expert-insights_road-transport-training-resources.aspx\")</script>" : ""); %></asp:panel>
                            <asp:panel visible="false" id="L1_4_L2_5_L3_2" Runat="server">
                                <ul>
                                    <li class="endpoint">
                                        <asp:HyperLink runat="server" id="aL1_4_L2_5_L3_2" NavigateUrl="/Sweden-Swedish-LCW/heavydutyoils_why_expert-insights_petro-china.aspx">expertkunskaper - PetroChina</asp:HyperLink>
                                    </li>
                                </ul><% Response.Write((aL1_4_L2_5_L3_2.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(3,\"heavydutyoils_why_expert-insights_petro-china.aspx\")</script>" : ""); %></asp:panel>
                            <asp:panel visible="false" id="L1_4_L2_5_L3_3" Runat="server">
                                <ul>
                                    <li class="endpoint">
                                        <asp:HyperLink runat="server" id="aL1_4_L2_5_L3_3" NavigateUrl="/Sweden-Swedish-LCW/heavydutyoils_infographic.aspx">expertkunskaper - Mertz</asp:HyperLink>
                                    </li>
                                </ul><% Response.Write((aL1_4_L2_5_L3_3.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(3,\"heavydutyoils_infographic.aspx\")</script>" : ""); %></asp:panel>
                        </ul><% Response.Write((aL1_4_L2_5.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(2,\"heavydutyoils_why_expert-insights.aspx\")</script>" : ""); %></asp:panel>
                </ul><% Response.Write((aL1_4.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(1,\"heavydutyoils_why.aspx\")</script>" : ""); %></asp:panel>
            <asp:panel visible="true" id="L1_5" Runat="server">
                <ul>
                    <li>
                        <asp:HyperLink runat="server" id="aL1_5" NavigateUrl="/Sweden-Swedish-LCW/heavydutyoils_mobil-delvac-fuel-saving-millbrook.aspx">2,9 % br�nslebesparing</asp:HyperLink>
                    </li>
                    <asp:panel visible="false" id="L1_5_L2_1" Runat="server">
                        <ul>
                            <li class="endpoint">
                                <asp:HyperLink runat="server" id="aL1_5_L2_1" NavigateUrl="/Sweden-Swedish-LCW/heavydutyoils_mobil-delvac-fuel-saving.aspx">Mobil Delvac i Millbrook-test</asp:HyperLink>
                            </li>
                        </ul><% Response.Write((aL1_5_L2_1.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(2,\"heavydutyoils_mobil-delvac-fuel-saving.aspx\")</script>" : ""); %></asp:panel>
                    <asp:panel visible="false" id="L1_5_L2_2" Runat="server">
                        <ul>
                            <li class="endpoint">
                                <asp:HyperLink runat="server" id="aL1_5_L2_2" NavigateUrl="/Sweden-Swedish-LCW/heavydutyoils_mobil-delvac-fuel-economy.aspx">Mobil Delvac br�nsleekonomi</asp:HyperLink>
                            </li>
                        </ul><% Response.Write((aL1_5_L2_2.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(2,\"heavydutyoils_mobil-delvac-fuel-economy.aspx\")</script>" : ""); %></asp:panel>
                </ul><% Response.Write((aL1_5.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(1,\"heavydutyoils_mobil-delvac-fuel-saving-millbrook.aspx\")</script>" : ""); %></asp:panel>
            <asp:panel visible="true" id="L1_6" Runat="server">
                <ul>
                    <li class="endpoint">
                        <asp:HyperLink runat="server" id="aL1_6" NavigateUrl="/Sweden-Swedish-LCW/heavydutyoils_mobil-delvac-synthetic-atf-allison-tes-approved.aspx">Allison TES 295-godk�nd</asp:HyperLink>
                    </li>
                </ul><% Response.Write((aL1_6.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(1,\"heavydutyoils_mobil-delvac-synthetic-atf-allison-tes-approved.aspx\")</script>" : ""); %></asp:panel>
            <asp:panel visible="true" id="L1_7" Runat="server">
                <ul>
                    <li class="endpoint">
                        <asp:HyperLink runat="server" id="aL1_7" NavigateUrl="/Sweden-Swedish-LCW/heavydutyoils_mobil-delvac-resource-centre.aspx">resurscenter</asp:HyperLink>
                    </li>
                </ul><% Response.Write((aL1_7.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(1,\"heavydutyoils_mobil-delvac-resource-centre.aspx\")</script>" : ""); %></asp:panel>
            <asp:panel visible="true" id="L1_8" Runat="server">
                <ul>
                    <li class="endpoint">
                        <asp:HyperLink runat="server" id="aL1_8" NavigateUrl="/Sweden-Swedish-LCW/heavydutyoils_90-years.aspx">Mobil Delvac historik</asp:HyperLink>
                    </li>
                </ul><% Response.Write((aL1_8.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(1,\"heavydutyoils_90-years.aspx\")</script>" : ""); %></asp:panel>
            <asp:panel visible="true" id="L1_9" Runat="server">
                <ul>
                    <li class="endpoint">
                        <asp:HyperLink runat="server" id="aL1_9" NavigateUrl="/Sweden-Swedish-LCW/heavydutyoils_multimedia.aspx">multimedia</asp:HyperLink>
                    </li>
                </ul><% Response.Write((aL1_9.CssClass == "selected") ? "<script type=\"text/javascript\">addFallback(1,\"heavydutyoils_multimedia.aspx\")</script>" : ""); %></asp:panel>
            <div class="capBL">
                <div class="capBR"></div>
            </div>
        </div>
    </div>
</div>
