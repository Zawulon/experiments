<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">	
	<xsl:template match="/enviroments">
		<html xmlns="http://www.w3.org/1999/xhtml">
			<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
			<head>
				<title>Environments links</title>
				<meta name="author" content="Tomasz Woznica t.woznica@interia.pl" />
				<meta name="description" content="Xslt transformation example" />
				<link href="SprySlidingPanels.css" rel="stylesheet" type="text/css" />
				<script type="text/javascript" src="SprySlidingPanels.js" />				
			</head>
			<body>
				<h3>Environments</h3>
				<p>
					<xsl:for-each select="enviroment">
						<xsl:variable name="envy" select="concat('ex2_',@name)" />
						<a href="#">
							<xsl:attribute name="onclick">
								sp2.showPanel('<xsl:value-of select="$envy" />'); return false;
							</xsl:attribute>
							<xsl:value-of select="@name" /> | 
						</a>
					</xsl:for-each>
				</p>
				<div style="overflow: hidden;" id="example2" class="SlidingPanels" tabindex="0">
					<div style="left: -600px; top: 0px;" class="SlidingPanelsContentGroup">
						<xsl:for-each select="enviroment">
							<xsl:variable name="envy" select="concat('ex2_',@name)" />
							<div class="SlidingPanelsContent" >
								<xsl:attribute name="id">
									<xsl:value-of select="$envy" />
								</xsl:attribute>								
								<strong>------------------------- <xsl:value-of select="@name" /> -------------------------</strong>
								<xsl:for-each select="servers/server">
									<ul>
										<li>
											<strong><xsl:value-of select="@name" /></strong> : [<xsl:value-of select="@description" />]
											<ul>
												<xsl:for-each select="applications/application">
													<li>
														<xsl:value-of select="@name" />
														<ul>
															<xsl:for-each select="endpoints/endpoint">
																<li>			
																	<xsl:value-of select="@name" /> - 
																	<a target="_blank">
																		<xsl:attribute name="href">
																			<xsl:value-of select="address/@uri" />
																		</xsl:attribute>
																			<xsl:value-of select="address/@uri" />
																	</a>
																</li>
															</xsl:for-each>														
														</ul>
													</li>
												</xsl:for-each>	
											</ul>
										</li>
									</ul>
								</xsl:for-each>								
							</div>
						</xsl:for-each>
					</div>
				</div>
				<script type="text/javascript">
				var sp2 = new Spry.Widget.SlidingPanels('example2');
				</script>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>