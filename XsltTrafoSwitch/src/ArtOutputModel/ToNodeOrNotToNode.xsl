<?xml version="1.0" encoding="UTF-8"?>
<!-- edited with XMLSPY v2004 rel. 3 U (http://www.xmlspy.com) by Belgacom (Belgacom) -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">

	<xsl:import href="NodesAndCables.xsl"/>

	<xsl:template name="LDC-000">
		<xsl:choose>
			<xsl:when test="string-length(normalize-space(./ID_NODE_LDC000)) !=  0">
				<xsl:call-template name="NODE_LDC000"/>
			</xsl:when>
			<xsl:otherwise>
				<TD align="right"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<xsl:template name="LDC-000-cable">
		<xsl:choose>
			<xsl:when test="string-length(normalize-space(./ID_NODE_LDC000)) !=  0">
				<xsl:call-template name="LDCXXX2LDC000_CABLE"/>
			</xsl:when>
			<xsl:otherwise>
				<TD align="right"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<xsl:template name="LDC-XXX">
		<xsl:choose>
			<xsl:when test="string-length(normalize-space(./ID_NODE_LDCXXX)) !=  0">
				<xsl:call-template name="NODE_LDCXXX"/>
			</xsl:when>
			<xsl:when test="string-length(normalize-space(./ID_ROP_SC2)) !=  0">
				<xsl:call-template name="ROP_SC2"/>
			</xsl:when>
			<xsl:when test="./SC22NEXT_LENGTH =  30  and  ./SC22NEXT_ATTENUATION = 0.02844">
				<xsl:call-template name="ROP_SC2"/>
			</xsl:when>
			<xsl:when test="string-length(normalize-space(./ID_NODE_LDC000)) !=  0">
				<TD align="right" background="../html/ArtGui/common/images/cable.gif"/>
			</xsl:when>
			<xsl:otherwise>
				<TD align="right"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<xsl:template name="LDC-XXX-cable">
		<xsl:choose>
			<xsl:when test="string-length(normalize-space(./ID_NODE_LDCXXX)) 	!=  0   	or    
						       string-length(normalize-space(./ID_ROP_SC2)) 			!=  0 	or
						       string-length(normalize-space(./ID_NODE_LDC000)) 	!=  0 	or
						       (./SC22NEXT_LENGTH =  30  and  ./SC22NEXT_ATTENUATION = 0.02844)">
				<xsl:call-template name="SC22NEXT_CABLE"/>
			</xsl:when>
			<xsl:otherwise>
				<TD align="right"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<xsl:template name="SC-2">
		<xsl:choose>
			<xsl:when test="string-length(normalize-space(./ID_SC2)) !=  0">
				<xsl:call-template name="SC2"/>
			</xsl:when>
			<xsl:when test="string-length(normalize-space(./ID_ROP_SC1)) !=  0">
				<xsl:call-template name="ROP_SC1"/>
			</xsl:when>
			<xsl:when test="./SC12NEXT_LENGTH =  30  and  ./SC12NEXT_ATTENUATION = 0.02844">
				<xsl:call-template name="ROP_SC1"/>
			</xsl:when>
			<xsl:when test="string-length(normalize-space(./ID_NODE_LDCXXX)) 	!=  0	or
						       string-length(normalize-space(./ID_NODE_LDC000)) 	!=  0	or
						       string-length(normalize-space(./ID_ROP_SC2)) 			!=  0">
				<TD align="right" background="../html/ArtGui/common/images/cable.gif"/>
			</xsl:when>
			<xsl:otherwise>
				<TD align="right"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<xsl:template name="SC-2-cable">
		<xsl:choose>
			<xsl:when test="string-length(normalize-space(./ID_SC2)) 				!=  0 	or 
						       string-length(normalize-space(./ID_ROP_SC1)) 			!=  0	or
						       string-length(normalize-space(./ID_NODE_LDCXXX)) 	!=  0	or
						       string-length(normalize-space(./ID_NODE_LDC000)) 	!=  0	or
						       string-length(normalize-space(./ID_ROP_SC2)) 			!=  0	or 
						       (./SC12NEXT_LENGTH =  30  and  ./SC12NEXT_ATTENUATION = 0.02844)">
				<xsl:call-template name="SC12NEXT_CABLE"/>
			</xsl:when>
			<xsl:otherwise>
				<TD align="right"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<xsl:template name="SC-1">
		<xsl:choose>
			<xsl:when test="string-length(normalize-space(./ID_SC1)) !=  0">
				<xsl:call-template name="SC1"/>
			</xsl:when>
			<xsl:when test="string-length(normalize-space(./ID_ROP_SCD)) !=  0">
				<xsl:call-template name="ROP_SCD"/>
			</xsl:when>
			<xsl:when test="./SCD2NEXT_LENGTH =  30  and  ./SCD2NEXT_ATTENUATION = 0.02844">
				<xsl:call-template name="ROP_SCD"/>
			</xsl:when>
			<xsl:when test="string-length(normalize-space(./ID_NODE_LDCXXX)) 	!=  0	or
						       string-length(normalize-space(./ID_NODE_LDC000)) 	!=  0	or
						       string-length(normalize-space(./ID_SC2)) 				!=  0	or
						       string-length(normalize-space(./ID_ROP_SC1)) 			!=  0	or
						       string-length(normalize-space(./ID_ROP_SC2)) 			!=  0">
				<TD align="right" background="../html/ArtGui/common/images/cable.gif"/>
			</xsl:when>
			<xsl:otherwise>
				<TD align="right"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<xsl:template name="SC-1-cable">
		<xsl:choose>
			<xsl:when test="string-length(normalize-space(./ID_SC1)) 			!=  0	or
							string-length(normalize-space(./ID_ROP_SCD)) 		!=  0	or
							string-length(normalize-space(./ID_NODE_LDCXXX))	!=  0	or
							string-length(normalize-space(./ID_NODE_LDC000)) 	!=  0	or
							string-length(normalize-space(./ID_SC2)) 			!=  0	or
							string-length(normalize-space(./ID_ROP_SC1)) 		!=  0	or
							string-length(normalize-space(./ID_ROP_SC2)) 		!=  0 	or
							(./SCD2NEXT_LENGTH =  30  and  ./SCD2NEXT_ATTENUATION = 0.02844)">
				<!--TD align="right"><HR></HR></TD-->
				<xsl:call-template name="SCD2NEXT_CABLE"/>
			</xsl:when>
			<xsl:otherwise>
				<TD align="right"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<xsl:template name="SC-D">
		<xsl:choose>
			<xsl:when test="string-length(normalize-space(./ID_SCD)) !=  0">
				<xsl:call-template name="SCD"/>
			</xsl:when>
			<xsl:when test="string-length(normalize-space(./ID_NODE_LDCXXX))		!=  0	or
						       string-length(normalize-space(./ID_NODE_LDC000)) 	!=  0	or
						       string-length(normalize-space(./ID_ROP_SC2)) 			!=  0	or
						       string-length(normalize-space(./ID_SC2)) 				!=  0	or
						       string-length(normalize-space(./ID_ROP_SC1)) 			!=  0	or
						       string-length(normalize-space(./ID_SC1)) 				!=  0	or
						       string-length(normalize-space(./ID_ROP_SCD)) 			!=  0">
				<TD align="right" background="../html/ArtGui/common/images/cable.gif"/>
			</xsl:when>
			<xsl:otherwise>
				<TD align="right"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<xsl:template name="SCD-cable">
		<xsl:choose>
			<xsl:when test="string-length(normalize-space(./ID_SCD)) 				!=  0	or
						       string-length(normalize-space(./ID_NODE_LDCXXX)) 	!=  0	or
						       string-length(normalize-space(./ID_NODE_LDC000)) 		!=  0	or
						       string-length(normalize-space(./ID_SC2)) 				!=  0	or
						       string-length(normalize-space(./ID_SC1)) 				!=  0	or
						       string-length(normalize-space(./ID_ROP_SC1)) 			!=  0	or
						       string-length(normalize-space(./ID_ROP_SC2)) 			!=  0">
				<!--TD align="right"><HR/></TD-->
				<xsl:call-template name="DISTRIBUTION_CABLE"/>
			</xsl:when>
			<xsl:otherwise>
				<TD align="right"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<xsl:template name="START">
		<TD align="center" background="../html/ArtGui/common/images/splice.gif"/>
	</xsl:template>
	<xsl:template name="START-cable">
		<TD align="right" background="../html/ArtGui/common/images/cable.gif"/>
	</xsl:template>
	<xsl:template name="HOUSE">
		<TD align="center" background="../html/ArtGui/common/images/home.gif"/>
	</xsl:template>
	<xsl:template name="END">
		<TD align="center" background="../html/ArtGui/common/images/splice.gif"/>
	</xsl:template>
	<xsl:template name="END-cable">
		<TD align="right" background="../html/ArtGui/common/images/cable.gif"/>
	</xsl:template>
	
</xsl:stylesheet>
