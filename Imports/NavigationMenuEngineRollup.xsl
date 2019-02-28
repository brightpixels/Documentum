<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:import href="GetAncestorTree.xsl"/>

	<xsl:template name="GenerateMenu">
		<xsl:param name="menuElement"/>
		<xsl:param name="desiredURL"/>	
		
		<!-- Checks if it can find the desiredURL in the list of iterating Menu Items 
		     This is where to start looking for a way to tell if an item is in a "GROUP" but no an item itself.  
		-->
		<xsl:variable name="desiredPageTree" select="$menuElement//MenuItem[translate(@URL,'ABCDEFGHIJKLMNOPQRSTUVWXYZÇ','abcdefghijklmnopqrstuvwxyzç')=translate($desiredURL,'ABCDEFGHIJKLMNOPQRSTUVWXYZÇ','abcdefghijklmnopqrstuvwxyzç') and not(@Selectable = 'False') ]/ancestor-or-self::MenuItem"/>
		
		<!-- Find if menu item is to be rolled up into parent -->
		<!-- All Items added to make the RollUp work were done with the ojective to touch as little of the original XSLT as possible 
		     this resulted in what may not be the cleanest or "slickest" implementation, but will result in the least amount of production risk 
		     Each section of coded add is marked with a comment of "ROLL UP ADD"  -->
		<xsl:variable name="desiredPageTreeRollUp" select="$menuElement//MenuItem[translate(@URL,'ABCDEFGHIJKLMNOPQRSTUVWXYZÇ','abcdefghijklmnopqrstuvwxyzç')=translate($desiredURL,'ABCDEFGHIJKLMNOPQRSTUVWXYZÇ','abcdefghijklmnopqrstuvwxyzç') and (@RollUp = 'True') ]/parent::MenuItem/@URL"/>
		
		
		<xsl:choose>
			
			<!-- 
				We did not find the desired path URL so we need to rely on
				the directory structure of the filename given.
			-->
			<!-- ROLL UP ADD, If it is rollup resubmit to the template with the desiredURL as the URL of the parent of the page selected -->
			<xsl:when test="count($desiredPageTreeRollUp) > 0">
				<xsl:call-template name="GenerateMenu">
					<xsl:with-param name="menuElement" select="$menuElement"/>
					<xsl:with-param name="desiredURL" select="$desiredPageTreeRollUp"/>
				</xsl:call-template>
			</xsl:when>	
			
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
		
			<!-- RollUp Add check if the item is a rollup, we do not want them in the menu system -->
			<xsl:variable name="rollUpFound" select="./@RollUp"/>
			
			<xsl:choose>
				<xsl:when test="$rollUpFound = 'True'">
				<!--  RollUp Add  Add a blank row to keep things correct, without this the menu skews to the side -->
					
				</xsl:when>
				
				<xsl:otherwise>
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
							
							<!-- Do not do items that are marked as "RollUp" -->
							<xsl:if test="count(MenuItem[not(@RollUp = 'True')]) > 0">
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
				</xsl:otherwise>
			</xsl:choose>


		</xsl:for-each>
	
	</xsl:template>



</xsl:stylesheet>
