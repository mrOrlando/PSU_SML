<?xml version="1.0"?>
<!-- Имя файла: style_students.xsl -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/TR/WD-xsl">
	<xsl:template match="/">
		<H2>Список студентов</H2>
		<xsl:for-each select="students/student">
			<SPAN STYLE="font-style:italic">Фамилия: </SPAN>
			<xsl:value-of select="lastName"/><BR/>
			<SPAN STYLE="font-style:italic">Имя: </SPAN>
			<xsl:value-of select="firstName"/><BR/>
			<SPAN STYLE="font-style:italic">Отчество: </SPAN>
			<xsl:value-of select="middleName"/><BR/>
			<SPAN STYLE="font-style:italic">Дата рождения: </SPAN>
			<xsl:value-of select="birthDate"/><BR/>
			<SPAN STYLE="font-style:italic">Адрес: </SPAN>
			<xsl:value-of select="adres"/><BR /><BR />
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>