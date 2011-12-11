<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" >
	<xsl:template name="LDCXXX2LDC000_LENGTH" >
		<xsl:if test="string-length(normalize-space(./LDCXXX2LDC000_LENGTH)) !=  0" >
			L=<xsl:value-of select="LDCXXX2LDC000_LENGTH"/>m
		</xsl:if>
	</xsl:template>
	<xsl:template name="LDCXXX2LDC000_ATTENUATION" >
		<xsl:if test="string-length(normalize-space(./LDCXXX2LDC000_ATTENUATION)) !=  0" >
			<xsl:text disable-output-escaping="yes">&amp;</xsl:text>alpha;=<xsl:value-of select="LDCXXX2LDC000_ATTENUATION"/>dB
		</xsl:if>
	</xsl:template>

	<xsl:template name="SC22NEXT_LENGTH" >
		<xsl:if test="string-length(normalize-space(./SC22NEXT_LENGTH)) !=  0" >
			L=<xsl:value-of select="SC22NEXT_LENGTH"/>m
		</xsl:if>
	</xsl:template>
	<xsl:template name="SC22NEXT_ATTENUATION" >
		<xsl:if test="string-length(normalize-space(./SC22NEXT_ATTENUATION)) !=  0" >
			<xsl:text disable-output-escaping="yes">&amp;</xsl:text>alpha;=<xsl:value-of select="SC22NEXT_ATTENUATION"/>dB
		</xsl:if>
	</xsl:template>

	<xsl:template name="SC12NEXT_LENGTH" >
		<xsl:if test="string-length(normalize-space(./SC12NEXT_LENGTH)) !=  0" >
			L=<xsl:value-of select="SC12NEXT_LENGTH"/>m
		</xsl:if>
	</xsl:template>
	<xsl:template name="SC12NEXT_ATTENUATION" >
		<xsl:if test="string-length(normalize-space(./SC12NEXT_ATTENUATION)) !=  0" >
			<xsl:text disable-output-escaping="yes">&amp;</xsl:text>alpha;=<xsl:value-of select="SC12NEXT_ATTENUATION"/>dB
		</xsl:if>
	</xsl:template>

	<xsl:template name="SCD2NEXT_LENGTH" >
		<xsl:if test="string-length(normalize-space(./SCD2NEXT_LENGTH)) !=  0" >
			L=<xsl:value-of select="SCD2NEXT_LENGTH"/>m
		</xsl:if>
	</xsl:template>
	<xsl:template name="SCD2NEXT_ATTENUATION" >
		<xsl:if test="string-length(normalize-space(./SCD2NEXT_ATTENUATION)) !=  0" >
			<xsl:text disable-output-escaping="yes">&amp;</xsl:text>alpha;=<xsl:value-of select="SCD2NEXT_ATTENUATION"/>dB
		</xsl:if>
	</xsl:template>

	<xsl:template name="START_DISTRIBUTION_LENGTH" >
		<xsl:if test="string-length(normalize-space(./START_DISTRIBUTION_LENGTH)) !=  0" >
			L=<xsl:value-of select="START_DISTRIBUTION_LENGTH"/>m
		</xsl:if>
	</xsl:template>
	<xsl:template name="START_DISTRIBUTION_ATTENUATION" >
		<xsl:if test="string-length(normalize-space(./START_DISTRIBUTION_ATTENUATION)) !=  0" >
			<xsl:text disable-output-escaping="yes">&amp;</xsl:text>alpha;=<xsl:value-of select="START_DISTRIBUTION_ATTENUATION"/>dB
		</xsl:if>
	</xsl:template>

	<xsl:template name="END_DISTRIBUTION_LENGTH" >
		<xsl:if test="string-length(normalize-space(./END_DISTRIBUTION_LENGTH)) !=  0" >
			L=<xsl:value-of select="END_DISTRIBUTION_LENGTH"/>m
		</xsl:if>
	</xsl:template>
	<xsl:template name="END_DISTRIBUTION_ATTENUATION" >
		<xsl:if test="string-length(normalize-space(./END_DISTRIBUTION_ATTENUATION)) !=  0" >
			<xsl:text disable-output-escaping="yes">&amp;</xsl:text>alpha;=<xsl:value-of select="END_DISTRIBUTION_ATTENUATION"/>dB
		</xsl:if>
	</xsl:template>
	<xsl:template name="DATE_NODE_COMPLIANCE" >
		<xsl:choose>
       		<xsl:when test="string-length(normalize-space(./DATE_NODE_COMPLIANCE)) > 7" >
    			    <xsl:value-of select="substring(./DATE_NODE_COMPLIANCE,1,2)"/><xsl:text disable-output-escaping="yes">/</xsl:text>
    			    <xsl:value-of select="substring(./DATE_NODE_COMPLIANCE,3,2)"/><xsl:text disable-output-escaping="yes">/</xsl:text>
    			    <xsl:value-of select="substring(./DATE_NODE_COMPLIANCE,5,4)"/>
    		</xsl:when>
    		<xsl:otherwise>
    			<xsl:value-of select="DATE_NODE_COMPLIANCE"/>
    		</xsl:otherwise>
		</xsl:choose>
	</xsl:template>	
</xsl:stylesheet>

