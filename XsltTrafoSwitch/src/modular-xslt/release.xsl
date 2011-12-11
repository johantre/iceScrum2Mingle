<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:import href="sprint.xsl"/>
<xsl:output method="text"/>
<xsl:template match="/product/releases">
<xsl:for-each select="release">"#<xsl:value-of select="@id" />"|"<xsl:value-of select="name" />"|"<xsl:value-of select="description" />"|"Release"|""|"no"|""|""|""|""|"yes"|""|""|""|""|""|""|""|"<xsl:value-of select="startDate" />"|"<xsl:value-of select="endDate" />"|""|""|""|""|""|""|""|""|""
<xsl:apply-templates select="sprints"/>
</xsl:for-each>
</xsl:template>
</xsl:stylesheet>
