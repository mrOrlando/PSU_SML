<?xml version="1.0"?>
<!-- Имя файла: students_template_4.xsl -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/TR/WD-xsl">
	<xsl:template match="/">
		<H2>Список студентов (apply-templates)</H2>

		<p>Создайте файл с XSL-таблицей стилей с использованием элемента "xsl:for-each", который фильтрует студентов по полу (например, по женскому) и располагает их в алфавитном порядке. Результат необходимо отобразить в браузере Internet Explorer в виде таблицы. Создайте такой же файл, но с использованием элемента "xsl:apply-templates".</p>

		<table border="1">
			<tr><th>Фамилия</th><th>Имя</th><th>Отчество</th><th>Дата рождения</th><th>Адрес</th></tr>
			<xsl:apply-templates select="students/student" order-by="+lastName;+firstName;+middleName" />
		</table>

	</xsl:template>

	<xsl:template match="students/student[@Sex='female']">
		<tr>
			<td><xsl:value-of select="lastName"/></td>
			<td><xsl:value-of select="firstName"/></td>
			<td><xsl:value-of select="middleName"/></td>
			<td><xsl:value-of select="birthDate"/></td>
			<td><xsl:value-of select="adres"/></td>
		</tr>
	</xsl:template>

</xsl:stylesheet>