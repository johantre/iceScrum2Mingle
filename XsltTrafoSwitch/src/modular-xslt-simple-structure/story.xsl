<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:import href="task.xsl"/>
<xsl:output method="text"/>
<xsl:template match="stories">
<xsl:for-each select="story">
this was a story line...|||
<xsl:apply-templates select="tasks"/>
</xsl:for-each>
</xsl:template>
</xsl:stylesheet>