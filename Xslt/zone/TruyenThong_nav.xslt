<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">


		<section class="ttp-media-1">
			<div class="container">
				<div class="row">
					<div class="col">
						<h2>
				<xsl:value-of select="/ZoneList/ModuleTitle"></xsl:value-of>

						</h2>
					</div>
				</div>
				<div class="row">
					<div class="col">
						<ul class="nav">
							<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>

						</ul>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>

	<xsl:template match="Zone">



		<li class="nav-item">
			<a class="nav-link">
				<xsl:if test="IsActive='true'">
					<xsl:attribute name="class">
						<xsl:text>nav-link active</xsl:text>
					</xsl:attribute>
				</xsl:if>
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="target">
					<xsl:value-of select="Target"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</a>
		</li>

	</xsl:template>

</xsl:stylesheet>