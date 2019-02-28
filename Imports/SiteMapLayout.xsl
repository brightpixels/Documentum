<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	
	<xsl:output method = "xml" indent = "no"/>
	
	<xsl:template match= "/">
		<xsl:apply-templates/>
	</xsl:template>

	<xsl:template match="Menu">
	
		<Navigation>
		
			<table width="100%" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td colspan="2" class="cnhdr-red14">
					<xsl:value-of select="SiteMapMeta/Name"/>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<img src="/images/spacer.gif" width="1" height="5" alt=""/>
				</td>
			</tr>						
	
			<xsl:apply-templates select="MenuItem" mode="Category"/>
			
			<tr>
				<td colspan="2">
					<img src="/images/spacer.gif" width="1" height="5" alt="" />
				</td>
			</tr>				
			</table>

		</Navigation>
		
	</xsl:template>
	
	<xsl:template match="MenuItem" mode="Category">
	
		<tr>
			<td width="15">
				<img src="/images/lnav_arrow.gif" width="6" height="14" alt="" border="0" />
			</td>
			<td>
				<xsl:choose>
					<xsl:when test="@NewWindow='True'">
						<a href="{@URL}" class="cnhdr-grey12" target="_new"><xsl:value-of select="@DisplayName"/></a>
					</xsl:when>
					<xsl:otherwise>
						<a href="{@URL}" class="cnhdr-grey12"><xsl:value-of select="@DisplayName"/></a>
					</xsl:otherwise>
				</xsl:choose>			
			</td>
		</tr>
		<tr>
			<td colspan="2"><img src="/images/spacer.gif" width="1" height="5" alt=""/></td>
		</tr>			
		
		<xsl:if test="count(MenuItem) &gt; 0">
			<tr>
				<td width="15"><img src="/images/spacer.gif" width="15" height="4" alt="" /></td>
				<td>				
					<table border="0" cellpadding="0" cellspacing="0">		
		
						<xsl:apply-templates select="MenuItem" mode="SubItem"/>
		
					</table>
				</td>
			</tr>	
			<tr>
				<td colspan="2"><img src="/images/spacer.gif" width="1" height="5" alt=""/></td>
			</tr>			
		</xsl:if>
		
		<tr>
			<td colspan="2"><img src="/images/spacer.gif" width="1" height="5" alt=""/></td>
		</tr>		

	</xsl:template>
	
	<xsl:template match="MenuItem" mode="SubItem">
	
	<!--
		<tr>
			<td colspan="2" class="lnavsubItem" valign="top">
				<xsl:choose>
					<xsl:when test="@NewWindow='True'">
						<a href="{@URL}" class="lnavsubItemSelected" target="_new"><xsl:value-of select="@DisplayName"/></a>
					</xsl:when>
					<xsl:otherwise>
						<a href="{@URL}" class="lnavsubItemSelected"><xsl:value-of select="@DisplayName"/></a>					
					</xsl:otherwise>
				</xsl:choose>	
			</td>
		</tr>
		-->
					

		<!-- WAI Sep 21, 2006 - Inserted a dash symbol for level3 sub menu item-->
		<tr>		
			<xsl:choose>       				
				<xsl:when test="name(../..)='Menu'">						
					<td colspan="2" class="lnavsubItem" valign="top">
						<xsl:choose>
							<xsl:when test="@NewWindow='True'">
								<a href="{@URL}" class="lnavsubItemSelected" target="_new"><xsl:value-of select="@DisplayName"/></a>
							</xsl:when>
							<xsl:otherwise>
								<a href="{@URL}" class="lnavsubItemSelected"><xsl:value-of select="@DisplayName"/></a>					
							</xsl:otherwise>
						</xsl:choose>	
					</td>
				</xsl:when>
				<xsl:otherwise>
					<td class="lnavsubItemSelected" valign="top">-<img src="/images/spacer.gif" width="4" height="1" alt="" /></td>
					<td class="lnavsubItem" valign="top">
						<xsl:choose>
							<xsl:when test="@NewWindow='True'">
								<a href="{@URL}" class="lnavsubItemSelected" target="_new"><xsl:value-of select="@DisplayName"/></a>
							</xsl:when>
							<xsl:otherwise>
								<a href="{@URL}" class="lnavsubItemSelected"><xsl:value-of select="@DisplayName"/></a>					
							</xsl:otherwise>
						</xsl:choose>	
					</td>
				</xsl:otherwise>
			</xsl:choose>				
		</tr>	
		
		<xsl:if test="count(MenuItem) &gt; 0">
			<tr>
				<td width="15"><img src="/images/spacer.gif" width="15" height="4" alt="" /></td>
				<td width="100%">				
					<table border="0" cellpadding="0" cellspacing="0">		
						<xsl:apply-templates select="MenuItem" mode="SubItem"/>
					</table>
				</td>
			</tr>			
		</xsl:if>	
	
	</xsl:template>
	
	

</xsl:stylesheet>