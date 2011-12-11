<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
<xsl:import href="ArtException.xsl"/>
<xsl:import href="ArtResponse.xsl"/>
<xsl:output method="html"
   doctype-public="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
   doctype-system="-//W3C//DTD XHTML 1.0 Strict//EN"
   omit-xml-declaration="yes" indent="yes" />
<!-- "ArtResponse" is called inherent -->
<xsl:template match="/RemoteBusinessOutputData">
	<xsl:apply-templates select="/RemoteBusinessOutputData/BusinessServiceExecutionInfo"/>
	<xsl:apply-templates select="/RemoteBusinessOutputData/BusinessInfo"/>
</xsl:template>
</xsl:stylesheet>
