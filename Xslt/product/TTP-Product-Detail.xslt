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
										<!-- <tr>
											<td>Công dụng chính</td>
											<td>Công Dụng Bất Ngờ Hỗ Trợ Sức Khỏe Đến Từ Tinh Dầu Hoa Hồng Hoa hồng vốn được mệnh danh là nữ hoàng của
												các loài hoa...</td>
										</tr>
										<tr>
											<td>Dung tích</td>
											<td>500 ml</td>
										</tr> -->
										<xsl:value-of select="/ProductDetail/BriefContent" disable-output-escaping="yes"></xsl:value-of>

										<tr>
											<td>Số lượng</td>
											<td>
												<div class="quantity">
													<div class="form-group">
														<input id="demo1" type="text" value="55" name="demo1">
													</input>
													</div>
												</div>
											</td>
										</tr>
									</tbody>
								</table>
							</div><a class="btn btn-buy" href="#">mua sản phẩm</a>
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
								<div class="detail">
									<xsl:value-of select="/ProductDetail/FullContent" disable-output-escaping="yes"></xsl:value-of>

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
				<xsl:attribute name="hreft">
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

							</span></p>
						<p class="new">- 20%</p>
						<div class="buy-block"><a href="#">
								<div class="btn btn-put"> <span class="fas fa-shopping-cart"></span>Cho vào giỏ hàng</div>
							</a><a href="/product-detail.html">
								<div class="btn btn-more">Xem thêm</div>
							</a></div>
					</figcaption>
				</figure>
			</div>
		</div>
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

</xsl:stylesheet>