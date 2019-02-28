<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:import href="NavigationMenuEngine1.xsl"/>
	
	<xsl:output method = "xml" indent = "yes"/>
	<xsl:strip-space  elements="*"/>

	<xsl:param name="desiredURL" select="'/cat1/category1.asp'"/>

	<xsl:template match= "/">
		<xsl:apply-templates/>
	</xsl:template>

	<xsl:template match="Menu">
				
				<Navigation>
				<xsl:text disable-output-escaping="yes"><![CDATA[
			<!--googleoff: index-->
			]]></xsl:text>
					<table width="180" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td bgcolor="#CCCCCC"><img src="/images/spacer.gif" width="180" height="1" /></td>
					</tr>				
					
						<xsl:call-template name="GenerateMenu">
							<xsl:with-param name="menuElement" select="."/>
							<xsl:with-param name="desiredURL" select="$desiredURL"/>
						</xsl:call-template>			

					</table>	
					
					<br/>
			<xsl:text disable-output-escaping="yes"><![CDATA[
			<!--googleon: index-->
			]]></xsl:text>

			</Navigation>
	
	</xsl:template>

	<xsl:template name="NotifySelectedMenuItem">
		<xsl:param name="menuItem"/>
		<xsl:param name="menuItemLevel"/>
		<xsl:param name="menu"/>

		<xsl:choose>
		
			<!-- We are a category for this layout -->
			<xsl:when test="$menuItemLevel = 1">
				<xsl:call-template name="DisplayCategoryItem">
					<xsl:with-param name="categoryURL" select="$menuItem/@URL"/>
					<xsl:with-param name="categoryName" select="$menuItem/@DisplayName"/>
					<xsl:with-param name="categoryImage" select="$CategorySelectedImage"/>
					<xsl:with-param name="categoryCellClass" select="$CategoryCellSelectedClass"/>
					<xsl:with-param name="categoryLinkClass" select="$CategoryLinkSelectedClass"/>
					<xsl:with-param name="newWindow" select="$menuItem/@NewWindow"/>					
				</xsl:call-template>			
			</xsl:when>
			
			<!-- We are everything else -->
			<xsl:otherwise>
				<xsl:call-template name="DisplayMenuItem">
					<xsl:with-param name="itemURL" select="$menuItem/@URL"/>
					<xsl:with-param name="itemName" select="$menuItem/@DisplayName"/>
					<xsl:with-param name="itemCellClass" select="$ItemCellDefaultClass"/>
					<xsl:with-param name="itemLinkClass" select="$ItemLinkSelectedClass"/>
					<xsl:with-param name="level" select="$menuItemLevel"/>
					<xsl:with-param name="newWindow" select="$menuItem/@NewWindow"/>					
				</xsl:call-template>			
			</xsl:otherwise>
		
		</xsl:choose>
	
	</xsl:template>

	<xsl:template name="NotifyChildSelectedMenuItem">
		<xsl:param name="menuItem"/>
		<xsl:param name="menuItemLevel"/>
		<xsl:param name="menu"/>

		<xsl:choose>
			
			<!-- We are the Category Heading for this Layout -->
			<xsl:when test="$menuItemLevel = 1">
				<xsl:call-template name="DisplayCategoryItem">
					<xsl:with-param name="categoryURL" select="$menuItem/@URL"/>
					<xsl:with-param name="categoryName" select="$menuItem/@DisplayName"/>
					<xsl:with-param name="categoryImage" select="$CategoryChildSelectedImage"/>
					<xsl:with-param name="categoryCellClass" select="$CategoryCellSelectedClass"/>
					<xsl:with-param name="categoryLinkClass" select="$CategoryLinkSelectedClass"/>
					<xsl:with-param name="newWindow" select="$menuItem/@NewWindow"/>					
				</xsl:call-template>		
			</xsl:when>
		
			<!-- We are everything but a category heading -->
			<xsl:otherwise>
				<xsl:call-template name="DisplayMenuItem">
					<xsl:with-param name="itemURL" select="$menuItem/@URL"/>
					<xsl:with-param name="itemName" select="$menuItem/@DisplayName"/>
					<xsl:with-param name="itemCellClass" select="$ItemCellDefaultClass"/>
					<xsl:with-param name="itemLinkClass" select="$ItemLinkChildSelectedClass"/>
					<xsl:with-param name="level" select="$menuItemLevel"/>
					<xsl:with-param name="newWindow" select="$menuItem/@NewWindow"/>					
				</xsl:call-template>			
			</xsl:otherwise>
		
		</xsl:choose>
	
	</xsl:template>
	
	<xsl:template name="NotifyUnselectedMenuItem">
		<xsl:param name="menuItem"/>
		<xsl:param name="menuItemLevel"/>
		<xsl:param name="menu"/>

		<xsl:choose>
		
			<!-- We are a Category for this layout -->
			<xsl:when test="$menuItemLevel = 1">
				<xsl:call-template name="DisplayCategoryItem">
					<xsl:with-param name="categoryURL" select="$menuItem/@URL"/>
					<xsl:with-param name="categoryName" select="$menuItem/@DisplayName"/>
					<xsl:with-param name="categoryImage" select="$CategoryDefaultImage"/>
					<xsl:with-param name="categoryCellClass" select="$CategoryCellDefaultClass"/>
					<xsl:with-param name="categoryLinkClass" select="$CategoryLinkDefaultClass"/>
					<xsl:with-param name="newWindow" select="$menuItem/@NewWindow"/>
				</xsl:call-template>		
			</xsl:when>
			
			<!-- Everything else -->
			<xsl:otherwise>
				<xsl:call-template name="DisplayMenuItem">
					<xsl:with-param name="itemURL" select="$menuItem/@URL"/>
					<xsl:with-param name="itemName" select="$menuItem/@DisplayName"/>
					<xsl:with-param name="itemCellClass" select="$ItemCellDefaultClass"/>
					<xsl:with-param name="itemLinkClass" select="$ItemLinkDefaultClass"/>
					<xsl:with-param name="level" select="$menuItemLevel"/>
					<xsl:with-param name="newWindow" select="$menuItem/@NewWindow"/>
				</xsl:call-template>			
			</xsl:otherwise>
		
		</xsl:choose>
	
	</xsl:template>	


	<xsl:template name="NotifyMenuLevel_Begin">
		<xsl:param name="level"/>
	
		<xsl:if test="number($level) != 1">

				<xsl:text disable-output-escaping="yes">
					<![CDATA[
					
							<tr>
								<td>
									<table border="0" cellpadding="0" cellspacing="0">
									<tr>
										<td><img src="/images/spacer.gif" width="20" height="4" /></td>
										<td>				
											<table border="0" cellpadding="0" cellspacing="0">
					]]>
				</xsl:text>			

		</xsl:if>

	</xsl:template>

	<xsl:template name="NotifyMenuLevel_End">
		<xsl:param name="level"/>
	

			<xsl:choose>
			
				<!-- If level one, do nothing -->
				<xsl:when test="number($level) = 1"></xsl:when>
			
				<xsl:when test="number($level) = 2">
					<xsl:text disable-output-escaping="yes">		
						<![CDATA[
						
											</table>
										</td>
									</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td bgcolor="#CCCCCC"><img src="/images/spacer.gif" width="180" height="1" /></td>
							</tr>
							
						]]>	
					</xsl:text>					
				</xsl:when>
				
				<xsl:otherwise>
				
					<xsl:text disable-output-escaping="yes">		
						<![CDATA[
						
											</table>
										</td>
									</tr>
									</table>
								</td>
							</tr>
							
						]]>	
					</xsl:text>					
				
				</xsl:otherwise>
			</xsl:choose>

		


	</xsl:template>


	<xsl:template name="DisplayCategoryItem">
		<xsl:param name="categoryURL"/>
		<xsl:param name="categoryName"/>
		<xsl:param name="categoryImage"/>
		<xsl:param name="categoryCellClass"/>
		<xsl:param name="categoryLinkClass"/>
		<xsl:param name="newWindow"/>
	
		<!-- The code on this page is on one line to allow for proper HTML layouts in IE -->
		<!-- So dont try to space it out since it will break HTML -->
	
		<tr>
			<td class="{$categoryCellClass}">
				<table border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td><img src="/images/spacer.gif" width="7" height="1" /></td>				
					<td valign="top"><img src="{$categoryImage}" width="6" height="14" alt="" border="0" /></td>
					<td><img src="/images/spacer.gif" width="5" height="1" /></td>
					<td width="154" valign="top"><xsl:choose><xsl:when test="$newWindow='True'"><a href="{$categoryURL}" class="{$categoryLinkClass}" target="_new"><xsl:value-of select="translate($categoryName,'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')"/></a></xsl:when><xsl:otherwise><a href="{$categoryURL}" class="{$categoryLinkClass}"><xsl:value-of select="translate($categoryName,'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')"/></a></xsl:otherwise></xsl:choose></td>
				</tr>
				</table>
			</td>
		</tr>	
		<tr>
			<td bgcolor="#CCCCCC"><img src="/images/spacer.gif" width="180" height="1" /></td>
		</tr>	

	</xsl:template>

	<xsl:template name="DisplayMenuItem">
		<xsl:param name="itemName"/>
		<xsl:param name="itemURL"/>
		<xsl:param name="itemCellClass"/>
		<xsl:param name="itemLinkClass"/>
		<xsl:param name="level"/>
		<xsl:param name="newWindow"/>
	
		<tr>
			<td class="{$itemCellClass}" valign="top">
				<xsl:choose>
					<xsl:when test="$newWindow='True'">
						<a href="{$itemURL}" class="{$itemLinkClass}" target="_new"><xsl:value-of select="$itemName"/></a>
					</xsl:when>
					<xsl:otherwise>
						<a href="{$itemURL}" class="{$itemLinkClass}"><xsl:value-of select="$itemName"/></a>					
					</xsl:otherwise>
				</xsl:choose>	
			</td>
		</tr>	
	
	</xsl:template>

</xsl:stylesheet>
