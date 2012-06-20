<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version='1.0'
    xmlns:xsl='http://www.w3.org/1999/XSL/Transform'
>
	<xsl:output method="xml" indent="yes"/>
	<xsl:template match='/brewery'>
		<doc>
			<field name="id"><xsl:value-of select="id"/></field>
			<field name="doctype">brewery</field>
			<field name="name"><xsl:value-of select="name"/></field>
		</doc>
	</xsl:template>
	<xsl:template match='/beer'>
		<doc>
			<field name="id"><xsl:value-of select="id"/></field>
			<field name="doctype">beer</field>
			<field name="name"><xsl:value-of select="name"/></field>
			<field name="brewery"><xsl:value-of select="brewery_id"/></field>
		</doc>
	</xsl:template>
	<xsl:template match='/place'>
		<doc>
			<field name="id"><xsl:value-of select="id"/></field>
			<field name="doctype">place</field>
			<field name="name"><xsl:value-of select="name"/></field>
		</doc>
	</xsl:template>
</xsl:stylesheet>
