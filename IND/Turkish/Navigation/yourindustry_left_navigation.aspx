
	<%@ Import Namespace="System" %>
<%@ Import Namespace="System.Web" %>
<script language="C#" runat="server">

	public string urlpath1_sub= String.Empty;
	public string FW= String.Empty;
	public string SW= String.Empty;
	public string TW= String.Empty;
	public string FthW= String.Empty;
	public string urlpathMain= String.Empty;
	
	  void LoadPage(object sender, System.EventArgs e)
		{
			
			urlpathMain = Request.ServerVariables.Get("URL");
			urlpath1_sub= urlpathMain.Substring((urlpathMain.LastIndexOf("/")+1));
			urlpath1_sub= urlpath1_sub.ToLower();
			
			IEnumerator IEn = urlpath1_sub.GetEnumerator();
			Array a = Array.CreateInstance(typeof(char),urlpath1_sub.Length);
			IEn.Reset();
			IEn.MoveNext();
			for(int i = 0; i < urlpath1_sub.Length ; i++)
			{
				a.SetValue(IEn.Current,i);
				IEn.MoveNext();
			}
			
			char uc = '_';
			Array b = Array.CreateInstance(typeof(char),1);
			b.SetValue(uc,0);

			int j=0;
			for(int i = a.GetLowerBound(0);i <=a.GetUpperBound(0); i++)
			{
				if(a.GetValue(i).Equals(b.GetValue(0)))
					j++;
			}
			if(j==1)
				{
					FW = urlpath1_sub.Substring(urlpath1_sub.IndexOf("_")+1);
					FW = FW.Substring(0,(FW.Length-(FW.Substring(FW.IndexOf(".")).Length)));
				}
			else if(j==2)
				{
					FW = urlpath1_sub.Substring(urlpath1_sub.IndexOf("_")+1);
					SW = FW.Substring(FW.IndexOf("_")+1);
					FW =FW.Substring(0,(FW.Length-SW.Length)-1);
					SW = SW.Substring(0,(SW.Length-(SW.Substring(SW.IndexOf(".")).Length)));
				}
			else if(j==3)
				{
					FW = urlpath1_sub.Substring(urlpath1_sub.IndexOf("_")+1);
					SW = FW.Substring(FW.IndexOf("_")+1);
					TW= SW.Substring(SW.IndexOf("_")+1);
				
					FW =FW.Substring(0,(FW.Length-SW.Length)-1);
					SW = SW.Substring(0,(SW.Length-TW.Length)-1);
					TW = TW.Substring(0,(TW.Length-(TW.Substring(TW.IndexOf(".")).Length)));
				}
			else if(j==4)
				{
					FW = urlpath1_sub.Substring(urlpath1_sub.IndexOf("_")+1);
					SW = FW.Substring(FW.IndexOf("_")+1);
					TW= SW.Substring(SW.IndexOf("_")+1);
					FthW=TW.Substring(TW.IndexOf("_")+1);
				
					FW =FW.Substring(0,(FW.Length-SW.Length)-1);
					SW = SW.Substring(0,(SW.Length-TW.Length)-1);
					TW = TW .Substring(0,(TW .Length-FthW.Length)-1);
					FthW = FthW.Substring(0,(FthW.Length-(FthW.Substring(FthW.IndexOf(".")).Length)));	
				//}	
		} if(FW=="energy"){
aL1_1.CssClass="selected"; 
} if(FW=="energy"){
L1_1_L2_1.Visible=true; 
aL1_1.CssClass="selected"; 
} if(SW=="coal"){
aL1_1_L2_1.CssClass="selected"; 
} if(SW=="coal"){
aL1_1_L2_1.CssClass="selected"; 
} if(FW=="energy"){
L1_1_L2_2.Visible=true; 
aL1_1.CssClass="selected"; 
} if(SW=="gasturbines"){
aL1_1_L2_2.CssClass="selected"; 
} if(SW=="gasturbines"){
aL1_1_L2_2.CssClass="selected"; 
} if(FW=="energy"){
L1_1_L2_3.Visible=true; 
aL1_1.CssClass="selected"; 
} if(SW=="gasengine"){
aL1_1_L2_3.CssClass="selected"; 
} if(SW=="gasengine"){
aL1_1_L2_3.CssClass="selected"; 
} if(FW=="energy"){
L1_1_L2_4.Visible=true; 
aL1_1.CssClass="selected"; 
} if(SW=="oilandgas"){
aL1_1_L2_4.CssClass="selected"; 
} if(FW=="energy"){
L1_1_L2_5.Visible=true; 
aL1_1.CssClass="selected"; 
} if(SW=="nuclear"){
aL1_1_L2_5.CssClass="selected"; 
} if(SW=="nuclear"){
aL1_1_L2_5.CssClass="selected"; 
} if(FW=="energy"){
L1_1_L2_6.Visible=true; 
aL1_1.CssClass="selected"; 
} if(SW=="wind"){
aL1_1_L2_6.CssClass="selected"; 
} if(SW=="wind"){
aL1_1_L2_6.CssClass="selected"; 
} if(FW=="manufacturing"){
aL1_2.CssClass="selected"; 
} if(FW=="manufacturing"){
L1_2_L2_1.Visible=true; 
aL1_2.CssClass="selected"; 
} if(SW=="food"){
aL1_2_L2_1.CssClass="selected"; 
} if(SW=="food"){
L1_2_L2_1_L3_1.Visible=true; 
aL1_2_L2_1.CssClass="selected"; 
} if(TW=="bakery"){
aL1_2_L2_1_L3_1.CssClass="selected"; 
} if(TW=="bakery"){
aL1_2_L2_1_L3_1.CssClass="selected"; 
} if(SW=="food"){
L1_2_L2_1_L3_2.Visible=true; 
aL1_2_L2_1.CssClass="selected"; 
} if(TW=="dairy"){
aL1_2_L2_1_L3_2.CssClass="selected"; 
} if(TW=="dairy"){
aL1_2_L2_1_L3_2.CssClass="selected"; 
} if(SW=="food"){
L1_2_L2_1_L3_3.Visible=true; 
aL1_2_L2_1.CssClass="selected"; 
} if(TW=="meat"){
aL1_2_L2_1_L3_3.CssClass="selected"; 
} if(TW=="meat"){
aL1_2_L2_1_L3_3.CssClass="selected"; 
} if(FW=="manufacturing"){
L1_2_L2_2.Visible=true; 
aL1_2.CssClass="selected"; 
} if(SW=="plastics"){
aL1_2_L2_2.CssClass="selected"; 
} if(SW=="plastics"){
aL1_2_L2_2.CssClass="selected"; 
} if(FW=="manufacturing"){
L1_2_L2_3.Visible=true; 
aL1_2.CssClass="selected"; 
} if(SW=="machining"){
aL1_2_L2_3.CssClass="selected"; 
} if(SW=="machining"){
aL1_2_L2_3.CssClass="selected"; 
} if(FW=="mining"){
aL1_3.CssClass="selected"; 
} if(FW=="mining_offhighway"){
aL1_3.CssClass="selected"; 
} if(FW=="pulpandpaper"){
aL1_4.CssClass="selected"; 
} if(FW=="pulpandpaper"){
aL1_4.CssClass="selected"; 
} if(FW=="primarymetals"){
aL1_5.CssClass="selected"; 
} if(FW=="primarymetals"){
aL1_5.CssClass="selected"; 
} if(FW=="process"){
aL1_6.CssClass="selected"; 
} if(FW=="process"){
aL1_6.CssClass="selected"; 

			}
			
		
	}
				
		override protected void OnInit(EventArgs e)
		{
			//
			// CODEGEN: This call is required by the ASP.NET Web Form Designer.
			InitializeComponent();
			base.OnInit(e);
		}
		
		/// summary
		/// Required method for Designer support - do not modify
		/// the contents of this method with the code editor.
		/// summary
		private void InitializeComponent()
		{    
			this.Load += new System.EventHandler(this.LoadPage);
			HeaderLoadPage();

		}

