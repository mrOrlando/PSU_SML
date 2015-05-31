<?xml version="1.0"?>
<!-- Имя файла: students_for_4.xsl -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/TR/WD-xsl">
	<xsl:template match="/">
		<H2>Список студентов (for-each)</H2>

		<p>Создайте файл с XSL-таблицей стилей с использованием элемента "xsl:for-each", который фильтрует студентов по полу (например, по женскому) и располагает их в алфавитном порядке. Результат необходимо отобразить в браузере Internet Explorer в виде таблицы.</p>

		<table border="1">
			<tr><th>Фамилия</th><th>Имя</th><th>Отчество</th><th>Дата рождения</th><th>Адрес</th></tr>

			<xsl:for-each select="students/student[@Sex='female']" order-by="+lastName;+firstName;+middleName">
				<tr>
					<td><xsl:value-of select="lastName"/></td>
					<td><xsl:value-of select="firstName"/></td>
					<td><xsl:value-of select="middleName"/></td>
					<td><xsl:value-of select="birthDate"/></td>
					<td><xsl:value-of select="adres"/></td>
				</tr>
			</xsl:for-each>

		</table>
	</xsl:template>
</xsl:stylesheet>