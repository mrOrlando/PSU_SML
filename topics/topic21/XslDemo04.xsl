<?xml version="1.0"?>
<!-- Имя файла: xslDemo04.xsl -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/TR/WD-xsl">

	<xsl:template match="/">
		<H2>Описание книги</H2>
		<xsl:apply-templates select="INVENTORY/BOOK" />
	</xsl:template>

	<xsl:template match="BOOK">
		<SPAN STYLE="font-style:italic">Автор: </SPAN>
		<xsl:value-of select="AUTHOR"/><BR/>
		<SPAN STYLE="font-style:italic">Заголовок: </SPAN>
		<xsl:value-of select="TITLE"/><BR/>
		<SPAN STYLE="font-style:italic">Цена: </SPAN>
		<xsl:value-of select="PRICE"/><BR/>
		<SPAN STYLE="font-style:italic">Тип обложки: </SPAN>
		<xsl:value-of select="BINDING"/><BR/>
		<SPAN STYLE="font-style:italic">Количество страниц: </SPAN>
		<xsl:value-of select="PAGES"/><P />
	</xsl:template>

</xsl:stylesheet>