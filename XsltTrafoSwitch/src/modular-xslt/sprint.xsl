<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:import href="story.xsl"/>
<xsl:import href="task.xsl"/>
<xsl:output method="text"/>
<xsl:template match="sprints">
<xsl:for-each select="sprint">"#<xsl:value-of select="@id" />"|"<xsl:value-of select="goal" />-<xsl:value-of select="@id" />"|""|"Sprint"|""|"no"|""|""|""|""|"yes"|"#<xsl:value-of select="../../@id" />"|""|""|""|""|""|""|"<xsl:value-of select="startDate" />"|"<xsl:value-of select="endDate" />"|""|""|""|""|""|""|""|""|""
<xsl:apply-templates select="stories"/>
<xsl:apply-templates select="tasks"/>
</xsl:for-each>
</xsl:template>
</xsl:stylesheet>