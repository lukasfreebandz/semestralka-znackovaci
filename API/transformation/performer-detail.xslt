<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:param name="id" select="'P001'"/>
  <xsl:output method="text" encoding="UTF-8"/>
  <xsl:template match="/festival"><xsl:for-each select='performers/performer[@id=$id]'>
{
  "id": "<xsl:value-of select='@id'/>",
  "name": "<xsl:value-of select='name'/>",
  "genre": "<xsl:value-of select='@genre'/>",
  "type": "<xsl:value-of select='@type'/>",
  "country": "<xsl:value-of select='@country'/>"
}
  </xsl:for-each></xsl:template>
</xsl:stylesheet>
