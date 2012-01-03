<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:import href="sprint.xsl"/>
<xsl:import href="template-release.xsl"/>
<xsl:template match="/product/releases">
<xsl:for-each select="release">
"#<xsl:value-of select="@id" />"^"<xsl:value-of select="name" />"^"<xsl:call-template name="template-release"/>"^"Release"^""^"no"^""^""^""^""^"yes"^""^""^""^""^""^""^""^"<xsl:value-of select="startDate" />"^"<xsl:value-of select="endDate" />"^""^""^""^""^""^""^""^"#16"
<xsl:apply-templates select="sprints"/>
</xsl:for-each>
</xsl:template>
</xsl:stylesheet>
