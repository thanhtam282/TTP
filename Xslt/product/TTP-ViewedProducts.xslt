<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:if test="count(/ProductList/Product)>0">
			<div class="row cart-title">
				<div class="col">
					<h3><span class="far fa-clock"></span><span>Sản phẩm đã xem</span></h3>
				</div>
			</div>
			<div class="swiper-container">
				<div class="swiper-button-prev"><span class="lnr lnr-chevron-left"></span></div>
				<div class="swiper-button-next"><span class="lnr lnr-chevron-right"></span></div>
				<div class="swiper-wrapper">
					<xsl:apply-templates select="/ProductList/Product"></xsl:apply-templates>
				</div>
			</div>
		</xsl:if>
	</xsl:template>


	<xsl:template match="Product">
		<div class="swiper-slide">
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
						<div class="buy-block">
						<a href="javascript:void(0)" onclick="AjaxCart.addproducttocart_catalog(this);return false;">
						<xsl:attribute name="data-productid">
								<xsl:value-of select="ProductId"></xsl:value-of>
							</xsl:attribute>

								<div class="btn btn-put"> <span class="fas fa-shopping-cart"></span>Cho vào giỏ hàng</div>
							</a>
							<a>
								<xsl:attribute name="href">
									<xsl:value-of select="Url"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="target">
									<xsl:value-of select="target"></xsl:value-of>
								</xsl:attribute>

								<div class="btn btn-more">Xem thêm</div>
							</a>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>

						</div>
					</figcaption>
				</figure>
			</div>
		</div>
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