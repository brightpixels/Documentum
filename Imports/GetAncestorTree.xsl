<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">


	<xsl:template name="GetAncestorTree">
		<xsl:param name="desiredURL"/>
		
			<xsl:variable name="ancestorTree" select="//MenuItem[translate(@URL,'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz')=translate($desiredURL,'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz') and not(@Selectable = 'False')]/ancestor-or-self::MenuItem"/>
		
			<xsl:choose>
				<xsl:when test="count($ancestorTree) = 0">
					<xsl:variable name="directoryMatchPage">
						<xsl:call-template name="FindDirectory">
							<xsl:with-param name="menuElement" select="."/>
							<xsl:with-param name="directory" select="$desiredURL"/>
						</xsl:call-template>
					</xsl:variable>	
					
					<xsl:call-template name="GetAncestorTree">
						<xsl:with-param name="desiredURL" select="$directoryMatchPage"/>
					</xsl:call-template>						
					
				</xsl:when>
				<xsl:otherwise>

					<xsl:call-template name="ConstructLayout">
						<xsl:with-param name="ancestorTree" select="$ancestorTree"/>
					</xsl:call-template>				

				</xsl:otherwise>
			</xsl:choose>

	</xsl:template>


	<!--
	
		FindDirectory
		
		Given the same structure as the Navigation, it will look for a Directory match
		based off the current directory position.  It will then return the URL of that page
	
	-->
	<xsl:template name="FindDirectory">
		<xsl:param name="menuElement" />
		<xsl:param name="directory" />	
		
		<xsl:variable name="DIRECTORY_SEPERATOR" select="'/'"/>	
	
		<xsl:choose>
			<xsl:when test="$directory = $DIRECTORY_SEPERATOR">
			
				<xsl:value-of select="$menuElement/MenuItem/@URL"/>
			
			</xsl:when>

			<xsl:otherwise>
	
				<!-- Split off last piece of directory listing -->
				<xsl:variable name="seperatorPos">
					<xsl:call-template name="FindLastPosition">
						<xsl:with-param name="value" select="$directory"/>
						<xsl:with-param name="key" select="$DIRECTORY_SEPERATOR"/>
					</xsl:call-template>
				</xsl:variable>				
								
				<xsl:choose>
					
					<xsl:when test="$seperatorPos > 0">
					
						<!-- Construct the Updated Path -->
						<xsl:variable name="updatedPath">
							<xsl:choose>	
								<xsl:when test="$seperatorPos = 1">
									<xsl:value-of select="$DIRECTORY_SEPERATOR"/>
								</xsl:when>
								<xsl:when test="$seperatorPos > 1">
									<xsl:value-of select="substring($directory,1,$seperatorPos - 1)"/>					
								</xsl:when>
							</xsl:choose>
						</xsl:variable>
					
						<!-- Find the MenuItem that matches this directory -->	
						<xsl:variable name="dirMatchElement" select="$menuElement//MenuItem[translate(@Directory,'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz')=translate($updatedPath,'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz') and not(@Selectable = 'False') ]"/>		
					
						<xsl:choose>
							<xsl:when test="$dirMatchElement/@Directory != ''">
								<xsl:value-of select="$dirMatchElement/@URL"/>
							</xsl:when>		
							<xsl:otherwise>
								<xsl:call-template name="FindDirectory">
									<xsl:with-param name="menuElement" select="$menuElement"/>
									<xsl:with-param name="directory" select="$updatedPath"/>
								</xsl:call-template>
							</xsl:otherwise>
						</xsl:choose>				
					
					</xsl:when>
					
					<!-- The character was not found, so prevent recurrsion, return first Items URL -->
					<xsl:otherwise>
						<xsl:value-of select="$menuElement/MenuItem/@URL"/>
					</xsl:otherwise>
					
				</xsl:choose>				
	
			</xsl:otherwise>
	
		</xsl:choose>
	
	</xsl:template>	


	<!--
	
		FindLastPosition
		
		Find and return the last occurance of a character within a string.
		
		value - The String to search through
		key - The character to search for.
		
		Returns the value of the key if found, or zero if not.
	
	-->
	<xsl:template name="FindLastPosition">
		<xsl:param name="value"/>
		<xsl:param name="key"/>
	
		<xsl:choose>
			
			<!-- Make sure we actually contain the value we are searching for. -->
			<xsl:when test="contains($value, $key)">
				<xsl:call-template name="FindLastPositionHelper">
					<xsl:with-param name="value" select="$value"/>
					<xsl:with-param name="key" select="$key"/>
					<xsl:with-param name="position" select="string-length($value)"/>
				</xsl:call-template>			
			</xsl:when>
			
			<!-- We do not contain the value -->
			<xsl:otherwise>
				<xsl:value-of select="0"/>
			</xsl:otherwise>
		
		</xsl:choose>
	
	</xsl:template>
	
	<!--
	
		FindLastPositionHelper
		
		A helper Template for finding the last position of a given string within another
		string.
		
		value - The String to search through
		key - The character we are looking for
		position - The position to look at.
		
		Returns the position of the last occurance.
	
	-->
	<xsl:template name="FindLastPositionHelper">
		<xsl:param name="value"/>
		<xsl:param name="key"/>
		<xsl:param name="position"/>
	
		<xsl:choose>
			
			<!-- Search the current position for the desired key value -->
			<xsl:when test="substring($value,$position,1) = $key">
				<xsl:value-of select="$position"/>
			</xsl:when>
		
			<!-- We did not find it so we need to keep looking -->
			<xsl:otherwise>
				<xsl:if test="$position != 1">
					<xsl:call-template name="FindLastPositionHelper">
						<xsl:with-param name="value" select="$value"/>
						<xsl:with-param name="key" select="$key"/>
						<xsl:with-param name="position" select="$position - 1"/>
					</xsl:call-template>				
				</xsl:if>
			</xsl:otherwise>
		
		</xsl:choose>
	
	</xsl:template>



</xsl:stylesheet>
