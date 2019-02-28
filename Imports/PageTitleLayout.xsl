<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:import href="GetAncestorTree.xsl"/>
	<xsl:output method = "xml" indent = "no"/>
	<xsl:strip-space  elements="*"/>

	<xsl:param name="desiredURL"/>
	
	<xsl:template match= "/">
		<xsl:apply-templates/>
	</xsl:template>

	<xsl:template match="Menu">
	
		<Navigation>
		
			<xsl:call-template name="GetAncestorTree">
				<xsl:with-param name="desiredURL" select="$desiredURL"/>
			</xsl:call-template>
		
		</Navigation>
		
	</xsl:template>
	

	<xsl:template name="ConstructLayout">
		<xsl:param name="ancestorTree"/>
			
				<xsl:variable name="treeDepth" select="count($ancestorTree)"/>
				<xsl:value-of select="$ancestorTree[$treeDepth]/@DisplayName"/>

	</xsl:template>
	
</xsl:stylesheet>