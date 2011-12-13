<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template name="fibonacci" >
<xsl:choose>
<xsl:when test="effort&lt; 0.5">0</xsl:when>
<xsl:when test="effort&lt; 1">0.5</xsl:when>
<xsl:when test="effort&lt; 2">1</xsl:when>
<xsl:when test="effort&lt; 3">2</xsl:when>
<xsl:when test="effort&lt; 4">3</xsl:when>
<xsl:when test="effort&lt; 5">4</xsl:when>
<xsl:when test="effort&lt; 8">5</xsl:when>
<xsl:when test="effort&lt; 13">8</xsl:when>
<xsl:when test="effort&lt; 20">13</xsl:when>
<xsl:when test="effort&lt; 40">20</xsl:when>
<xsl:when test="effort&lt; 100">40</xsl:when>
<xsl:when test="effort"></xsl:when>
<xsl:otherwise>100</xsl:otherwise>
</xsl:choose>
	</xsl:template>
</xsl:stylesheet>
