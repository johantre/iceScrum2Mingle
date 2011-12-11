<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<!-- TODO: Auto-generated template -->
		
<xsl:for-each select="product/releases/release">
Number|Name|Description|Type|Depend on|Roadmap|Epic Story|Feature|Story|Product|Name|Schedule|Release|Sprint|Task|Defect|Status|Story|Points Dev|Story Points QA|Story Points Total				
#<xsl:value-of select="@id" />|
<xsl:for-each select="sprints/sprint">#<xsl:value-of select="@id" />|<xsl:value-of select="goal" />|Sprint|
</xsl:for-each>
</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>