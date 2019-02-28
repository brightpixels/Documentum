<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:js="javascript:code">

	<xsl:output method = "xml" indent = "no"/>
	<xsl:strip-space  elements="*"/>

	<xsl:param name="desiredURL"/>
	
	<xsl:template match= "/">
		<xsl:apply-templates/>
	</xsl:template>

	<xsl:template match="Menu">
	
	<Navigation>
	
	<table width="760" border="0" cellpadding="0" cellspacing="0">
	
		 <xsl:text disable-output-escaping="yes" >
			<![CDATA[
			<!--stopindex-->
			<!--googleoff: index-->
			]]>
		</xsl:text>

 		<form name="frmRegionDropDown">
 			<tr>
				<td><xsl:apply-templates select="TopNavMeta/Link"/>
				</td>
				<td width="482">
				<img src="/images/spacer.gif" width="482" height="40" alt="" border="0" />
				</td>
				<td width="168" valign="middle" align="right">
		 <xsl:text disable-output-escaping="yes" >
			<![CDATA[
				<script language="JavaScript" >
				
					function setRegion()
					{
						var optionCounter;
						var current_url = new String();
						current_url = window.location.toString();
						var qryString = new String();
						var pos = current_url.indexOf("?");	
						var len = current_url.length;
					
						if (pos != -1) 
						{
							qryString = current_url.substring(pos+3,len);
	
						}
					
						if (qryString == "EUR")
						{
							document.frmRegionDropDown.Regions.options[4].selected = true;					
						}
					
						if (qryString == "AFR")
						{
							document.frmRegionDropDown.Regions.options[1].selected = true;					
						}
					
						if (qryString == "AMR")
						{
							document.frmRegionDropDown.Regions.options[2].selected = true;					
						}
					
						if (qryString == "APC")
						{
							document.frmRegionDropDown.Regions.options[3].selected = true;					
						}
					
					}//end function()


					function getRegion(regionValue)
					{
						var firstChar;
						
						firstChar = regionValue.substring(0,1);
						
						if ( "*" == firstChar )
						{
						
							window.open(regionValue.substring(1),
													'mywindow',
													'toolbar=yes,location=yes,directories=yes,status=yes,menubar=yes,scrollbars=yes,copyhistory=yes,resizable=yes'
													)
						}
						else
						{
							window.location.href = regionValue;
						}

					}
					
				</script>
			]]>
		</xsl:text>
				
					<select name="Regions"  onchange="getRegion(document.frmRegionDropDown.Regions.options[selectedIndex].value);">
						<option value="#" class="bold-text">Find a Country</option>
						<option value="*http://www.exxonmobil.com/Siteflow/Country/SF_CY_Argentina.asp" class="text">Argentina</option>
						<option value="*http://www.exxonmobil.com/Siteflow/Country/SF_CY_Australia.asp" class="text">Australia</option>
						<option value="*http://www.exxonmobil.com/Siteflow/Country/SF_CY_Belgium.asp" class="text">Belgium</option>
						<option value="*http://www.exxonmobil.com/Siteflow/Country/SF_CY_Brazil.asp" class="text">Brazil</option>
						<option value="*http://www.exxonmobil.com/Siteflow/Country/SF_CY_Canada.asp" class="text">Canada</option>
						<option value="*http://www.exxonmobil.com/Siteflow/Country/SF_CY_Chad.asp" class="text">Chad</option>
						<option value="*http://www.exxonmobil.com/Siteflow/Country/SF_CY_Chile.asp" class="text">Chile</option>
						<option value="*http://www.exxonmobil.com/Siteflow/Country/SF_CY_China.asp" class="text">China</option>
						<option value="*http://www.exxonmobil.com/Siteflow/Country/SF_CY_Colombia.asp" class="text">Colombia</option>
						<option value="*http://www.exxonmobil.com/siteflow/Country/SF_CY_CzechRepublic.asp" class="text">Czech Republic</option>
						<option value="*http://www.exxonmobil.com/Siteflow/Country/SF_CY_Ecuador.asp" class="text">Ecuador</option>
						<option value="*http://www.exxonmobil.com/siteflow/Country/SF_CY_France.asp" class="text">France</option>
						<option value="*http://www.exxonmobil.com/Siteflow/Country/SF_CY_Finland.asp" class="text">Finland</option>
						<option value="*http://www.exxonmobil.com/Siteflow/Country/SF_CY_Germany.asp" class="text">Germany</option>
						<option value="*http://www.exxonmobil.com/Siteflow/Country/SF_CY_Guyana.asp" class="text">Guyana</option>
						<option value="*http://www.exxonmobil.com/Siteflow/Country/SF_CY_Ireland.asp" class="text">Ireland</option>
						<option value="*http://www.exxonmobil.com/Siteflow/Country/SF_CY_Italy.asp" class="text">Italy</option>
						<option value="*http://www.exxonmobil.com/Siteflow/Country/SF_CY_Japan.asp" class="text">Japan</option>
						<option value="*http://www.exxonmobil.com/Siteflow/Country/SF_CY_Korea.asp" class="text">Korea</option>
						<option value="*http://www.exxonmobil.com/Siteflow/Country/SF_CY_Luxembourg.asp" class="text">Luxembourg</option>
						<option value="*http://www.exxonmobil.com/Siteflow/Country/SF_CY_Mexico.asp" class="text">Mexico</option>
						<option value="*http://www.exxonmobil.com/siteflow/Country/SF_CY_NewZealand.asp" class="text">New Zealand</option>
						<option value="*http://www.exxonmobil.com/Siteflow/Country/SF_CY_Norway.asp" class="text">Norway</option>
						<option value="*http://www.exxonmobil.com/siteflow/Country/SF_CY_Paraguay.asp" class="text">Paraguay</option>
						<option value="*http://www.exxonmobil.com/Siteflow/Country/SF_CY_Poland.asp" class="text">Poland</option>
						<option value="*http://www.exxonmobil.com/Siteflow/Country/SF_CY_Singapore.asp" class="text">Singapore</option>
						<option value="*http://www.exxonmobil.com/Siteflow/Country/SF_CY_Suriname.asp" class="text">Suriname</option>
						<option value="*http://www.exxonmobil.com/Siteflow/Country/SF_CY_Sweden.asp" class="text">Sweden</option>
						<option value="*http://www.exxonmobil.com/Siteflow/Country/SF_CY_Switzerland.asp" class="text">Switzerland</option>
						<option value="*http://www.exxonmobil.com/Siteflow/Country/SF_CY_Thailand.asp" class="text">Thailand</option>
						<option value="*http://www.exxonmobil.com/Siteflow/Country/SF_CY_Netherlands.asp" class="text">The Netherlands</option>
						<option value="*http://www.exxonmobil.com/Siteflow/Country/SF_CY_UnitedKingdom.asp" class="text">United Kingdom</option>
						<option value="*http://www.exxonmobil.com/Siteflow/Country/SF_CY_UnitedStates.asp" class="text">United States</option>
						<option value="#" class="text"></option>
						<option value="#" class="text-bold">Global Business Units</option>
						<option value="*http://www.exxonmobilaviation.com/" class="text">Aviation Fuels</option>
						<option value="*http://www.exxonmobil.com/lubes/aviation/" class="text">Aviation Lubricants</option>
						<option value="*http://www.exxonmobil.com/basestocks/" class="text">Basestocks</option>
						<option value="*http://www.exxonmobilchemical.com/" class="text">Chemicals</option>
						<option value="*http://www.exxonmobil.com/em_marine_fuels/" class="text">Marine Fuels</option>
						<option value="*http://www.exxonmobil.com/lubes/marine/index_flash.html" class="text">Marine Lubes</option>
					</select>
				</td>
				<td valign="top"><img src="/images/spacer.gif" width="10" height="40" alt="" border="0" /></td>
			</tr>
		</form>		
		</table>	

		
		<table width="760" border="0" cellpadding="0" cellspacing="0">
				<tr>
					
					<xsl:variable name="selectedCategory" select="TopNavMeta/Category"/>
				
					<xsl:choose>
						<xsl:when test="$selectedCategory = 'Products &amp; Services'">
							<td valign="middle" align="left" class="mobiltdNavSelected" width="160"><img src="/images/spacer.gif" width="12" height="1" alt="" border="0" /><a href="/USA-English/Lubes/Products_Services/Products_Services_Collection.asp" class="navItem">Products &amp; Services</a></td>				
						</xsl:when>
						<xsl:otherwise>
							<td valign="middle" align="left" class="mobiltdNav" width="160"><img src="/images/spacer.gif" width="12" height="1" alt="" border="0" /><a href="/USA-English/Lubes/Products_Services/Products_Services_Collection.asp" class="navItem">Products &amp; Services</a></td>					
						</xsl:otherwise>
					</xsl:choose>
				
					<xsl:choose>
						<xsl:when test="$selectedCategory = 'Our Company'">
							<td valign="middle" align="center" class="mobiltdNavSelected" width="140"><a class="navitem" href="http://www.exxonmobil.com/Corporate/Corp_OurCompany.asp" target="_new">Our Company</a></td>				
						</xsl:when>
						<xsl:otherwise>
							<td valign="middle" align="center" class="mobiltdNav" width="140"><a class="navitem" href="http://www.exxonmobil.com/Corporate/Corp_OurCompany.asp" target="_new">Our Company</a></td>				
						</xsl:otherwise>
					</xsl:choose>
					
					<xsl:choose>
						<xsl:when test="$selectedCategory = 'Your Industry'">
							<td valign="middle" align="center" class="mobiltdNavSelected" width="136"><a class="navitem" href="/USA-English/Lubes/Your_Industry/Your_Industry_Collection.asp">Your Industry</a></td>				
						</xsl:when>
						<xsl:otherwise>
							<td valign="middle" align="center" class="mobiltdNav" width="136"><a class="navitem" href="/USA-English/Lubes/Your_Industry/Your_Industry_Collection.asp">Your Industry</a></td>				
						</xsl:otherwise>
					</xsl:choose>
					
					<xsl:choose>
						<xsl:when test="$selectedCategory = 'How to Buy'">
							<td valign="middle" align="center" class="mobiltdNavSelected" width="126"><a class="navitem" href="/USA-English/GFM/How_to_Buy/Open_An_Account_Collection.asp">How to Buy</a></td>				
						</xsl:when>
						<xsl:otherwise>
							<td valign="middle" align="center" class="mobiltdNav" width="126"><a class="navitem" href="/USA-English/GFM/How_to_Buy/Open_An_Account_Collection.asp">How to Buy</a></td>				
						</xsl:otherwise>
					</xsl:choose>																			
					<td valign="middle" align="center" class="mobiltdNav" width="50"><img src="/images/spacer.gif" width="50" height="32" alt="" border="0" /></td>

		 <xsl:text disable-output-escaping="yes">
			<![CDATA[
			<script language="JavaScript">
			
			<!--***Function clearBox() is activated on the onClick event of the Search Input Box.****  -->
			<!--***This function clears the contents of the Search Input Box.****  -->
			<!--******************************************************************  -->
				function clearBox() 
				{
					document.frmSimpleSearch.q.value = "" ;
				}  //end clearBox()
				

	function MyExxonMobilLink()
	{
		var loc = location.host;
		
		if (loc == "www.dev.exxonmobil.com")
		{
			window.location.href = "http://portal.dev.exxonmobil.com";
		}
		
		else if (loc == "www.stage.exxonmobil.com")
		{
			window.location.href = "http://portal.stage.exxonmobil.com";
		}
		else 
		{
			window.location.href = "http://portal.exxonmobil.com";
		}
	}//end function MyExxonMobilLink

			</script>
			<script language="Javascript" src="/Imports/Checkinput.js"></script>
			]]>
	

		 </xsl:text>
			
			<form name="frmSimpleSearch" action="/Search/Search.aspx" method="get" onSubmit="javascript: return CheckInput('en')">
						<input type="Hidden" name="site" value="xom"/> 								<!-- REQUIRED: Collection to query -->
						<input type="Hidden" name="output" value="xml_no_dtd"/> 				<!-- REQUIRED: Format search results as XML results or custom HTML -->
						<input type="Hidden" name="client" value="default_frontend"/> 		<!-- REQUIRED: A string that indicates a valid front end -->
						<input type="Hidden" name="BCL" value=""/> 											<!-- CUSTOM: Display site-specific navigation -->
						<input type="Hidden" name="la" value="en"/> 											<!-- CUSTOM: Search interface language -->
						<input type="Hidden" name="km" value="global"/> 								<!-- CUSTOM: KeyMatch file name -->
						<input type="Hidden" name="show_km" value="y"/> 								<!-- CUSTOM: Show or not show KeyMatch results -->
						<input type="Hidden" name="css" value="mobil"/> 								<!-- CUSTOM: Specify CSS file -->
						<input type="Hidden" name="filter" value="0"/> 										<!-- Disable filter -->
						<input type="Hidden" name="ie" value="UTF-8"/> 						<!-- Input Encoding -->
						<input type="Hidden" name="oe" value="UTF-8"/> 						<!-- Output Encoding -->
						<input type="Hidden" name="lr" value="lang_en"/> 					<!-- Restricts searches to pages in the specified language -->
						<input type="Hidden" name="getfields" value="description"/>			<!-- To retrieve meta description -->
						<input type="Hidden" name="num" value="50"/>						<!-- Number of search results per page -->
						<input type="Hidden" name="entqr" value="1"/>						<!-- word stemming -->
			
				<td class="mobiltdNav" valign="middle" align="right" height="32" width="162">
					<input name="q" size="10" maxlength="50" value="Search for:" type="text" onClick="javascript: clearBox();" />
					<input type="image" src="/Images/b_search_arrow.gif" name="go" align="absmiddle" height="32" width="32" 		border="0" />
				</td>
	</form>

				</tr>
		</table>	
		<table width="760" cellpadding="0" cellspacing="0" border="0">
  		<tr>
    		<td valign="top"><img src="images/spacer.gif" width="1" height="3" alt="" border="0" /></td>
  		</tr>
		</table>

			<xsl:text disable-output-escaping="yes"><![CDATA[
				<!--startindex-->
				<!--googleon: index-->
			]]></xsl:text>		
		</Navigation>
		
	</xsl:template>

	<xsl:template match="Image">
	
		<xsl:variable name="width" select="following-sibling::ImageWidth"/>
		<xsl:variable name="height" select="following-sibling::ImageHeight"/>
		
		<img alt="" src="{.}" width="{$width}" height="{$height}" border="0" />
	
	</xsl:template>
	
	<xsl:template match="Link">
	
		<a href="{.}"><xsl:apply-templates select="preceding-sibling::Image"/></a>	
	
	</xsl:template>

	
</xsl:stylesheet>

