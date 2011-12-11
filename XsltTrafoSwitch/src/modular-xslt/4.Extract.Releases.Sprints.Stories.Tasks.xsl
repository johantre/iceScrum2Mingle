<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
"Number"|"Name"|"Description"|"Type"|"Depend on"|"Roadmap"|"Epic Story"|"Feature"|"Story"|"Product Name"|"Schedule"|"Release"|"Sprint"|"Task"|"Defect"|"Story Points Dev"|"Story Points QA"|"Story Points Total"|"Start Date"|"End Date"|"Status"|"Task Status"|"acceptedDate"|"suggestedDate"|"estimatedDate"|"plannedDate"|"inProgressDate"|"doneDate"|"creationDate"<xsl:for-each select="product/releases/release">
"#<xsl:value-of select="@id" />"|"<xsl:value-of select="name" />"|"<xsl:value-of select="description" />"|"Release"|""|"no"|""|""|""|""|"yes"|""|""|""|""|""|""|""|"<xsl:value-of select="startDate" />"|"<xsl:value-of select="endDate" />"|""|""|""|""|""|""|""|""|""<xsl:for-each select="sprints/sprint">
"#<xsl:value-of select="@id" />"|"<xsl:value-of select="goal" />-<xsl:value-of select="@id" />"|""|"Sprint"|""|"no"|""|""|""|""|"yes"|"#<xsl:value-of select="../../@id" />"|""|""|""|""|""|""|"<xsl:value-of select="startDate" />"|"<xsl:value-of select="endDate" />"|""|""|""|""|""|""|""|""|""<xsl:for-each select="stories/story">
"#<xsl:value-of select="@id" />"|"<xsl:value-of select="name" />"|"h2. Narrative


As a <xsl:value-of select="textAs" /> I can <xsl:value-of select="textICan" /> to <xsl:value-of select="textTo" /> 

<xsl:value-of select="description" />
<xsl:value-of select="notes" />

h2. Related Stories


* #0


h2. Tasks


{{table query: SELECT Number, Name, Owner, 'Hours Remaining', 'Task Status' WHERE Type = Task and Story = THIS CARD}} 


h2. Defects


{{table query: SELECT Number, Name, Owner, 'Defect Status' WHERE Type = Defect and Story = THIS CARD}}"|"Story"|""|"yes"|""|""|""|"Switch"|"yes"|"#<xsl:value-of select="../../../../@id" />"|"#<xsl:value-of select="../../@id" />"|""|""|""|""|""|""|""|"<xsl:if test="doneDate !=''">Accepted</xsl:if><xsl:if test="doneDate =''">In Development</xsl:if>"|""|"<xsl:value-of select="acceptedDate"/>"|"<xsl:value-of select="suggestedDate"/>"|"<xsl:value-of select="estimatedDate"/>"|"<xsl:value-of select="plannedDate"/>"|"<xsl:value-of select="inProgressDate"/>"|"<xsl:value-of select="doneDate"/>"|"<xsl:value-of select="creationDate"/>"<xsl:for-each select="tasks/task">
"#<xsl:value-of select="@id" />"|"<xsl:value-of select="name" />"|"Description:<xsl:value-of select="description" /> Notes:<xsl:value-of select="notes" />"|"Task"|""|"no"|""|""|"#<xsl:value-of select="../../@id" />"|"Switch"|"yes"|"#<xsl:value-of select="../../../../../../@id" />"|"#<xsl:value-of select="../../../../@id" />"|""|""|""|""|""|""|""|""|"<xsl:if test="doneDate !=''">Done</xsl:if><xsl:if test="doneDate =''">New</xsl:if>"|""|""|""|""|"<xsl:value-of select="inProgressDate"/>"|"<xsl:value-of select="doneDate"/>"|"<xsl:value-of select="creationDate"/>"</xsl:for-each></xsl:for-each><xsl:for-each select="tasks/task">
"#<xsl:value-of select="@id" />"|"<xsl:value-of select="name" />"|"Description:<xsl:value-of select="description" /> Notes:<xsl:value-of select="notes" />"|"Task"|""|"no"|""|""|""|"Switch"|"yes"|"#<xsl:value-of select="../../../../@id" />"|"#<xsl:value-of select="../../@id" />"|""|""|""|""|""|""|""|""|"<xsl:if test="doneDate !=''">Done</xsl:if><xsl:if test="doneDate =''">New</xsl:if>"|""|""|""|""|"<xsl:value-of select="inProgressDate"/>"|"<xsl:value-of select="doneDate"/>"|"<xsl:value-of select="creationDate"/>"</xsl:for-each></xsl:for-each></xsl:for-each>
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


{{table query: SELECT Number, Name, Owner, 'Defect Status' WHERE Type = Defect and Story = THIS CARD}}"|"Story"|""|"yes"|""|""|""|"Switch"|"yes"|""|""|""|""|""|""|""|"<xsl:value-of select="startDate" />"|"<xsl:value-of select="endDate" />"|"<xsl:if test="doneDate !=''">Accepted</xsl:if><xsl:if test="doneDate =''">In Product Backlog</xsl:if>"|""|"<xsl:value-of select="acceptedDate"/>"|"<xsl:value-of select="suggestedDate"/>"|"<xsl:value-of select="estimatedDate"/>"|"<xsl:value-of select="plannedDate"/>"|"<xsl:value-of select="inProgressDate"/>"|"<xsl:value-of select="doneDate"/>"|"<xsl:value-of select="creationDate"/>"</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
