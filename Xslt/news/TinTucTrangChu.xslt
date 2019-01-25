<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="ttp-home-4">
			<div class="container">
				<div class="row">
					<div class="col">
						<h2 data-aos="fade-up">
							<xsl:value-of select="/NewsList/ModuleTitle"></xsl:value-of>
						</h2>

					</div>
				</div>
				<div class="row">
					<xsl:apply-templates select='/NewsList/News'></xsl:apply-templates>
				</div>
			</div>
		</section>



	</xsl:template>

	<xsl:template match="News">

		<div class="col-lg-4 col-md-6" data-aos="flip-up" data-aos-duration="1000">
					<xsl:attribute name='data-aos-delay'>
						<xsl:value-of select='position()*200 - 200'></xsl:value-of>
					</xsl:attribute>
			<div class="wrapper">
				<a>
					<xsl:attribute name='href'>
						<xsl:value-of select='Url'></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name='target'>
						<xsl:value-of select='Title'></xsl:value-of>
					</xsl:attribute>
					<figure>
						<div class="boxzoom">
							<img>
							<xsl:attribute name='src'>
								<xsl:value-of select='ImageUrl'></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name='alt'>
								<xsl:value-of select='Title'></xsl:value-of>
							</xsl:attribute>
							</img>
						</div>
						<figcaption>
							<time>
								<xsl:value-of select="CreatedDD"></xsl:value-of>
								<xsl:text>.</xsl:text>
								<xsl:value-of select="CreatedMM"></xsl:value-of>
								<xsl:text>.</xsl:text>
								<xsl:value-of select="CreatedYYYY"></xsl:value-of>

							</time>
							<h3>
								<xsl:value-of select="Title"></xsl:value-of>
							</h3>

						</figcaption>
					</figure>
				</a>
			</div>
		</div>


	</xsl:template>
</xsl:stylesheet>