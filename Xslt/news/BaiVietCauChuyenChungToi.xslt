<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />


	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone" mode="Content"></xsl:apply-templates>

	</xsl:template>

	<!--Begin match content-->
	<xsl:template match="Zone" mode="Content">
		<xsl:if test="position() = 1 ">
			<section class="ttp-intro-1">
				<div class="container">
					<div class="row">
						<div class="col">
							<h1 data-aos="fade-down">
								<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>

							</h1>

						</div>
					</div>
					<xsl:apply-templates select='News' mode="ZoneNews1"></xsl:apply-templates>

				</div>
			</section>
		</xsl:if>
		<xsl:if test="position() = 2 ">
			<section class="ttp-intro-2">
				<div class="container">
					<xsl:apply-templates select='News' mode="ZoneNews2"></xsl:apply-templates>


				</div>
			</section>
		</xsl:if>
		<xsl:if test="position() = 3 ">
			<section class="ttp-intro-3">
				<div class="container">
					<xsl:apply-templates select='News' mode="ZoneNews3"></xsl:apply-templates>


				</div>
			</section>
		</xsl:if>

	</xsl:template>
	<!--End match content-->

	<!--Begin match ZoneNews-->
	<xsl:template match="News" mode="ZoneNews1">
		<div class="row">
			<div class="col">
				<figure>
					<img data-aos="fade-left">
					<xsl:attribute name='src'>
						<xsl:value-of select='ImageUrl'></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name='alt'>
						<xsl:value-of select='Title'></xsl:value-of>
					</xsl:attribute>
					</img>
					<figcaption class="quote" data-aos="fade-right">
						<h2 class="title" >
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>

						</h2>
						<div class="detail">
							<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
						</div>
					</figcaption>
				</figure>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="News" mode="ZoneNews2">
		<div class="row">
			<div class="col-md-4">
				<img class="img-fluid" data-aos="fade-right">
				<xsl:attribute name='src'>
					<xsl:value-of select='ImageUrl'></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name='alt'>
					<xsl:value-of select='Title'></xsl:value-of>
				</xsl:attribute>
				</img>
			</div>
			<div class="col-md-8">
				<div class="quote">
					<div class="sub" data-aos="fade-up">
						<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>

					</div>
				</div>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="News" mode="ZoneNews3">
		<div class="row">
			<div class="col-12">
				<div class="quote" data-aos="fade-down">
					<h3 >
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>

					</h3>
					<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>

				</div>
			</div>
		</div>
		<div class="row">
			<div class="col">
				<div class="wrapper">
					<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>

				</div>
			</div>
		</div>
	</xsl:template>

</xsl:stylesheet>