<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="ttp-media-photo-2">
			<div class="container">
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
			<div class="wrapper-gallery">

				<div class="box-zoom">
					<xsl:apply-templates select='NewsImages'></xsl:apply-templates>
					<!-- 
					<a>
						<xsl:attribute name='href'>
							<xsl:value-of select='ImageUrl'></xsl:value-of>
						</xsl:attribute>
						<img>
						<xsl:attribute name='src'>
							<xsl:value-of select='ImageUrl'></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name='alt'>
							<xsl:value-of select='Title'></xsl:value-of>
						</xsl:attribute>
						</img>
					</a> -->
				</div>
			</div>
		</div>


	</xsl:template>

	<xsl:template match='NewsImages'>
		<a>
			<xsl:attribute name='href'>
				<xsl:value-of select='ImageUrl'></xsl:value-of>
			</xsl:attribute>
			<img>
			<xsl:attribute name='src'>
				<xsl:value-of select='ImageUrl'></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name='alt'>
				<xsl:value-of select='Title'></xsl:value-of>
			</xsl:attribute>
			</img>
		</a>
	</xsl:template>
</xsl:stylesheet>