<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />


	<xsl:template match="/">

		<section class="ttp-media-2">
			<div class="container">
				<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>

			</div>
		</section>
	</xsl:template>

	<xsl:template match="News">
		<xsl:if test="position() = 1 ">
			<xsl:text disable-output-escaping="yes">&lt;div class="row"&gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;div class="col-lg-3 col-md-6 order-2 order-lg-1"&gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;div class="small"&gt;</xsl:text>

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
							<xsl:value-of select="Title"></xsl:value-of>

						</h3>
						<time>
							<xsl:value-of select="CreatedDD"></xsl:value-of>
							<xsl:text>/</xsl:text>
							<xsl:value-of select="CreatedMM"></xsl:value-of>

							<span>
								<xsl:value-of select="CreatedYYYY"></xsl:value-of>

							</span>
						</time>
					</figcaption>
				</figure>
			</a>
		</xsl:if>
		<xsl:if test="position() = 2 ">

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
							<xsl:value-of select="Title"></xsl:value-of>

						</h3>
						<time>
							<xsl:value-of select="CreatedDD"></xsl:value-of>
							<xsl:text>/</xsl:text>
							<xsl:value-of select="CreatedMM"></xsl:value-of>

							<span>
								<xsl:value-of select="CreatedYYYY"></xsl:value-of>

							</span>
						</time>
					</figcaption>
				</figure>
			</a>
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>

		</xsl:if>
		<xsl:if test="position() = 3 ">
			<xsl:text disable-output-escaping="yes">&lt;div class="col-lg-6 order-1 order-lg-2"&gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;div class="big"&gt;</xsl:text>
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
							<xsl:value-of select="Title"></xsl:value-of>

						</h3>
						<time>
							<xsl:value-of select="CreatedDD"></xsl:value-of>
							<xsl:text>/</xsl:text>
							<xsl:value-of select="CreatedMM"></xsl:value-of>

							<span>
								<xsl:value-of select="CreatedYYYY"></xsl:value-of>

							</span>
						</time>
					</figcaption>
				</figure>
			</a>

			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>

		</xsl:if>
		<xsl:if test="position() = 4 ">
			<xsl:text disable-output-escaping="yes">&lt;div class="col-lg-3 col-md-6 order-3"&gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;div class="small"&gt;</xsl:text>

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
							<xsl:value-of select="Title"></xsl:value-of>

						</h3>
						<time>
							<xsl:value-of select="CreatedDD"></xsl:value-of>
							<xsl:text>/</xsl:text>
							<xsl:value-of select="CreatedMM"></xsl:value-of>

							<span>
								<xsl:value-of select="CreatedYYYY"></xsl:value-of>

							</span>
						</time>
					</figcaption>
				</figure>
			</a>
		</xsl:if>
		<xsl:if test="position() = 5 ">

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
							<xsl:value-of select="Title"></xsl:value-of>

						</h3>
						<time>
							<xsl:value-of select="CreatedDD"></xsl:value-of>
							<xsl:text>/</xsl:text>
							<xsl:value-of select="CreatedMM"></xsl:value-of>

							<span>
								<xsl:value-of select="CreatedYYYY"></xsl:value-of>

							</span>
						</time>
					</figcaption>
				</figure>
			</a>
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>

		</xsl:if>

	</xsl:template>


</xsl:stylesheet>