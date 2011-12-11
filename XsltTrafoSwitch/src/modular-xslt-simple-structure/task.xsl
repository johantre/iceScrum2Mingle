<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="text"/>
<xsl:template match="tasks">
<xsl:for-each select="task">
<xsl:choose>
	<xsl:when test="../../../sprint">SPRINT-TASK ID:<xsl:value-of select="@id" /> node its SPRINT ID=<xsl:value-of select="../../@id" /> -----
	</xsl:when>
	<xsl:otherwise>STORY-TASK ID:<xsl:value-of select="@id" /> node its STORY ID=<xsl:value-of select="../../@id" /> -----
	</xsl:otherwise>
</xsl:choose>
</xsl:for-each>

</xsl:template>

</xsl:stylesheet>
