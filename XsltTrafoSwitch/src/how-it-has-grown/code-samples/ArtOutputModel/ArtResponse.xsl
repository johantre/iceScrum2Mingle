<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
<xsl:import href="ToNodeOrNotToNode.xsl"/>
<xsl:import href="ToLabelOrNotTolabel.xsl"/>
<xsl:import href="TranslationResource.xsl"/>
<xsl:output method="html"/>

	<xsl:template match="/RemoteBusinessOutputData/BusinessInfo"> 
	<xsl:if test="node()">
		<P></P>
				<table cellpadding="0" cellspacing="0" border="0" width="100%" class="filled">
					<!--Title-->
					<tr>
						<td>
							<!--script>
									insertTitle("ART Config Management ","true".toLowerCase() );
							</script-->
						</td>
					</tr>
					<tr>
						<td>
							<table cellpadding="" cellspacing="" border="0" width="100%" class="filled">
								<tr><td/></tr>
							<!--Subtitle-->
								<tr>
									<script type="text/javascript">
										insertSubtitle("ART Response Graphical Representation");
									</script>
								</tr>
								<script>
									insertEmptyRow(4);
								</script>
							</table>
						</td>
					</tr>
				</table>
				
				<table cellpadding="0" cellspacing="0" border="0" class="fixed">
					<tr>
				        <td align="Left" onmouseout="hideARTHelpPopup()" onmouseover="showARTHelpPopup(this)">help</td>
					</tr>
				</table>
				

				<TABLE class="fixed" border="0" width="" cellspacing="0" cellpadding="0">
					<TBODY >
					<TR>
						<TD align="center" height="15" width="27"></TD>
						<TD align="left" 				width="60"></TD>
						<TD align="center" 				width="30"></TD>
	
						<TD align="center" 				width="21"></TD>
						<TD align="right" 				width="80"></TD>
						<TD align="right" 				width="21"></TD>
						<TD align="right" 				width="80"></TD>
						<TD align="right" 				width="21"></TD>
						<TD align="right" 				width="80"></TD>
						<TD align="right" 				width="21"></TD>
						<TD align="right" 				width="80"></TD>
						<TD align="right" 				width="21"></TD>
						<TD align="right" 				width="80"></TD>
	
						<TD align="right" 				width="9"></TD>
						<TD align="right" 				width="20"></TD>
						<TD align="right" 				width="21"></TD>
						<TD align="right" 				width="64"></TD>
						<TD align="right" 				width="9"></TD>
						
						<TD align="right" 				width="70"></TD>
						<TD align="right" 				width="36"></TD>
						<TD align="right" 				width="30"></TD>
						<TD align="center" 				width="28"></TD>

						<TD align="center" 				width="26"></TD>
						<TD align="center" 				width="22"></TD>
						<TD align="center" 				width="22"></TD>
						<TD align="center" 				width="30"></TD>
					</TR>
					<TR>
						<TD align="center" height="25" style="font-weight:bold">Path #</TD>
						<TD align="center" style="font-weight:bold">DSLAM End Node</TD>
						<TD align="center" style="font-weight:bold">Tech. Sol.</TD>
	
						<TD align="center" style="font-weight:bold" colspan="15">Path presentation</TD>
						<!--TD align="right" ></TD>
						<TD align="right" ></TD>
						<TD align="right" ></TD>
						<TD align="right" ></TD>
						<TD align="right" ></TD>
						<TD align="right" ></TD>
						<TD align="right" ></TD>
						<TD align="right" ></TD>
						<TD align="right" ></TD>
	
						<TD align="right" ></TD>
						<TD align="right" ></TD>
						<TD align="right" ></TD>
						<TD align="right" ></TD>
						<TD align="right" ></TD-->
	
						<TD align="right" ></TD>
						<TD align="right"  style="font-weight:bold">Cable</TD>
						<TD align="center" style="font-weight:bold">Node</TD>
						<TD align="center" style="font-weight:bold">Path</TD>

						<TD align="center" style="font-weight:bold">#Str</TD>
						<TD align="center" style="font-weight:bold">BW</TD>
						<TD align="center" style="font-weight:bold">BP</TD>
						<TD align="center"></TD>
					</TR>
					
				      <xsl:for-each select="model">
						<TR>
							<TD align="center" height="15"></TD>
							<TD align="right"></TD>
							<TD align="right"></TD>
							<TD align="right"></TD>
	
							<TD align="right" valign="bottom"><xsl:call-template name="LDCXXX2LDC000_LENGTH"/></TD>
							<TD align="right"></TD>
							<TD align="right" valign="bottom"><xsl:call-template name="SC22NEXT_LENGTH" /></TD>
							<TD align="right"></TD>
							<TD align="right" valign="bottom"><xsl:call-template name="SC12NEXT_LENGTH" /></TD>
							<TD align="right"></TD>
							<TD align="right" valign="bottom"><xsl:call-template name="SCD2NEXT_LENGTH" /></TD>
							<TD align="right"></TD>
							<TD align="right" valign="bottom"><xsl:call-template name="START_DISTRIBUTION_LENGTH" /></TD>
							<TD align="right"></TD>
							<TD align="right"></TD>
							<TD align="right"></TD>
							<TD align="right" valign="bottom"><xsl:call-template name="END_DISTRIBUTION_LENGTH" /></TD>
							<TD align="right"></TD>
							
							<TD align="right" style="font-weight:bold">Status</TD>
							<TD align="center"><xsl:value-of select="CABLESTATUS"/></TD>
							<TD align="center"><xsl:value-of select="NODESTATUS"/></TD>
							<TD align="center"><xsl:value-of select="PATHSTATUS"/></TD>
							
							<TD align="center"></TD>
							<TD align="center"></TD>
							<TD align="center"></TD>
						</TR>
						<TR>
							<TD align="left" height="21"><xsl:value-of select="PATH_NUMBER"/></TD>
							<TD align="center"><xsl:value-of select="DSLAM_END_NODE"/> </TD>
							<TD align="left">(<xsl:value-of select="TECHSOL"/>)</TD>
							
							<xsl:call-template name="LDC-000" />
							<xsl:call-template name="LDC-000-cable" />
							<xsl:call-template name="LDC-XXX" />
							<xsl:call-template name="LDC-XXX-cable" />
							<xsl:call-template name="SC-2" />
							<xsl:call-template name="SC-2-cable" />
							<xsl:call-template name="SC-1" />
							<xsl:call-template name="SC-1-cable" />
							<xsl:call-template name="SC-D" />
							<xsl:call-template name="SCD-cable" />
	
							<xsl:call-template name="START" />
							<TD align="right" background="../html/ArtGui/common/images/cable.gif"></TD>
							<xsl:call-template name="HOUSE" />
							<TD align="right" background="../html/ArtGui/common/images/cable.gif"></TD>
							<xsl:call-template name="END" />
							
							<TD align="right" style="font-weight:bold">Severity</TD>
							<TD align="center"><xsl:value-of select="SEVERITY_CABLE_COMPLIANCE"/></TD>
							<TD align="center"><xsl:value-of select="SEVERITY_NODE_COMPLIANCE"/></TD>
							<TD align="center"><xsl:value-of select="SEVERITY_PATH_COMPLIANCE"/></TD>

							<TD align="center"><xsl:value-of select="NBR_OF_STREAMS"/></TD>
							<TD align="center"><xsl:value-of select="BANDWIDTH"/></TD>
							<TD align="center"><xsl:value-of select="BEST_PATH"/></TD>
							<TD align="center"></TD>
						</TR>
						<TR>
							<TD align="center" height="15"></TD>
							<TD align="center"></TD>
							<TD align="center"></TD>
							<TD align="center"></TD>
	
							<TD align="right" valign="top"><xsl:call-template name="LDCXXX2LDC000_ATTENUATION" /></TD>
							<TD align="right"></TD>
							<TD align="right" valign="top"><xsl:call-template name="SC22NEXT_ATTENUATION" /></TD>
							<TD align="right"></TD>
							<TD align="right" valign="top"><xsl:call-template name="SC12NEXT_ATTENUATION" /></TD>
							<TD align="right"></TD>
							<TD align="right" valign="top"><xsl:call-template name="SCD2NEXT_ATTENUATION" /></TD>
							<TD align="right"></TD>
							<TD align="right" valign="top"><xsl:call-template name="START_DISTRIBUTION_ATTENUATION" /></TD>
							<TD align="right"></TD>
							<TD align="right"></TD>
							<TD align="right"></TD>
							<TD align="right" valign="top"><xsl:call-template name="END_DISTRIBUTION_ATTENUATION" /></TD>
							<TD align="right"></TD>
							
							<TD align="right" style="font-weight:bold">Date</TD>
							<TD align="center" colspan="3"><xsl:call-template name="DATE_NODE_COMPLIANCE" /></TD>
							<TD align="center"></TD>
							<TD align="center"></TD>

							<TD align="center"></TD>
							<TD align="center"></TD>
							<TD align="center"></TD>
						</TR>
						<TR><TD height="15"></TD></TR>
				      </xsl:for-each>
					</TBODY>
				</TABLE>
		</xsl:if>
</xsl:template>

</xsl:stylesheet>
