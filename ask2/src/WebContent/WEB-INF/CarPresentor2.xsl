<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<head>
				<title>Listing Vehicles</title>
			</head>
			<body background="Money.jpg">
				<h1
					style="background-color: #446600;
          color: #FFFFFF; font-size: 20pt; text-align: center;
          letter-spacing: 1.0em">Used Vehicles</h1>
				<table align="center" border="2">
					<tr>
						<th>Year</th>
						<th>Model</th>
						<th>Mileage</th>
						<th>Color</th>
						<th>Price</th>
					</tr>

					<xsl:apply-templates/>					
</table>
</body>
</html>
</xsl:template>

					
	<xsl:template match="vehicles/vehicle">
	<tr>
			<td><xsl:value-of select="@year"/></td>
			<td><xsl:value-of select="@model"/></td>		
			<td><xsl:value-of select="mileage"/></td>
			<td><xsl:value-of select="color"/></td>
			<td><xsl:value-of select="price"/></td>
	</tr>
	</xsl:template>
	


</xsl:stylesheet>
