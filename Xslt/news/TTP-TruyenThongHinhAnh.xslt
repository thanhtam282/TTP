<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
    exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />

    <xsl:template match="/">


        <section class="ttp-media-photo-1">
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

            <div class="wrapper-gallery">

                <div class="box-zoom">
                    <xsl:apply-templates select='NewsImages'></xsl:apply-templates>
                </div>
            </div>
        </xsl:if>
        <xsl:if test="position() = 2 ">

            <div class="wrapper-gallery">

                <div class="box-zoom">
                    <xsl:apply-templates select='NewsImages'></xsl:apply-templates>
                </div>
            </div>
            <xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
            <xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>

        </xsl:if>
        <xsl:if test="position() = 3 ">
            <xsl:text disable-output-escaping="yes">&lt;div class="col-lg-6 order-1 order-lg-2"&gt;</xsl:text>
            <xsl:text disable-output-escaping="yes">&lt;div class="big"&gt;</xsl:text>
            <div class="wrapper-gallery">

                <div class="box-zoom">
                    <xsl:apply-templates select='NewsImages'></xsl:apply-templates>
                </div>
            </div>
            <xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
            <xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>

        </xsl:if>
        <xsl:if test="position() = 4 ">
            <xsl:text disable-output-escaping="yes">&lt;div class="col-lg-3 col-md-6 order-3"&gt;</xsl:text>
            <xsl:text disable-output-escaping="yes">&lt;div class="small"&gt;</xsl:text>
            <div class="wrapper-gallery">

                <div class="box-zoom">
                    <xsl:apply-templates select='NewsImages'></xsl:apply-templates>
                </div>
            </div>
        </xsl:if>
        <xsl:if test="position() = 5 ">

            <div class="wrapper-gallery">

                <div class="box-zoom">
                    <xsl:apply-templates select='NewsImages'></xsl:apply-templates>
                </div>
            </div>
            <xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
            <xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
            <xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>

        </xsl:if>

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