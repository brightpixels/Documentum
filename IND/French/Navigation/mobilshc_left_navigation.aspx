
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
		} if(FW=="syntheticbenefits"){
aL1_1.CssClass="selected"; 
} if(FW=="syntheticsforyourindustry"){
aL1_2.CssClass="selected"; 
} if(FW=="syntheticproducts"){
L1_3_L2_1.Visible=true; 
aL1_3.CssClass="selected"; 
} if(SW=="mobil-shc-600"){
aL1_3_L2_1.CssClass="selected"; 
} if(FW=="syntheticproducts"){
L1_3_L2_2.Visible=true; 
aL1_3.CssClass="selected"; 
} if(SW=="mobil-shc-gear"){
aL1_3_L2_2.CssClass="selected"; 
} if(FW=="syntheticproducts"){
L1_3_L2_3.Visible=true; 
aL1_3.CssClass="selected"; 
} if(SW=="mobil-shc-gear-oh"){
aL1_3_L2_3.CssClass="selected"; 
} if(FW=="nextgeneration"){
aL1_4.CssClass="selected"; 

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
			<a xmlns:xalan-nodeset="org.apache.xalan.xslt.extensions.Nodeset" xmlns:java="http://xml.apache.org/xslt/java" xmlns:fo="http://www.w3.org/1999/XSL/Format" href="#mainContent" class="skip">Skip to Main Content</a><div xmlns:xalan-nodeset="org.apache.xalan.xslt.extensions.Nodeset" xmlns:java="http://xml.apache.org/xslt/java" xmlns:fo="http://www.w3.org/1999/XSL/Format" id="sideBar" class="clrfix"><div class="subnav"><div class="subL"><div class="subR"><div class="capTL"><div class="capTR"></div></div><asp:panel id="L1_1" Runat="server" visible="true"><ul><li class="endpoint"><asp:HyperLink id="aL1_1"  runat="server" NavigateUrl="mobilshc_syntheticbenefits.aspx">les avantages li�s � l&rsquo;emploi des synth�tiques</asp:HyperLink></li></ul></asp:panel><asp:panel id="L1_2" Runat="server" visible="true"><ul><li class="endpoint"><asp:HyperLink id="aL1_2"  runat="server" NavigateUrl="mobilshc_syntheticsforyourindustry.aspx">la gamme des synth�tiques adapt�e � votre activit�</asp:HyperLink></li></ul></asp:panel><asp:panel id="L1_3" Runat="server" visible="true"><ul><li><asp:HyperLink id="aL1_3"  runat="server" NavigateUrl="mobilshc_syntheticproducts.aspx">les lubrifiants synth�tiques</asp:HyperLink></li><asp:panel id="L1_3_L2_1" Runat="server" visible="false"><ul><li class="endpoint"><asp:HyperLink id="aL1_3_L2_1"  runat="server" NavigateUrl="mobilshc_syntheticproducts_mobil-shc-600.aspx">Mobil SHC 600</asp:HyperLink></li></ul></asp:panel><asp:panel id="L1_3_L2_2" Runat="server" visible="false"><ul><li class="endpoint"><asp:HyperLink id="aL1_3_L2_2"  runat="server" NavigateUrl="mobilshc_syntheticproducts_mobil-shc-gear.aspx">Mobil SHC Gear</asp:HyperLink></li></ul></asp:panel><asp:panel id="L1_3_L2_3" Runat="server" visible="false"><ul><li class="endpoint"><asp:HyperLink id="aL1_3_L2_3"  runat="server" NavigateUrl="mobilshc_syntheticproducts_mobil-shc-gear-oh.aspx">Mobil SHC Gear OH</asp:HyperLink></li></ul></asp:panel></ul></asp:panel><asp:panel id="L1_4" Runat="server" visible="true"><ul><li class="endpoint"><asp:HyperLink id="aL1_4"  runat="server" NavigateUrl="mobilshc_nextgeneration.aspx">Mobil SHC nouvelle g�n�ration</asp:HyperLink></li></ul></asp:panel><div class="capBL"><div class="capBR"></div></div></div></div></div><div class="quicklinks"><div class="headerbar"><h3 class="nolink">liens</h3></div><ul><li><a href="/IND/French/contactus.aspx">nous contacter</a></li><li><a href="/Apps/ILS/default.aspx">quelle huile?</a></li><li><a href="http://www.exxonmobil.com/pdssearch/search.aspx?chooseLanguage=fr">fiches techniques produits</a></li><li><a target="_new" href="http://www.msds.exxonmobil.com/psims/psims.aspx ">fiches de donn�es de s�curit�</a></li><li><a target="_new" href="http://www.distributorlocator.exxonmobil.com/distributorlocator/index.aspx">points de vente</a></li></ul></div>
<!--googleon: index-->
			<!--startindex-->
			</div>