<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:import href="TeemProductsLeftHandNavEngine.xsl"/>

	<xsl:variable name="CategoryDefaultImage" select="'/images/lnav_arrow.gif'"/>
	<xsl:variable name="CategorySelectedImage" select="'/images/lnav_arrowselected.gif'"/>
	<xsl:variable name="CategoryChildSelectedImage" select="'/images/lnav_arrow_down_selected.gif'"/>

	<xsl:variable name="CategoryCellDefaultClass" select="'lnavBg'"/>
	<xsl:variable name="CategoryCellSelectedClass" select="'lnavBgSelected'"/>
	<xsl:variable name="CategoryLinkDefaultClass" select="'lnavItem'"/>
	<xsl:variable name="CategoryLinkSelectedClass" select="'lnavItemSelected'"/>
	
	<xsl:variable name="ItemCellDefaultClass" select="'lnavsubItem'"/>
	<xsl:variable name="ItemLinkChildSelectedClass" select="'lnavsubItemSection'"/>
	<xsl:variable name="ItemLinkSelectedClass" select="'lnavsubItemSelected'"/>
	<xsl:variable name="ItemLinkDefaultClass" select="'lnavsubItem'"/>
	
</xsl:stylesheet>