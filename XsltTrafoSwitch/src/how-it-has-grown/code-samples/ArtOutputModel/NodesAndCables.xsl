<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">

	<xsl:template name="NODE_LDC000" >
		<!--TD align="center" background="../html/ArtGui/common/images/Lex.gif"></TD-->
 		<xsl:element name="TD">
			<xsl:attribute name="align">center</xsl:attribute>
			<xsl:attribute name="background">../html/ArtGui/common/images/ldx-ending.gif</xsl:attribute>
			<xsl:attribute name="title">LEX ID: <xsl:value-of select="ID_NODE_LDC000"/></xsl:attribute>
		</xsl:element>
	</xsl:template>

	<xsl:template name="LDCXXX2LDC000_CABLE" >
		<!--TD align="right" title=""><HR></HR></TD-->
		<xsl:element name="TD">
			<xsl:attribute name="align">right</xsl:attribute>
			<xsl:attribute name="title">
				<xsl:choose>
					<xsl:when test="string-length(normalize-space(./LDCXXX2LDC000_CABLE_NUMBER)) !=  0">Cable ID: <xsl:value-of select="LDCXXX2LDC000_CABLE_NUMBER"/></xsl:when>
					<xsl:when test="string-length(normalize-space(./LDCXXX2LDC000_NBR_OF_SPLICES)) !=  0">Unidentified Bretel cable</xsl:when>
					<xsl:otherwise></xsl:otherwise>
				</xsl:choose>
				<xsl:if test="string-length(normalize-space(./LDCXXX2LDC000_NBR_OF_SPLICES)) !=  0">&#10;Splice count:    <xsl:value-of select="LDCXXX2LDC000_NBR_OF_SPLICES"/></xsl:if>
			</xsl:attribute>
			<xsl:attribute name="background">../html/ArtGui/common/images/cable.gif</xsl:attribute>
		</xsl:element>
	</xsl:template>

	<xsl:template name="NODE_LDCXXX" >
		<!--TD align="center" background="../html/ArtGui/common/images/Ldc.gif"></TD-->
 		<xsl:element name="TD">
			<xsl:attribute name="align">center</xsl:attribute>
			<xsl:attribute name="background">
				<xsl:choose>
					<xsl:when test="string-length(normalize-space(./LDCXXX2LDC000_LENGTH)) !=  0">../html/ArtGui/common/images/ldc.gif</xsl:when>
					<xsl:otherwise>../html/ArtGui/common/images/ldc-ending.gif</xsl:otherwise>
				</xsl:choose>
			</xsl:attribute>
			<xsl:attribute name="title">LDC ID: <xsl:value-of select="ID_NODE_LDCXXX"/></xsl:attribute>
		</xsl:element>
	</xsl:template>

	<xsl:template name="SC22NEXT_CABLE" >
		<!--TD align="right"><HR></HR></TD-->
			<xsl:element name="TD">
			<xsl:attribute name="align">right</xsl:attribute>
			<xsl:attribute name="title">
				<xsl:choose>
					<xsl:when test="string-length(normalize-space(./SC22NEXT_CABLE_NUMBER)) !=  0">Cable ID: <xsl:value-of select="SC22NEXT_CABLE_NUMBER"/></xsl:when>
					<xsl:when test="string-length(normalize-space(./SC22NEXT_NBR_OF_SPLICES)) !=  0">Unidentified Bretel cable</xsl:when>
					<xsl:otherwise></xsl:otherwise>
				</xsl:choose>
				<xsl:if test="string-length(normalize-space(./SC22NEXT_NBR_OF_SPLICES)) !=  0">&#10;Splice count:    <xsl:value-of select="SC22NEXT_NBR_OF_SPLICES"/></xsl:if>
			</xsl:attribute>
			<xsl:attribute name="background">../html/ArtGui/common/images/cable.gif</xsl:attribute>
		</xsl:element>
	</xsl:template>

	<xsl:template name="SC2" >
		<!--TD align="center" background="../html/ArtGui/common/images/Sc22.gif"></TD-->
 		<xsl:element name="TD">
			<xsl:attribute name="align">center</xsl:attribute>
			<xsl:attribute name="background">
				<xsl:choose>
					<xsl:when test="string-length(normalize-space(./SC22NEXT_LENGTH)) !=  0">../html/ArtGui/common/images/kvd.gif</xsl:when>
					<xsl:otherwise>../html/ArtGui/common/images/kvd-ending.gif</xsl:otherwise>
				</xsl:choose>
			</xsl:attribute>
			<xsl:attribute name="title">SC-2 ID: <xsl:value-of select="ID_SC2"/></xsl:attribute>
		</xsl:element>
	</xsl:template>

	<xsl:template name="ROP_SC2" >
		<!--TD align="center" background="../html/ArtGui/common/images/RopSc2.gif"></TD-->
 		<xsl:element name="TD">
			<xsl:attribute name="align">center</xsl:attribute>
			<xsl:attribute name="background">../html/ArtGui/common/images/rop-ending.gif</xsl:attribute>
			<xsl:attribute name="title">
				<xsl:choose>
					<xsl:when test="string-length(normalize-space(./ID_ROP_SC2)) !=  0">ROP SC-2 ID: <xsl:value-of select="ID_ROP_SC2"/></xsl:when>
					<xsl:otherwise>Unidentified Rop ID</xsl:otherwise>
				</xsl:choose>
			</xsl:attribute>
		</xsl:element>
	</xsl:template>

	<xsl:template name="SC12NEXT_CABLE" >
		<!--TD align="right"><HR></HR></TD-->
			<xsl:element name="TD">
			<xsl:attribute name="align">right</xsl:attribute>
			<xsl:attribute name="title">
				<xsl:choose>
					<xsl:when test="string-length(normalize-space(./SC12NEXT_CABLE_NUMBER))   !=  0">Cable ID: <xsl:value-of select="SC12NEXT_CABLE_NUMBER"/></xsl:when>
					<xsl:when test="string-length(normalize-space(./SC12NEXT_NBR_OF_SPLICES)) !=  0">Unidentified Bretel cable</xsl:when>
					<xsl:otherwise></xsl:otherwise>
				</xsl:choose>
				<xsl:if test="string-length(normalize-space(./SC12NEXT_NBR_OF_SPLICES)) !=  0">&#10;Splice count:    <xsl:value-of select="SC12NEXT_NBR_OF_SPLICES"/></xsl:if>
			</xsl:attribute>
			<xsl:attribute name="background">../html/ArtGui/common/images/cable.gif</xsl:attribute>
		</xsl:element>				
	</xsl:template>

	<xsl:template name="SC1" >
		<!--TD align="center" background="../html/ArtGui/common/images/Sc21.gif"></TD-->
 		<xsl:element name="TD">
			<xsl:attribute name="align">center</xsl:attribute>
			<xsl:attribute name="background">
				<xsl:choose>
					<xsl:when test="string-length(normalize-space(./SC12NEXT_LENGTH)) !=  0">../html/ArtGui/common/images/kvd.gif</xsl:when>
					<xsl:otherwise>../html/ArtGui/common/images/kvd-ending.gif</xsl:otherwise>
				</xsl:choose>
			</xsl:attribute>
			<xsl:attribute name="title">SC-1 ID: <xsl:value-of select="ID_SC1"/></xsl:attribute>
		</xsl:element>
	</xsl:template>

	<xsl:template name="ROP_SC1" >
		<!--TD align="center" background="../html/ArtGui/common/images/RopSc1.gif"></TD-->
 		<xsl:element name="TD">
			<xsl:attribute name="align">center</xsl:attribute>
			<xsl:attribute name="background">../html/ArtGui/common/images/rop-ending.gif</xsl:attribute>
			<xsl:attribute name="title">
				<xsl:choose>
					<xsl:when test="string-length(normalize-space(./ID_ROP_SC1)) !=  0">ROP SC-1 ID: <xsl:value-of select="ID_ROP_SC1"/></xsl:when>
					<xsl:otherwise>Unidentified Rop ID</xsl:otherwise>
				</xsl:choose>
			</xsl:attribute>
		</xsl:element>
	</xsl:template>

	<xsl:template name="SCD2NEXT_CABLE" >
		<!--TD align="right"><HR></HR></TD-->
			<xsl:element name="TD">
			<xsl:attribute name="align">right</xsl:attribute>
			<xsl:attribute name="title">
				<xsl:choose>
					<xsl:when test="string-length(normalize-space(./SCD2NEXT_CABLE_NUMBER)) !=  0">Cable ID: <xsl:value-of select="SCD2NEXT_CABLE_NUMBER"/></xsl:when>
					<xsl:when test="string-length(normalize-space(./SCD2NEXT_NBR_OF_SPLICES)) !=  0">Unidentified Bretel cable</xsl:when>
					<xsl:otherwise></xsl:otherwise>
				</xsl:choose>
				<xsl:if test="string-length(normalize-space(./SCD2NEXT_NBR_SPLICES)) !=  0">&#10;Splice count:    <xsl:value-of select="SCD2NEXT_NBR_SPLICES"/></xsl:if>
			</xsl:attribute>
			<xsl:attribute name="background">../html/ArtGui/common/images/cable.gif</xsl:attribute>
		</xsl:element>				
	</xsl:template>

	<xsl:template name="SCD" >
		<!--TD align="center" background="../html/ArtGui/common/images/ScD.gif"></TD-->
 		<xsl:element name="TD">
			<xsl:attribute name="align">center</xsl:attribute>
			<xsl:attribute name="background">
				<xsl:choose>
					<xsl:when test="string-length(normalize-space(./SCD2NEXT_LENGTH)) !=  0">../html/ArtGui/common/images/kvd.gif</xsl:when>
					<xsl:otherwise>../html/ArtGui/common/images/kvd-ending.gif</xsl:otherwise>
				</xsl:choose>
			</xsl:attribute>
			<xsl:attribute name="title">SC-D ID: <xsl:value-of select="ID_SCD"/></xsl:attribute>
		</xsl:element>
	</xsl:template>

	<xsl:template name="ROP_SCD" >
		<!--TD align="center" background="../html/ArtGui/common/images/RopScD.gif"></TD-->
 		<xsl:element name="TD">
			<xsl:attribute name="align">center</xsl:attribute>
			<xsl:attribute name="background">../html/ArtGui/common/images/rop-ending.gif</xsl:attribute>
			<xsl:attribute name="title">
				<xsl:choose>
					<xsl:when test="string-length(normalize-space(./ID_ROP_SCD)) !=  0">ROP SC-D ID: <xsl:value-of select="ID_ROP_SCD"/></xsl:when>
					<xsl:otherwise>Unidentified Rop ID</xsl:otherwise>
				</xsl:choose>
			</xsl:attribute>
		</xsl:element>
	</xsl:template>
	
	<xsl:template name="DISTRIBUTION_CABLE" >
		<!--TD align="right"><HR></HR></TD-->
			<xsl:element name="TD">
			<xsl:attribute name="align">right</xsl:attribute>
			<xsl:attribute name="title">
				<xsl:choose>
					<xsl:when test="string-length(normalize-space(./ID_DISTRIBUTION_CABLE)) !=  0">Distr.Cable ID: <xsl:value-of select="ID_DISTRIBUTION_CABLE"/></xsl:when>
					<!--xsl:when test="string-length(normalize-space(./SCD2NEXT_NBR_OF_SPLICES)) !=  0">Unidentified Distribution Cable</xsl:when-->
					<xsl:otherwise></xsl:otherwise>
				</xsl:choose>
				<xsl:if test="string-length(normalize-space(./NBR_OF_SPLICES)) !=  0">&#10;Splice count:        <xsl:value-of select="NBR_OF_SPLICES"/></xsl:if>
			</xsl:attribute>
			<xsl:attribute name="background">../html/ArtGui/common/images/cable.gif</xsl:attribute>
		</xsl:element>				
	</xsl:template>
	
	
</xsl:stylesheet>

