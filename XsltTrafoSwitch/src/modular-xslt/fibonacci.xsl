<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template name="fibonacci" >
<xsl:choose>
<xsl:when test="effort&lt; 0.25">0</xsl:when>
<xsl:when test="effort&lt; 0.75">0.5</xsl:when>
<xsl:when test="effort&lt; 1.5">1</xsl:when>
<xsl:when test="effort&lt; 2.5">2</xsl:when>
<xsl:when test="effort&lt; 3.5">3</xsl:when>
<xsl:when test="effort&lt; 4.5">4</xsl:when>
<xsl:when test="effort&lt; 7">5</xsl:when>
<xsl:when test="effort&lt; 10.5">8</xsl:when>
<xsl:when test="effort&lt; 16.5">13</xsl:when>
<xsl:when test="effort&lt; 30">20</xsl:when>
<xsl:when test="effort&lt; 70">40</xsl:when>
<xsl:when test="effort"></xsl:when>
<xsl:otherwise>100</xsl:otherwise>
</xsl:choose>
	</xsl:template>
</xsl:stylesheet>
