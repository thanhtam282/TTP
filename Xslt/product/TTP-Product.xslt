<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">


		<section class="ttp-product-2">
			<div class="container">
				<div class="row no-gutters">
					<div class="col-12 ">
						<div class="wrapper-product ajaxwrapper ">
							<xsl:apply-templates select="/ProductList/Product"></xsl:apply-templates>
						</div>
						<div class="ajaxPagerLinkWrapper">
							<xsl:if test="/ProductList/NextPageUrl!=''">
								<a class="btn btn-show-more ajaxpagerlinkproduct">
									<xsl:attribute name="href">
										<xsl:value-of select="/ProductList/NextPageUrl" />
									</xsl:attribute>
									<xsl:text>Xem thêm</xsl:text>
								</a>
							</xsl:if>

						</div>

					</div>
				</div>
			</div>
		</section>
	</xsl:template>

	<xsl:template match="Product">
		<xsl:choose>

			<xsl:when test="floor(ShowOption div 4) mod 2 = 1">
				<div class="banner">
					<a>
						<xsl:attribute name="href">
							<!-- <xsl:value-of select="Url"></xsl:value-of> -->
							<xsl:value-of select="BriefContent"></xsl:value-of>
							<!-- <xsl:value-of select="OldPrice"></xsl:value-of> -->

						</xsl:attribute>
						<xsl:attribute name="target">
							<xsl:value-of select="target"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<img>
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						</img>
					</a>
				</div>
			</xsl:when>
			<xsl:when test="floor(ShowOption div 8) mod 2 = 1">
				<div class="banner_sub">
					<a>
						<xsl:attribute name="href">
							<!-- <xsl:value-of select="Url"></xsl:value-of> -->
							<xsl:value-of select="BriefContent"></xsl:value-of>
							<!-- <xsl:value-of select="OldPrice"></xsl:value-of> -->

						</xsl:attribute>
						<xsl:attribute name="target">
							<xsl:value-of select="target"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<img>
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						</img>
					</a>
				</div>
			</xsl:when>
			<xsl:otherwise>
				<div class="product">
					<figure>
						<div class="boxzoom">
							<img class="img-fluid">
							<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>

							</img>
						</div>
						<figcaption>
							<h3>
								<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>

							</h3>
							<p class="price">
								<xsl:value-of select="Price"></xsl:value-of>

								<span class="discount">
									<xsl:value-of select="OldPrice"></xsl:value-of>

								</span>
							</p>
							<xsl:if test="OldPrice != ''">
							
								<p class="new">
									<xsl:text>-</xsl:text>
									<xsl:call-template name="get-discount-percentage">
										<xsl:with-param name="param-currentPrice" select="Price" />
										<xsl:with-param name="param-oldPrice" select="OldPrice" />
									</xsl:call-template>
									<xsl-text>%</xsl-text>
								</p>
							</xsl:if>

							<xsl:choose>
								<xsl:when test="floor(ShowOption div 1) mod 2 = 1">
									<p class="stt">
										<xsl:text>New</xsl:text>
									</p>
								</xsl:when>

							</xsl:choose>
							<div class="buy-block">
								<a href="#!" class="btn-buy" onclick="AjaxCart.addproducttocart_catalog(this);return false;">
									<xsl:attribute name="data-productid">
										<xsl:value-of select="ProductId"></xsl:value-of>
									</xsl:attribute>
									<div class="btn btn-put btn-buy"> <span class="fas fa-shopping-cart"></span>
										<xsl:text>Cho vào giỏ hàng</xsl:text>

									</div>
								</a>
								<a>
									<xsl:attribute name="href">
										<xsl:value-of select="Url"></xsl:value-of>
									</xsl:attribute>
									<xsl:attribute name="target">
										<xsl:value-of select="target"></xsl:value-of>
									</xsl:attribute>
									<xsl:attribute name="title">
										<xsl:value-of select="Title"></xsl:value-of>
									</xsl:attribute>
									<div class="btn btn-more">Xem thêm</div>
								</a>
								<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>

							</div>
						</figcaption>
					</figure>
				</div>
			</xsl:otherwise>
		</xsl:choose>



	</xsl:template>

	<xsl:template name="get-discount-percentage">
		<xsl:param name="param-currentPrice" />
		<xsl:param name="param-oldPrice" />
		<xsl:variable name="currentPriceFormated">
			<xsl:call-template name="strip-end-characters">
				<xsl:with-param name="text" select="Price" />
				<xsl:with-param name="strip-count" select="2" />
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="oldPriceFormated">
			<xsl:call-template name="strip-end-characters">
				<xsl:with-param name="text" select="OldPrice" />
				<xsl:with-param name="strip-count" select="2" />
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="currentPriceNumber" select="number(translate($currentPriceFormated, '.', ''))">
		</xsl:variable>
		<xsl:variable name="oldPriceNumber" select="number(translate($oldPriceFormated, '.', ''))">
		</xsl:variable>
		<xsl:value-of select="round((1 - ($currentPriceNumber div $oldPriceNumber))*100)"></xsl:value-of>
	</xsl:template>
	<xsl:template name="strip-end-characters">
		<xsl:param name="text" />
		<xsl:param name="strip-count" />
		<xsl:value-of select="substring($text, 1, string-length($text) - $strip-count)" />
	</xsl:template>
</xsl:stylesheet>