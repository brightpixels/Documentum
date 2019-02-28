<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:output method = "xml" indent = "no"/>
	<xsl:strip-space  elements="*"/>

	<xsl:param name="desiredURL"/>
	
	<xsl:template match= "/">
		<xsl:apply-templates/>
	</xsl:template>

	<xsl:template match="Menu">
	
		<xsl:variable name="image" select="LeftNavImage"/>
	
		<Navigation>
		
			<table width="193" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td><img src="{$image}" width="193" height="72"/></td>
			</tr>
			</table>
		
		</Navigation>
		
	</xsl:template>


	
</xsl:stylesheet>