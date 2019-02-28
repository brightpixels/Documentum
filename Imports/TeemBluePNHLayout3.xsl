<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:output method = "xml" indent = "no"/>
	<xsl:strip-space  elements="*"/>

	<xsl:param name="desiredURL"/>
	
	<xsl:template match= "/">
		<xsl:apply-templates/>
	</xsl:template>

	<xsl:template match="Menu">
	
		<Navigation>
		
			<table width="180" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td colspan="2"><img src="/images/spacer.gif" width="1" height="10" border="0" /></td>
			</tr>
			<tr>
				<td><img src="/images/spacer.gif" width="10" height="1" border="0" /></td>
				<td class="hdr-blue"><xsl:value-of select="MenuMeta/Name"/><br /><br /></td>
			</tr>
			</table>
								
		</Navigation>
		
	</xsl:template>

</xsl:stylesheet>