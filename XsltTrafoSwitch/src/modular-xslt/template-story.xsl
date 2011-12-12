<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template name="template-story" >

h2. Narrative


As a <xsl:value-of select="textAs" /> I can <xsl:value-of select="textICan" /> to <xsl:value-of select="textTo" /> 

<xsl:value-of select="description" />
<xsl:value-of select="notes" />

h2. Related Stories


* #0


h2. Tasks


{{table query: SELECT Number, Name, Owner, 'Hours Remaining', 'Task Status' WHERE Type = Task and Story = THIS CARD}} 


h2. Defects


{{table query: SELECT Number, Name, Owner, 'Defect Status' WHERE Type = Defect and Story = THIS CARD}}

</xsl:template>
</xsl:stylesheet>