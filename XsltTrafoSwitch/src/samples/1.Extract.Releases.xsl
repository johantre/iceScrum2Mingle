<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<!-- TODO: Auto-generated template -->
		<table>
		<xsl:for-each select="product/releases/release">
			<tr>
				<td>Number</td>
				<td>Name</td>
				<td>Description</td>
				<td>Type</td>
				<td>Depend on</td>
				<td>Roadmap</td>
				<td>Epic Story</td>
				<td>Feature</td>
				<td>Story</td>
				<td>Product</td>
				<td>Name</td>
				<td>Schedule</td>
				<td>Release</td>
				<td>Sprint</td>
				<td>Task</td>
				<td>Defect</td>
				<td>Status</td>
				<td>Story</td>
				<td>Points Dev</td>
				<td>Story Points QA</td>
				<td>Story Points Total</td>
			</tr>
			<tr>
				<td>#<xsl:value-of select="@id" /></td>
				<td><xsl:value-of select="name" /></td>
				<td><xsl:value-of select="description" /></td>
				<td>Release</td>
			</tr>
		</xsl:for-each>
		</table>		
		
		
	</xsl:template>
</xsl:stylesheet>