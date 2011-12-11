<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="text"/>
<xsl:template match="sprint-tasks">
<xsl:for-each select="task">This was in fact a SPRINT-TASK line ++++++++
</xsl:for-each>
</xsl:template>
</xsl:stylesheet>
