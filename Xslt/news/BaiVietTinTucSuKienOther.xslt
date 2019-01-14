<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="ttp-media-3">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="title">
							<h2>
								<xsl:value-of select="/NewsList/ModuleTitle"></xsl:value-of>

							</h2>
						</div>
					</div>
				</div>
				<div class="row ajaxwrapper">
					<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>


				</div>
				<div class="row ajaxPagerLinkWrapper">
					<div class="col">
						<xsl:if test="/NewsList/NextPageUrl!=''">
							<a class="btn btn-show-more ajaxpagerlink">
								<xsl:attribute name="href">
									<xsl:value-of select="/NewsList/NextPageUrl" />
								</xsl:attribute>
								<xsl:text>Xem thêm</xsl:text>
							</a>
						</xsl:if>
					</div>
				</div>
			</div>
		</section>








	</xsl:template>

	<xsl:template match="News">
		<div class="col-lg-4">

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
						<h3>
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>

						</h3>

					</figcaption>
				</figure>
			</a>
		</div>


	</xsl:template>

</xsl:stylesheet>