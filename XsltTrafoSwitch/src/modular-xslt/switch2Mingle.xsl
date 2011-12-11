<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
<xsl:import href="release.xsl"/>
<xsl:import href="story.xsl"/>
<xsl:output method="text"/>
<xsl:template match="/">
"Number"|"Name"|"Description"|"Type"|"Depend on"|"Roadmap"|"Epic Story"|"Feature"|"Story"|"Product Name"|"Schedule"|"Release"|"Sprint"|"Task"|"Defect"|"Story Points Dev"|"Story Points QA"|"Story Points Total"|"Start Date"|"End Date"|"Status"|"Task Status"|"acceptedDate"|"suggestedDate"|"estimatedDate"|"plannedDate"|"inProgressDate"|"doneDate"|"creationDate"
<xsl:apply-templates select="/product/releases"/>
<xsl:apply-templates select="/product/stories"/>
</xsl:template>
</xsl:stylesheet>