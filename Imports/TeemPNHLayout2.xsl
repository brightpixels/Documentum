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
		
			<xsl:variable name="topLevel" select="MenuMeta/Name"/>
			
			<xsl:variable name="bottomLevel">
			
				<xsl:variable name="treeDepth" select="count($ancestorTree)"/>
			
				<xsl:choose>
					<xsl:when test="number($treeDepth) = 3">
						<xsl:value-of select="$ancestorTree[3]/@DisplayName"/>
					</xsl:when>
					<xsl:when test="number($treeDepth) = 4">
						<xsl:value-of select="$ancestorTree[2]/@DisplayName"/>
					</xsl:when>												
				</xsl:choose>

			</xsl:variable>
		
		
			<table width="180" border="0" cellpadding="0" cellspacing="0">
			 <tr>
			  <td rowspan="4"><img src="/images/spacer.gif" width="13" height="1" border="0" /></td>
				<td><img src="/images/spacer.gif" width="13" height="15" border="0" /></td>
			 </tr>
			 <tr>
			  <td class="worldwideName"><xsl:value-of select="$topLevel"/></td>
			 </tr>
			 <tr>
			  <td><img src="/images/spacer.gif" width="1" height="7" border="0" /></td>
			 </tr>
			 <tr>
			  <td class="hdr-blue"><xsl:value-of select="$bottomLevel"/></td>
			 </tr>
			</table>		
		

	
	</xsl:template>
	
</xsl:stylesheet>