<?xml version="1.0"?>
<!-- Имя файла: XslDemo0l.xsl -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/TR/WD-xsl">
	<xsl:template match="/">
		<H2>Описание книги</H2>
		<SPAN STYLE="font-style:italic">Автор: </SPAN>
		<xsl:value-of select="BOOK/AUTHOR"/><BR/>
		<SPAN STYLE="font-style:italic">Заголовок: </SPAN>
		<xsl:value-of select="BOOK/TITLE"/><BR/>
		<SPAN STYLE="font-style:italic">Цена: </SPAN>
		<xsl:value-of select="BOOK/PRICE"/><BR/>
		<SPAN STYLE="font-style:italic">Тип обложки: </SPAN>
		<xsl:value-of select="BOOK/BINDING"/><BR/>
		<SPAN STYLE="font-style:italic">Количество страниц: </SPAN>
		<xsl:value-of select="BOOK/PAGES"/>
	</xsl:template>
</xsl:stylesheet>