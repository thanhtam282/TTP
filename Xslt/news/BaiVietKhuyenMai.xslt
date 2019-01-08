<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />


	<xsl:template match="/">
		<section class="ttp-promotion-1">
			<div class="container">
				<div class="row">
					<div class="col-11 mx-auto">
						<h1>
							<xsl:value-of select="/NewsList/ZoneTitle"></xsl:value-of>

						</h1>

					</div>
				</div>
				<div class="row ajaxwrapper">
					<div class="col-11 mx-auto ">
						<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>


						<div class="row">
							<div class="col">
								<!-- <a class="btn btn-show-more" href="promotion-detail.html">Xem thêm</a> -->

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
				</div>
			</div>
		</section>

	</xsl:template>




	<!--Begin News Child-->
	<xsl:template match="News">
		<!-- item 1 -->
		<xsl:if test="position() = 1 ">
			<xsl:text disable-output-escaping="yes">&lt;div class="row"&gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;div class="col-lg-8"&gt;</xsl:text>
			<a>
				<xsl:attribute name='href'>
					<xsl:value-of select='Url'></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name='target'>
					<xsl:value-of select='Title'></xsl:value-of>
				</xsl:attribute>
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
			</a>
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>

		</xsl:if>

		<!-- item 2, 3 -->
		<xsl:if test="position() = 2">
			<xsl:text disable-output-escaping="yes">&lt;div class="col-lg-4"&gt;</xsl:text>
			<a>
				<xsl:attribute name='href'>
					<xsl:value-of select='Url'></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name='target'>
					<xsl:value-of select='Title'></xsl:value-of>
				</xsl:attribute>
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
			</a>
		</xsl:if>

		<xsl:if test="position() = 3 ">
			<a>
				<xsl:attribute name='href'>
					<xsl:value-of select='Url'></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name='target'>
					<xsl:value-of select='Title'></xsl:value-of>
				</xsl:attribute>
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
			</a>
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>

		</xsl:if>
		<!-- item last -->
		<xsl:if test="position() = 4 ">
			<xsl:text disable-output-escaping="yes">&lt;div class="row sub"&gt;</xsl:text>

		</xsl:if>
		<xsl:if test="position() > 3 ">
			<div class="col-lg-4 col-sm-4 col-12">
				<a>
					<xsl:attribute name='href'>
						<xsl:value-of select='Url'></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name='target'>
						<xsl:value-of select='Title'></xsl:value-of>
					</xsl:attribute>
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
				</a>
			</div>
		</xsl:if>

		<xsl:if test="position() = last() ">
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>

		</xsl:if>


	</xsl:template>









</xsl:stylesheet>