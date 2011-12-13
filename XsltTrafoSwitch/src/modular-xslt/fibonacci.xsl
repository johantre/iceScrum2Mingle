<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">



		<xsl:choose>
		    <xsl:when test="effort&'1'">
		      <xsl:value-of select="string('Warehouse 1')"/>
		  </xsl:when>
		    <xsl:when test="/se:invoke/se:addressTypeIndicator='2'">
		      <xsl:value-of select="string('Warehouse 2')"/>
		  </xsl:when>
		    <xsl:otherwise>
		      <xsl:value-of select="string('default location')"/>
		  </xsl:otherwise>
		</xsl:choose>

	</xsl:template>
</xsl:stylesheet>


0.0
0.5
1
2
3
4.0
5
8
13
20.0
21
40.0
100