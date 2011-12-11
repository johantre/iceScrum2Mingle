<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:import href="task.xsl"/>
<xsl:output method="text"/>
<xsl:template match="stories">
<xsl:for-each select="story">
<xsl:choose>
<xsl:when test="../../../product">"#<xsl:value-of select="@id" />"|"<xsl:value-of select="name" />"|"h2. Narrative


As a <xsl:value-of select="textAs" /> I can <xsl:value-of select="textICan" /> to <xsl:value-of select="textTo" /> 

<xsl:value-of select="description" />
<xsl:value-of select="notes" />

h2. Related Stories


* #0


h2. Tasks


{{table query: SELECT Number, Name, Owner, 'Hours Remaining', 'Task Status' WHERE Type = Task and Story = THIS CARD}} 


h2. Defects


{{table query: SELECT Number, Name, Owner, 'Defect Status' WHERE Type = Defect and Story = THIS CARD}}"|"Story"|""|"yes"|""|""|""|"Switch"|"yes"|""|""|""|""|""|""|""|"<xsl:value-of select="startDate" />"|"<xsl:value-of select="endDate" />"|"<xsl:if test="doneDate !=''">Accepted</xsl:if><xsl:if test="doneDate =''">In Product Backlog</xsl:if>"|""|"<xsl:value-of select="acceptedDate"/>"|"<xsl:value-of select="suggestedDate"/>"|"<xsl:value-of select="estimatedDate"/>"|"<xsl:value-of select="plannedDate"/>"|"<xsl:value-of select="inProgressDate"/>"|"<xsl:value-of select="doneDate"/>"|"<xsl:value-of select="creationDate"/>"</xsl:when>
<xsl:otherwise>"#<xsl:value-of select="@id" />"|"<xsl:value-of select="name" />"|"h2. Narrative


As a <xsl:value-of select="textAs" /> I can <xsl:value-of select="textICan" /> to <xsl:value-of select="textTo" /> 

<xsl:value-of select="description" />
<xsl:value-of select="notes" />

h2. Related Stories


* #0


h2. Tasks


{{table query: SELECT Number, Name, Owner, 'Hours Remaining', 'Task Status' WHERE Type = Task and Story = THIS CARD}} 


h2. Defects


{{table query: SELECT Number, Name, Owner, 'Defect Status' WHERE Type = Defect and Story = THIS CARD}}"|"Story"|""|"yes"|""|""|""|"Switch"|"yes"|"#<xsl:value-of select="../../../../@id" />"|"#<xsl:value-of select="../../@id" />"|""|""|""|""|""|""|""|"<xsl:if test="doneDate !=''">Accepted</xsl:if><xsl:if test="doneDate =''">In Development</xsl:if>"|""|"<xsl:value-of select="acceptedDate"/>"|"<xsl:value-of select="suggestedDate"/>"|"<xsl:value-of select="estimatedDate"/>"|"<xsl:value-of select="plannedDate"/>"|"<xsl:value-of select="inProgressDate"/>"|"<xsl:value-of select="doneDate"/>"|"<xsl:value-of select="creationDate"/>"</xsl:otherwise>
</xsl:choose>
<xsl:apply-templates select="tasks"/>
</xsl:for-each>
</xsl:template>
</xsl:stylesheet>
