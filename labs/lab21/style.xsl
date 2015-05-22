<?xml version="1.0"?>
<!-- Имя файла: style.xsl -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/TR/WD-xsl">

	<xsl:template match="/">
		<H3>ЛР 21</H3>
		<xsl:apply-templates select="students/text" />
		<!-- <xsl:apply-templates select="students/text/p" /> -->
	</xsl:template>

	<xsl:template match="text">
		<SPAN STYLE="font-style:italic">Заголовок: </SPAN>
		<b><xsl:value-of select="title"/></b><BR/>
		<xsl:apply-templates select="p" />
	</xsl:template>

	<xsl:template match="p">
		<SPAN STYLE="font-style:italic">Абзац: </SPAN>
		<xsl:value-of/><BR/>
	</xsl:template>

</xsl:stylesheet>