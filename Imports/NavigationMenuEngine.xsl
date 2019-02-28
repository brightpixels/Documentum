<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:import href="GetAncestorTree.xsl"/>

	<xsl:template name="GenerateMenu">
		<xsl:param name="menuElement"/>
		<xsl:param name="desiredURL"/>	
		
		<xsl:variable name="desiredPageTree" select="$menuElement//MenuItem[translate(@URL,'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz')=translate($desiredURL,'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz') and not(@Selectable = 'False') ]/ancestor-or-self::MenuItem"/>
		
		<xsl:choose>
			
			<!-- 
				We did not find the desired path URL so we need to rely on
				the directory structure of the filename given.
			-->
			
			
			
			<xsl:when test="count($desiredPageTree) = 0">
				<xsl:variable name="directoryMatchPage">
					<xsl:call-template name="FindDirectory">
						<xsl:with-param name="menuElement" select="$menuElement"/>
						<xsl:with-param name="directory" select="$desiredURL"/>
					</xsl:call-template>
				</xsl:variable>
				<xsl:call-template name="GenerateMenu">
					<xsl:with-param name="menuElement" select="$menuElement"/>
					<xsl:with-param name="desiredURL" select="$directoryMatchPage"/>
				</xsl:call-template>	
			</xsl:when>
			
			<!-- We were found in the directory structure -->
			<xsl:otherwise>
				<xsl:call-template name="NotifyMenuLevel_Begin">
					<xsl:with-param name="level" select="1"/>
				</xsl:call-template>									
				<xsl:call-template name="GenerateMenuItem">
					<xsl:with-param name="menuItemElements" select="$menuElement/MenuItem"/>
					<xsl:with-param name="level" select="1"/>
					<xsl:with-param name="maxLevel" select="count($desiredPageTree)"/>
					<xsl:with-param name="desiredPageTree" select="$desiredPageTree"/>
					<xsl:with-param name="menuElement" select="$menuElement"/>
				</xsl:call-template>	
				<xsl:call-template name="NotifyMenuLevel_End">
					<xsl:with-param name="level" select="1"/>
				</xsl:call-template>									
			</xsl:otherwise>
		</xsl:choose>

	</xsl:template>

	<xsl:template name="ConstructLayout"/>

	<xsl:template name="GenerateMenuItem">
		<xsl:param name="menuItemElements"/> 	
		<xsl:param name="level"/> 
		<xsl:param name="maxLevel"/> 		
		<xsl:param name="desiredPageTree"/>
		<xsl:param name="menuElement"/>
		
		<!--
			For each menu item that we have been passed, we will:
			
			1.  Check the ID of the current MenuItem against that of the next
					element in the desiredPageTree.
					
					1.1  If the IDs match
					
						1.1.1  Determine type of match
							
							1.1.1.1  Actual Selected Item
								
								1.1.1.1.1  Call NotifySelectedMenuItem

							1.1.1.2  Parent of Selected Item
							
								1.1.1.2.1	Call NotifyChildSelectedMenuItem
								1.1.1.2.2 Call DisplayMenuItem For Children
								
					1.2  If the IDs do not match
					
						1.2.1 Call NotifyUnselectedMenuItem
					
		-->
		
		<!-- 
			Determine from the desiredPageTree what the XSL ID for the desired
			Element is.  This is stored here so we dont have to compute it for 
			each iteration through the MenuItems
		-->

		
		<xsl:for-each select="$menuItemElements">
		
			<xsl:variable name="currentDesiredPageTreeID">
				<xsl:value-of select="generate-id($desiredPageTree[$level])"/>
			</xsl:variable>		
		
			<xsl:choose>
			
				<xsl:when test="generate-id(.) = $currentDesiredPageTreeID">
					<xsl:choose>
						<xsl:when test="$level = $maxLevel">
							
							<xsl:call-template name="NotifySelectedMenuItem">
								<xsl:with-param name="menuItem" select="."/>
								<xsl:with-param name="menuItemLevel" select="$level"/>
								<xsl:with-param name="menu" select="$menuElement"/>
							</xsl:call-template>
							
							
							<xsl:if test="count(MenuItem) > 0">
								<xsl:call-template name="NotifyMenuLevel_Begin">
									<xsl:with-param name="level" select="$level+1"/>
								</xsl:call-template>
								<xsl:call-template name="GenerateMenuItem">
									<xsl:with-param name="menuItemElements" select="MenuItem"/>
									<xsl:with-param name="level" select="$level + 1"/>
									<xsl:with-param name="maxLevel" select="$maxLevel"/>
									<xsl:with-param name="desiredPageTree" select="$desiredPageTree"/>
									<xsl:with-param name="menuElement" select="$menuElement"/>
								</xsl:call-template>		
								<xsl:call-template name="NotifyMenuLevel_End">
									<xsl:with-param name="level" select="$level+1"/>
								</xsl:call-template>													
							</xsl:if>
							
						</xsl:when>
						
						<xsl:otherwise>
							<xsl:call-template name="NotifyChildSelectedMenuItem">
								<xsl:with-param name="menuItem" select="."/>
								<xsl:with-param name="menuItemLevel" select="$level"/>
								<xsl:with-param name="menu" select="$menuElement"/>
							</xsl:call-template>
							<xsl:call-template name="NotifyMenuLevel_Begin">
								<xsl:with-param name="level" select="$level+1"/>
							</xsl:call-template>
							<xsl:call-template name="GenerateMenuItem">
								<xsl:with-param name="menuItemElements" select="MenuItem"/>
								<xsl:with-param name="level" select="$level + 1"/>
								<xsl:with-param name="maxLevel" select="$maxLevel"/>
								<xsl:with-param name="desiredPageTree" select="$desiredPageTree"/>
								<xsl:with-param name="menuElement" select="$menuElement"/>
							</xsl:call-template>							
							<xsl:call-template name="NotifyMenuLevel_End">
								<xsl:with-param name="level" select="$level+1"/>
							</xsl:call-template>									
						</xsl:otherwise>
					</xsl:choose>	
				</xsl:when>
			
				<xsl:otherwise>
					<xsl:call-template name="NotifyUnselectedMenuItem">
						<xsl:with-param name="menuItem" select="."/>
						<xsl:with-param name="menuItemLevel" select="$level"/>
						<xsl:with-param name="menu" select="$menuElement"/>
					</xsl:call-template>
				</xsl:otherwise>
			
			</xsl:choose>

		</xsl:for-each>
	
	</xsl:template>



</xsl:stylesheet>
