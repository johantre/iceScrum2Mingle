<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:include href="template-story.xsl"/>
<xsl:template name="sprint-story" >"#<xsl:value-of select="@id" />"|"<xsl:value-of select="name" />"|"<xsl:call-template name="template-story"/>"|"Story"|""|"yes"|""|""|""|"Switch"|"yes"|"#<xsl:value-of select="../../../../@id" />"|"#<xsl:value-of select="../../@id" />"|""|""|"<xsl:value-of select="effort" />"|""|""|""|""|"<xsl:if test="doneDate !=''">Accepted</xsl:if><xsl:if test="doneDate =''">In Development</xsl:if>"|""|"<xsl:value-of select="inProgressDate"/>"|"<xsl:value-of select="doneDate"/>"|"<xsl:value-of select="creationDate"/>"
</xsl:template>
<xsl:template name="product-story" >"#<xsl:value-of select="@id" />"|"<xsl:value-of select="name" />"|"<xsl:call-template name="template-story"/>"|"Story"|""|"yes"|""|""|""|"Switch"|"yes"|""|""|""|""|"<xsl:value-of select="effort" />"|""|""|"<xsl:value-of select="startDate" />"|"<xsl:value-of select="endDate" />"|"<xsl:if test="doneDate !=''">Accepted</xsl:if><xsl:if test="doneDate =''">In Product Backlog</xsl:if>"|""|"<xsl:value-of select="inProgressDate"/>"|"<xsl:value-of select="doneDate"/>"|"<xsl:value-of select="creationDate"/>"
</xsl:template>


</xsl:stylesheet>