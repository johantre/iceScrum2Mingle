<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:import href="task.xsl"/>
<xsl:import href="template-story.xsl"/>
<xsl:output method="text"/>
<xsl:template match="stories">
<xsl:for-each select="story">
<xsl:choose>
<xsl:when test="../../../product">
"#<xsl:value-of select="@id" />"|"<xsl:value-of select="name" />"|"<xsl:call-template name="template-story"/>"|"Story"|""|"yes"|""|""|""|"Switch"|"yes"|""|""|""|""|"<xsl:value-of select="effort" />"|""|""|"<xsl:value-of select="startDate" />"|"<xsl:value-of select="endDate" />"|"<xsl:if test="doneDate !=''">Accepted</xsl:if><xsl:if test="doneDate =''">In Product Backlog</xsl:if>"|""|"<xsl:value-of select="inProgressDate"/>"|"<xsl:value-of select="doneDate"/>"|"<xsl:value-of select="creationDate"/>"</xsl:when>
<xsl:otherwise>
"#<xsl:value-of select="@id" />"|"<xsl:value-of select="name" />"|"<xsl:call-template name="template-story"/>"|"Story"|""|"yes"|""|""|""|"Switch"|"yes"|"#<xsl:value-of select="../../../../@id" />"|"#<xsl:value-of select="../../@id" />"|""|""|"<xsl:value-of select="effort" />"|""|""|""|""|"<xsl:if test="doneDate !=''">Accepted</xsl:if><xsl:if test="doneDate =''">In Development</xsl:if>"|""|"<xsl:value-of select="inProgressDate"/>"|"<xsl:value-of select="doneDate"/>"|"<xsl:value-of select="creationDate"/>"
</xsl:otherwise>
</xsl:choose>
<xsl:apply-templates select="tasks"/>
</xsl:for-each>
</xsl:template>
</xsl:stylesheet>
