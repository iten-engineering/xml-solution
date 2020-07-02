<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<!-- Start Verarbeitung --> 
	<xsl:template match = "/">
	<html>
		<head>
			<title>Personenverzeichnis</title>
		</head>
		<body>
			<h1>Personenverzeichnis</h1>
			<table border="1">
				<tr>
					<th>Vorname</th>
					<th>Nachname</th>
				</tr>
   				<!-- Aufruf weitere Templates f�r alle XML Personen -->
   				<xsl:apply-templates select="directory/person"/>
			</table>
		</body>
	</html>
	</xsl:template>

	<!-- Template f�r die Elemente "person"  -->
	<xsl:template match="//person">
	<tr>
  		<td><xsl:value-of select="vorname"/></td>
  		<td><xsl:value-of select="nachname"/></td>
	</tr>
	</xsl:template>

</xsl:stylesheet>