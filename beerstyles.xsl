<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output encoding="UTF-8" indent="yes" method="xml" />

	<xsl:template match="/beerstyles">
		<xsl:element name="styles">
			<xsl:apply-templates select="@*"/>
			<xsl:apply-templates select="node()"/>
		</xsl:element>
	</xsl:template>

	<xsl:template match="//styles">
		<xsl:element name="style">
			<xsl:apply-templates select="@*"/>
			<xsl:apply-templates select="node()"/>
		</xsl:element>
	</xsl:template>
		
	<xsl:template match="@*">
		<xsl:copy/>
	</xsl:template>

	<xsl:template match="*">
		<xsl:copy>
			<xsl:apply-templates select="node()"/>
		</xsl:copy>
	</xsl:template>
	
</xsl:stylesheet>
