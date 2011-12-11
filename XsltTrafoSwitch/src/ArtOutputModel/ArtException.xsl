<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
<xsl:output method="html"/>

<xsl:template match="/RemoteBusinessOutputData/BusinessServiceExecutionInfo">
	<xsl:if test="@status != 0">
			<DIV>
				<table cellpadding="0" cellspacing="0" border="0" width="100%" class="filled">
					<!--Title-->
					<tr>
						<td>
							<!--script>
									insertTitle("main title ","true".toLowerCase() );
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
										insertSubtitle("An Exception Occured");
									</script>
								</tr>
								
								<!--Content-->
								<tr>
									<td class="infoContainer">
										<table width="100%" class="fixed">
										<TR>
											<TD align="center" height="15"  width="45"></TD>
											<TD align="center" 				width="200"></TD>
											<TD align="center" 				width="100"></TD>
										</TR>
										<TR>
											<TD align="left" height="15">Status: </TD>
											<TD align="left"><xsl:value-of select="@status"/></TD>
											<TD align="left"></TD>
										</TR>
										<TR>
											<TD align="left" height="15">Code: </TD>
											<TD align="left"><xsl:apply-templates select="Exception" mode="code"/></TD>
											<TD align="left"></TD>
										</TR>
										<TR>
											<TD align="left" height="15">Description: </TD>
											<TD align="left"><xsl:apply-templates select="Exception" mode="Description"/></TD>
											<TD align="left"></TD>
										</TR>
										</table>
									</td>
								</tr>
								<script type="text/javascript">
									insertContentSeparatorRow(5);
								</script>
							</table>
						</td>									
					</tr>
					<tr>						
						<td>				
							<script type="text/javascript">
								insertSubtitle("");
							</script>
						</td>
					</tr>
				</table>									
			</DIV>					
	</xsl:if>
</xsl:template>

<xsl:template match="Exception" mode="code">
	<xsl:value-of select="@code"/>
</xsl:template>

<xsl:template match="Exception" mode="Description">
	<xsl:value-of select="@Description"/>
</xsl:template>

</xsl:stylesheet>