</script>

		
			<!--stopindex-->
			<!--googleoff: index-->
			<a xmlns:xalan-nodeset="org.apache.xalan.xslt.extensions.Nodeset" xmlns:java="http://xml.apache.org/xslt/java" xmlns:fo="http://www.w3.org/1999/XSL/Format" href="#mainContent" class="skip">Skip to Main Content</a><div xmlns:xalan-nodeset="org.apache.xalan.xslt.extensions.Nodeset" xmlns:java="http://xml.apache.org/xslt/java" xmlns:fo="http://www.w3.org/1999/XSL/Format" id="sideBar" class="clrfix"><div class="subnav"><div class="subL"><div class="subR"><div class="capTL"><div class="capTR"></div></div><asp:panel id="L1_1" Runat="server" visible="true"><ul><li><asp:HyperLink id="aL1_1"  runat="server" NavigateUrl="yourindustry_energy.aspx">enerji</asp:HyperLink></li><asp:panel id="L1_1_L2_1" Runat="server" visible="false"><ul><li class="endpoint"><asp:HyperLink id="aL1_1_L2_1"  runat="server" NavigateUrl="yourindustry_energy_coal.aspx">k�m�r</asp:HyperLink></li></ul></asp:panel><asp:panel id="L1_1_L2_2" Runat="server" visible="false"><ul><li class="endpoint"><asp:HyperLink id="aL1_1_L2_2"  runat="server" NavigateUrl="yourindustry_energy_gasturbines.aspx">t�rbinler&#305;</asp:HyperLink></li></ul></asp:panel><asp:panel id="L1_1_L2_3" Runat="server" visible="false"><ul><li class="endpoint"><asp:HyperLink id="aL1_1_L2_3"  runat="server" NavigateUrl="yourindustry_energy_gasengine.aspx">gaz motoru</asp:HyperLink></li></ul></asp:panel><asp:panel id="L1_1_L2_4" Runat="server" visible="false"><ul><li class="endpoint"><asp:HyperLink id="aL1_1_L2_4"  runat="server" NavigateUrl="yourindustry_energy_oilandgas.aspx">ya&#287; ve gaz</asp:HyperLink></li></ul></asp:panel><asp:panel id="L1_1_L2_5" Runat="server" visible="false"><ul><li class="endpoint"><asp:HyperLink id="aL1_1_L2_5"  runat="server" NavigateUrl="yourindustry_energy_nuclear.aspx">n�kleer</asp:HyperLink></li></ul></asp:panel><asp:panel id="L1_1_L2_6" Runat="server" visible="false"><ul><li class="endpoint"><asp:HyperLink id="aL1_1_L2_6"  runat="server" NavigateUrl="yourindustry_energy_wind.aspx">r�zg�r</asp:HyperLink></li></ul></asp:panel></ul></asp:panel><asp:panel id="L1_2" Runat="server" visible="true"><ul><li><asp:HyperLink id="aL1_2"  runat="server" NavigateUrl="yourindustry_manufacturing.aspx">�retim</asp:HyperLink></li><asp:panel id="L1_2_L2_1" Runat="server" visible="false"><ul><li><asp:HyperLink id="aL1_2_L2_1"  runat="server" NavigateUrl="yourindustry_manufacturing_food.aspx">g&#305;da ve i�ecek</asp:HyperLink></li><asp:panel id="L1_2_L2_1_L3_1" Runat="server" visible="false"><ul><li class="endpoint"><asp:HyperLink id="aL1_2_L2_1_L3_1"  runat="server" NavigateUrl="yourindustry_manufacturing_food_bakery.aspx">unlu mamulleri</asp:HyperLink></li></ul></asp:panel><asp:panel id="L1_2_L2_1_L3_2" Runat="server" visible="false"><ul><li class="endpoint"><asp:HyperLink id="aL1_2_L2_1_L3_2"  runat="server" NavigateUrl="yourindustry_manufacturing_food_dairy.aspx">s�t �r�nleri i&#351;leme</asp:HyperLink></li></ul></asp:panel><asp:panel id="L1_2_L2_1_L3_3" Runat="server" visible="false"><ul><li class="endpoint"><asp:HyperLink id="aL1_2_L2_1_L3_3"  runat="server" NavigateUrl="yourindustry_manufacturing_food_meat.aspx">et i&#351;leme</asp:HyperLink></li></ul></asp:panel></ul></asp:panel><asp:panel id="L1_2_L2_2" Runat="server" visible="false"><ul><li class="endpoint"><asp:HyperLink id="aL1_2_L2_2"  runat="server" NavigateUrl="yourindustry_manufacturing_plastics.aspx">plastik</asp:HyperLink></li></ul></asp:panel><asp:panel id="L1_2_L2_3" Runat="server" visible="false"><ul><li class="endpoint"><asp:HyperLink id="aL1_2_L2_3"  runat="server" NavigateUrl="yourindustry_manufacturing_machining.aspx">tala&#351;l&#305; imalat</asp:HyperLink></li></ul></asp:panel></ul></asp:panel><asp:panel id="L1_3" Runat="server" visible="true"><ul><li class="endpoint"><asp:HyperLink id="aL1_3"  runat="server" NavigateUrl="yourindustry_mining_offhighway.aspx">madencilik/in&#351;aat</asp:HyperLink></li></ul></asp:panel><asp:panel id="L1_4" Runat="server" visible="true"><ul><li class="endpoint"><asp:HyperLink id="aL1_4"  runat="server" NavigateUrl="yourindustry_pulpandpaper.aspx">ka&#287;&#305;t hamuru ve ka&#287;&#305;t</asp:HyperLink></li></ul></asp:panel><asp:panel id="L1_5" Runat="server" visible="true"><ul><li class="endpoint"><asp:HyperLink id="aL1_5"  runat="server" NavigateUrl="yourindustry_primarymetals.aspx">demir�elik</asp:HyperLink></li></ul></asp:panel><asp:panel id="L1_6" Runat="server" visible="true"><ul><li class="endpoint"><asp:HyperLink id="aL1_6"  runat="server" NavigateUrl="yourindustry_process.aspx">proses</asp:HyperLink></li></ul></asp:panel><div class="capBL"><div class="capBR"></div></div></div></div></div><div class="quicklinks"><div class="headerbar"><h3 class="nolink">h&#305;zl&#305; linkler</h3></div><ul><li><a href="ourbusiness_events.aspx">etkinlik takvimi</a></li><li><a href="technicalresources_technical-topics.aspx">teknik konular</a></li><li>end�stri &#351;emalar&#305;</li><li>&nbsp;&nbsp;&nbsp;&nbsp;<a href="yourindustry_energy_wind_schematic.aspx">r�zgar t�rbini</a></li><li>&nbsp;&nbsp;&nbsp;&nbsp;<a href="yourindustry_energy_coal_schematic.aspx">k�m�r yak&#305;tl&#305; termik santral</a></li><li>&nbsp;&nbsp;&nbsp;&nbsp;<a href="yourindustry_pulpandpaper_plant_schematic.aspx">ka&#287;&#305;t hamuru ve ka&#287;&#305;t tesisi</a></li><li>&nbsp;&nbsp;&nbsp;&nbsp;<a href="yourindustry_manufacturing_machining_schematic.aspx">at�lyeler</a></li><li>&nbsp;&nbsp;&nbsp;&nbsp;<a href="yourindustry_energy_gasengine_gasschematic.aspx">gaz ve buhar t�rbinli</a></li><li><a href="yourindustry.aspx">daha fazla &#351;ema</a></li></ul></div>
<!--googleon: index-->
			<!--startindex-->
			</div>