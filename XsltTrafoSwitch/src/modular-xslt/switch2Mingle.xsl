<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
<xsl:import href="template-header.xsl"/>
<xsl:import href="release.xsl"/>
<xsl:import href="story.xsl"/>
<xsl:output method="text"/>
<xsl:template match="/">
<xsl:call-template name="template-header"/>
<xsl:apply-templates select="/product/releases"/>
<xsl:apply-templates select="/product/stories"/>
</xsl:template>
</xsl:stylesheet> 
