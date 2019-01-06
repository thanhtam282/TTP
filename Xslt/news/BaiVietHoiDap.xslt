<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		
			<div class="quote">
				<h2 class="title-main">
					<xsl:value-of select="/NewsList/ZoneTitle"></xsl:value-of>

				</h2>
				<p>
					<xsl:value-of select="/NewsList/ZoneDescription" disable-output-escaping="yes"></xsl:value-of>

				</p>
			</div>
			<div class="block">
				<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>



			</div>




	</xsl:template>

	<xsl:template match="News">
		<div class="question">
			<h3> 
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</h3>
		</div>
		<div class="answer">
			<p>

				<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>

			</p>
		</div>

	</xsl:template>

</xsl:stylesheet>