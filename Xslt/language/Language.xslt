<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="language">
			<div class="current-lang">
				<!-- <xsl:apply-templates select="/LanguageList/Language"></xsl:apply-templates> -->
				<!-- <p>VN

				</p> -->
				<xsl:apply-templates select="/LanguageList/Language" mode="current"></xsl:apply-templates>
			</div><span class="lnr lnr-chevron-down"></span>
			<ul>
				<xsl:apply-templates select="/LanguageList/Language" mode="list"></xsl:apply-templates>

			</ul>
		</div>




	</xsl:template>




	<xsl:template match="Language" mode="current">
		<p style="display: none">
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="style">
					<xsl:text>display: block</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
		</p>

	</xsl:template>
	<xsl:template match="Language" mode="list">
		<li>
			<a>
				<!-- <xsl:if test="IsActive='true'">
						<xsl:attribute name="class">
							<xsl:text>d-none</xsl:text>
						</xsl:attribute>
					</xsl:if> -->
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