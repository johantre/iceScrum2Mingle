<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="text"/>
<xsl:template match="tasks">
<xsl:for-each select="task">
<xsl:choose>
<xsl:when test="../../../sprint">"#<xsl:value-of select="@id" />"^"<xsl:value-of select="name" />"^"Description:<xsl:value-of select="description" /> Notes:<xsl:value-of select="notes" />"^"Task"^""^"no"^""^""^""^"Switch"^"yes"^"#<xsl:value-of select="../../../../@id" />"^"#<xsl:value-of select="../../@id" />"^""^""^""^""^""^""^""^""^"<xsl:if test="doneDate !=''">Done</xsl:if><xsl:if test="doneDate =''">New</xsl:if>"^"<xsl:value-of select="inProgressDate"/>"^"<xsl:value-of select="doneDate"/>"^"<xsl:value-of select="creationDate"/>"^"Int. HIGH"^""
</xsl:when>
<xsl:otherwise>"#<xsl:value-of select="@id" />"^"<xsl:value-of select="name" />"^"Description:<xsl:value-of select="description" /> Notes:<xsl:value-of select="notes" />"^"Task"^""^"no"^""^""^"#<xsl:value-of select="../../@id" />"^"Switch"^"yes"^"#<xsl:value-of select="../../../../../../@id" />"^"#<xsl:value-of select="../../../../@id" />"^""^""^""^""^""^""^""^""^"<xsl:if test="doneDate !=''">Done</xsl:if><xsl:if test="doneDate =''">New</xsl:if>"^"<xsl:value-of select="inProgressDate"/>"^"<xsl:value-of select="doneDate"/>"^"<xsl:value-of select="creationDate"/>"^"Int. HIGH"^""
</xsl:otherwise>
</xsl:choose>
</xsl:for-each>
</xsl:template>
</xsl:stylesheet>
