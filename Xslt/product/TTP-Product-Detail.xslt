<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="ttp-product-detail-1">
			<article class="product-details">
				<div class="container">
					<div class="row d-flex">
						<div class="col-lg-6 order-md-1 slider-img">
							<div class="slider-for">
								<xsl:apply-templates select="/ProductDetail/ProductImages" mode="Thumbnail"></xsl:apply-templates>
							</div>
							<div class="slider-control">
								<div class="slider-nav">
									<xsl:apply-templates select="/ProductDetail/ProductImages" mode="Image"></xsl:apply-templates>


								</div><a class="btn top-arrow" href="javascript:void(0)"><i class="fa fa-chevron-left"></i></a><a class="btn bottom-arrow"
								 href="javascript:void(0)"><i class="fa fa-chevron-right"></i></a>
							</div>
						</div>
						<div class="col-lg-6 order-md-2 mb-4 infomation">
							<h2>
								<xsl:value-of select="/ProductDetail/Title"></xsl:value-of>
								<xsl:value-of select="/ProductDetail/EditLink" disable-output-escaping="yes"></xsl:value-of>
							</h2>
							<p>
								<!-- Thương hiệu: <span>Đang cập nhật</span>Tình trạng:<span>Còn hàng</span> -->
								<xsl:value-of select="/ProductDetail/SubTitle"></xsl:value-of>

							</p>
							<div class="table-responsive">
								<table class="table">
									<tbody>
										<tr>
											<th>Giá</th>
											<th>
												<xsl:value-of select="/ProductDetail/Price"></xsl:value-of>

												<span>
													<xsl:value-of select="/ProductDetail/OldPrice"></xsl:value-of>

												</span>
											</th>
										</tr>
										<tr>
											<td>Công dụng chính</td>

											<td>
												<xsl:value-of select="/ProductDetail/BriefContent" disable-output-escaping="yes"></xsl:value-of>

											</td>
										</tr>
										<tr>
											<td>Dung tích</td>
											<td>
												<!-- <xsl:value-of select="/ProductDetail/CodePrice"></xsl:value-of> -->
												<!-- <xsl:value-of select="Code"></xsl:value-of> -->
												<xsl:value-of select="/ProductDetail/Code"></xsl:value-of>



											</td>
										</tr>
										<!-- <xsl:value-of select="/ProductDetail/BriefContent" disable-output-escaping="yes"></xsl:value-of> -->

										<tr>
											<td>Số lượng</td>
											<td>
												<div class="quantity">

													<div class="form-group">
														<input type="text" value="1">
														<xsl:attribute name="name">
															<xsl:text>addtocart_</xsl:text>
															<xsl:value-of select="/ProductDetail/ProductId" disable-output-escaping="yes"></xsl:value-of>
															<xsl:text>.EnteredQuantity</xsl:text>
														</xsl:attribute>

														</input>
													</div>
												</div>
											</td>
										</tr>
									</tbody>
								</table>
							</div>

							<a class="btn btn-buy" href="#!" data-action="addcart" data-url="" onclick="AjaxCart.addproducttocart_details(this); return false;">
								<xsl:attribute name="data-productid">
									<xsl:value-of select="/ProductDetail/ProductId"></xsl:value-of>
								</xsl:attribute>
								Mua sản phẩm
							</a>
							<div class="social-networks nav">
								<div class="nav-item">
									<div class="fb-share-button" data-href="" data-layout="button" data-size="small" data-mobile-iframe="true"><a
										 class="fb-xfbml-parse-ignore" target="_blank" href="">Chia sẻ</a></div>
								</div>
								<div class="nav-item"><a class="twitter-share-button" href="https://twitter.com/share" data-size="medium"
									 data-text="custom share text" data-url="" data-via="twitterdev" data-related="twitterapi,twitter">Tweet</a></div>
								<div class="nav-item">
									<div class="g-plusone" data-size="tall"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</article>
		</section>
		<section class="ttp-product-detail-2">
			<div class="container">
				<div class="row">
					<div class="col">
						<ul class="nav nav-tabs" id="myTab" role="tablist">
							<li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#tab-1">Thông tin sản phẩm </a></li>
							<li class="nav-item"><a class="nav-link" data-toggle="tab" href="#tab-2">đánh giá</a></li>
						</ul>
					</div>
				</div>
			</div>
		</section>
		<section class="ttp-product-detail-3">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="tab-content" id="myTabContent">
							<div class="tab-pane fade show active" id="tab-1">
								<div class="detail">
									<xsl:value-of select="/ProductDetail/FullContent" disable-output-escaping="yes"></xsl:value-of>

								</div><a class="btn btn-more" href="javascript:void(0)"><span class="fas fa-chevron-down"></span></a>
							</div>
							<div class="tab-pane fade" id="tab-2">
								<div class="review">
								<h3>Khách hàng nhận xét<a class="btn btn-review" href="#!">viết đánh giá</a>
										</h3>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<section class="ttp-product-detail-4">
			<div class="container">
				<div class="row">
					<div class="col">
						<h2>Sản phẩm cùng loại</h2>
					</div>
				</div>
				<div class="row">
					<div class="col">
						<div class="owl-carousel owl-theme wrapper-img">
							<xsl:apply-templates select="/ProductDetail/ProductOther"></xsl:apply-templates>



						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>


	<xsl:template match="ProductAttributes">
		<xsl:if test="position()>1">
			<div class="tab-content">
				<div class="tab-title">
					<h4>
						<xsl:value-of select="Title"></xsl:value-of>
					</h4>
				</div>
				<div class="tab-table">
					<xsl:value-of select="Content" disable-output-escaping="yes"></xsl:value-of>
				</div>
			</div>
		</xsl:if>
	</xsl:template>



	<xsl:template match="ProductAttributes" mode="Download">
		<div class="tab-body">
			<div class="tab-table">
				<xsl:if test="position()=1">
					<xsl:value-of select="Content" disable-output-escaping="yes"></xsl:value-of>
				</xsl:if>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="ProductImages" mode="Image">
		<div class="item">
			<div class="img">
				<img>
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				</img>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="ProductImages" mode="Thumbnail">
		<div class="item">
			<a>
				<xsl:attribute name="href">
					<xsl:value-of select="ThumbnailUrl"></xsl:value-of>
				</xsl:attribute>
				<figure>
					<div class="img">
						<img>
						<xsl:attribute name="src">
							<xsl:value-of select="ThumbnailUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						</img>

					</div>
				</figure>
			</a>
		</div>
	</xsl:template>

	<xsl:template match="ProductOther">
		<xsl:choose>


			<xsl:when test="floor(ShowOption div 4) mod 2 = 1">
					<div class="banner-remove">
						</div>
			</xsl:when>
			<xsl:when test="floor(ShowOption div 8) mod 2 = 1">
					<div class="banner-remove">
						</div>
			</xsl:when>
			<xsl:otherwise>

				<div class="item">
					<div class="product">
						<figure>
							<div class="boxzoom">
								<img>
								<xsl:attribute name="src">
									<xsl:value-of select="ThumbnailUrl"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="alt">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>
								</img>
							</div>
							<figcaption>
								<h3>
									<xsl:value-of select="Title"></xsl:value-of>

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
								<div class="buy-block"><a href="#">
										<div class="btn btn-put"> <span class="fas fa-shopping-cart"></span>Cho vào giỏ hàng</div>
									</a>
									<a>
										<xsl:attribute name='href'>
											<xsl:value-of select='Url'></xsl:value-of>
										</xsl:attribute>
										<xsl:attribute name='target'>
											<xsl:value-of select='Title'></xsl:value-of>
										</xsl:attribute>
										<div class="btn btn-more">Xem thêm</div>
									</a>
									<xsl:value-of select="/ProductDetail/EditLink" disable-output-escaping="yes"></xsl:value-of>

								</div>
							</figcaption>
						</figure>
					</div>
				</div>
			</xsl:otherwise>
		</xsl:choose>

	</xsl:template>


	<xsl:template match="ProductRelated">
		<div class="item">
			<div class="product-col">
				<xsl:choose>
					<xsl:when test="floor(ShowOption div 1) mod 2 = 1">
						<div class="promotion op1">
							<span>
								<xsl:value-of select="/ProductDetail/NewText"></xsl:value-of>
							</span>
						</div>
					</xsl:when>
					<xsl:when test="floor(ShowOption div 2) mod 2 = 1">
						<span class="promotion op2">
							<xsl:value-of select="/ProductDetail/SaleText"></xsl:value-of>
						</span>
					</xsl:when>
				</xsl:choose>
				<figure>
					<a class="product-img">
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="target">
							<xsl:value-of select="Target"></xsl:value-of>
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
					<figcaption>
						<div class="product-name">
							<a class="btn-detail">
								<xsl:attribute name="href">
									<xsl:value-of select="Url"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="title">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>
								<xsl:value-of select="Code"></xsl:value-of>
							</a>
						</div>
						<div class="product-price">
							<xsl:if test="OldPrice != ''">
								<div class="old">
									<xsl:value-of select="OldPrice"></xsl:value-of>
								</div>
							</xsl:if>
							<xsl:if test="Price != ''">
								<div class="new">
									<xsl:value-of select="Price"></xsl:value-of>
								</div>
							</xsl:if>
						</div>
						<a class="buy" onclick="AjaxCart.addproducttocart_catalog(this);return false;">
							<xsl:attribute name="data-productid">
								<xsl:value-of select="ProductId"></xsl:value-of>
							</xsl:attribute>
							<span>
								<xsl:value-of select="/ProductDetail/BuyText"></xsl:value-of>
							</span>
							<i class="fa fa-shopping-bag" aria-hidden="true"></i>
						</a>
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