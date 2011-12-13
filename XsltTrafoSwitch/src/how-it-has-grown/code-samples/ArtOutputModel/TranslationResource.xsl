<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" >

	<xsl:template name="TECHSOL" >
		<xsl:choose>
			<xsl:when test="TECHSOL=1">VDSLmass</xsl:when> 
			<xsl:when test="TECHSOL =  2">ADSLISDN</xsl:when> 
			<xsl:when test="TECHSOL =  3">ADSLPSTN</xsl:when> 
			<xsl:when test="TECHSOL =  4">SDSL640KB</xsl:when> 
			<xsl:when test="TECHSOL =  5">SDSL1024KB</xsl:when> 
			<xsl:when test="TECHSOL =  6">SDSL1216KB</xsl:when> 
			<xsl:when test="TECHSOL =  7">SDSL2048KB</xsl:when> 
			<xsl:when test="TECHSOL =  8">SDSL2304KB</xsl:when> 
			<xsl:when test="TECHSOL =  9">VDSL-B1</xsl:when> 
			<xsl:when test="TECHSOL =  10">VDSL-B2</xsl:when>
			<xsl:when test="TECHSOL =  11">VDSL-B3</xsl:when>
			<xsl:when test="TECHSOL =  12">ADSL2+ ISDN TV</xsl:when>
			<xsl:when test="TECHSOL =  13">ADSL2+ PSTN TV</xsl:when>
			<xsl:when test="TECHSOL =  14">SDSL-1P</xsl:when>
			<xsl:when test="TECHSOL =  15">ADSL2+ PSTN Speed</xsl:when>
			<xsl:when test="TECHSOL =  16">ADSL2+ ISDN Speed</xsl:when>
			<xsl:when test="TECHSOL =  17"></xsl:when>
			<xsl:when test="TECHSOL =  18"></xsl:when>
			<xsl:when test="TECHSOL =  19"></xsl:when>
			<xsl:when test="TECHSOL =  20"></xsl:when>
			<xsl:when test="TECHSOL =  21"></xsl:when>
			<xsl:when test="TECHSOL =  22"></xsl:when>
			<xsl:when test="TECHSOL =  23"></xsl:when>
			<xsl:when test="TECHSOL =  24"></xsl:when>
			<xsl:when test="TECHSOL =  25"></xsl:when>
			<xsl:when test="TECHSOL =  26"></xsl:when>
			<xsl:when test="TECHSOL =  27"></xsl:when>
			<xsl:when test="TECHSOL =  28"></xsl:when>
			<xsl:when test="TECHSOL =  29"></xsl:when>
			<xsl:when test="TECHSOL =  30"></xsl:when>
			<xsl:otherwise>### </xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	
</xsl:stylesheet>

