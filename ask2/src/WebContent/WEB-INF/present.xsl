<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<!-- TODO: Auto-generated template -->
		<html>
			<body background="Money.jpg">
				<h1 style="text-align:right">
					<font>
						List of
						<xsl:value-of select="name(*/*)" />
						s
					</font>
				</h1>

				<table align="center" border="0">
					<thead>
						<th>
							<xsl:value-of select="name(*/*/@*[1])" />
						</th>
						<th>
							<xsl:value-of select="name(*/*/@*[2])" />
						</th>
						<th>
							<xsl:value-of select="name(*/*/@*[3])" />
						</th>
						<th>
							<xsl:value-of select="name(*/*/*[1])" />
						</th>
						<th>
							<xsl:value-of select="name(*/*/*[2])" />
						</th>
						<th>
							<xsl:value-of select="name(*/*/*[3])" />
						</th>
					</thead>
					<tbody>
						<xsl:apply-templates />
					</tbody>
				</table>

				<form action="index.html">
					<input type="submit" value="Back"/>
				</form>
			</body>

		</html>
	</xsl:template>


	<xsl:template match="/*/*">
		<tr>
			<td>
				<xsl:value-of select="@*[1]" />
			</td>
			<td>
				<xsl:value-of select="@*[2]" />
			</td>
			<td>
				<xsl:value-of select="@*[3]" />
			</td>
			<td>
				<xsl:value-of select="*[1]" />
			</td>
			<td>
				<xsl:value-of select="*[2]" />
			</td>
			<td>
				<xsl:value-of select="*[3]" />
			</td>
		</tr>

	</xsl:template>



</xsl:stylesheet>