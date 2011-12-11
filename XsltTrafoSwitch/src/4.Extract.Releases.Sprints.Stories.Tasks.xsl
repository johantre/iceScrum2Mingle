<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
"Number"|"Name"|"Description"|"Type"|"Depend on"|"Roadmap"|"Epic Story"|"Feature"|"Story"|"Product Name"|"Schedule"|"Release"|"Sprint"|"Task"|"Defect"|"Story Points Dev"|"Story Points QA"|"Story Points Total"|"Start Date"|"End Date"|"Status"|"Task Status"<xsl:for-each select="product/releases/release">
"#<xsl:value-of select="@id" />"|"<xsl:value-of select="name" />"|"<xsl:value-of select="description" />"|"Release"|""|"no"|""|""|""|""|"yes"|""|""|""|""|""|""|""|"<xsl:value-of select="startDate" />"|"<xsl:value-of select="endDate" />"|""|""<xsl:for-each select="sprints/sprint">
"#<xsl:value-of select="@id" />"|"<xsl:value-of select="goal" />-<xsl:value-of select="@id" />"|""|"Sprint"|""|"no"|""|""|""|""|"yes"|"#<xsl:value-of select="../../@id" />"|""|""|""|""|""|""|"<xsl:value-of select="startDate" />"|"<xsl:value-of select="endDate" />"|""|""<xsl:for-each select="stories/story">
"#<xsl:value-of select="@id" />"|"<xsl:value-of select="name" />"|"h2. Narrative


As a <xsl:value-of select="textAs" /> I can <xsl:value-of select="textICan" /> to <xsl:value-of select="textTo" /> 

<xsl:value-of select="description" />
<xsl:value-of select="notes" />

h2. Related Stories


* #0


h2. Tasks


{{table query: SELECT Number, Name, Owner, 'Hours Remaining', 'Task Status' WHERE Type = Task and Story = THIS CARD}} 


h2. Defects


{{table query: SELECT Number, Name, Owner, 'Defect Status' WHERE Type = Defect and Story = THIS CARD}}"|"Story"|""|"yes"|""|""|""|"Switch"|"yes"|"#<xsl:value-of select="../../../../@id" />"|"#<xsl:value-of select="../../@id" />"|""|""|""|""|""|""|""|"<xsl:choose><xsl:when test="doneDate !=''">Accepted</xsl:when><xsl:otherwise>In Development</xsl:otherwise></xsl:choose>"|""<xsl:for-each select="tasks/task">
"#<xsl:value-of select="@id" />"|"<xsl:value-of select="name" />"|"Description:<xsl:value-of select="description" /> Notes:<xsl:value-of select="notes" />"|"Task"|""|"no"|""|""|"#<xsl:value-of select="../../@id" />"|"Switch"|"yes"|"#<xsl:value-of select="../../../../../../@id" />"|"#<xsl:value-of select="../../../../@id" />"|""|""|""|""|""|""|""|""|"<xsl:choose><xsl:when test="doneDate !=''">Done</xsl:when><xsl:otherwise>New</xsl:otherwise></xsl:choose>"</xsl:for-each></xsl:for-each><xsl:for-each select="tasks/task">
"#<xsl:value-of select="@id" />"|"<xsl:value-of select="name" />"|"Description:<xsl:value-of select="description" /> Notes:<xsl:value-of select="notes" />"|"Task"|""|"no"|""|""|""|"Switch"|"yes"|"#<xsl:value-of select="../../../../@id" />"|"#<xsl:value-of select="../../@id" />"|""|""|""|""|""|""|""|""|"<xsl:choose><xsl:when test="doneDate !=''">Done</xsl:when><xsl:otherwise>New</xsl:otherwise></xsl:choose>"</xsl:for-each></xsl:for-each></xsl:for-each>
<xsl:for-each select="product/stories/story">
"#<xsl:value-of select="@id" />"|"<xsl:value-of select="name" />"|"h2. Narrative


As a <xsl:value-of select="textAs" /> I can <xsl:value-of select="textICan" /> to <xsl:value-of select="textTo" /> 

<xsl:value-of select="description" />
<xsl:value-of select="notes" />

h2. Related Stories


* #0


h2. Tasks


{{table query: SELECT Number, Name, Owner, 'Hours Remaining', 'Task Status' WHERE Type = Task and Story = THIS CARD}} 


h2. Defects


{{table query: SELECT Number, Name, Owner, 'Defect Status' WHERE Type = Defect and Story = THIS CARD}}"|"Story"|""|"yes"|""|""|""|"Switch"|"yes"|""|""|""|""|""|""|""|"<xsl:value-of select="startDate" />"|"<xsl:value-of select="endDate" />"|"<xsl:choose><xsl:when test="doneDate !=''">Accepted</xsl:when><xsl:otherwise>In Product Backlog</xsl:otherwise></xsl:choose>"|""</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
