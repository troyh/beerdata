<?xml version="1.0" encoding="UTF-8" ?>
<!--
	untitled
	Created by Troy Hakala on 2011-05-17.
	Copyright (c) 2011 __MyCompanyName__. All rights reserved.
-->

<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output encoding="UTF-8" indent="yes" method="xml" />

	<xsl:template match="/beer/styles/style/text()">
		<xsl:element name="name">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
		
	<xsl:template match="*">
		<xsl:copy>
			<xsl:apply-templates select="node()"/>
		</xsl:copy>
	</xsl:template>
	
</xsl:stylesheet>
