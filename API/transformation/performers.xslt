<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:param name="page" select="'1'"/>
  <xsl:param name="pageSize" select="'10'"/>
  <xsl:variable name="start" select="((number($page) - 1) * number($pageSize)) + 1"/>
  <xsl:variable name="end" select="number($page) * number($pageSize)"/>
  <xsl:output method="text" encoding="UTF-8"/>
  <xsl:template match="/festival">
{
  "page": <xsl:value-of select='$page'/>,
  "pageSize": <xsl:value-of select='$pageSize'/>,
  "totalItems": <xsl:value-of select='count(performers/performer)'/>,
  "totalPages": <xsl:value-of select='ceiling(count(performers/performer) div number($pageSize))'/>,
  "items": [
    <xsl:for-each select='performers/performer[position() &gt;= $start and position() &lt;= $end]'>{ "id": "<xsl:value-of select='@id'/>", "name": "<xsl:value-of select='name'/>", "genre": "<xsl:value-of select='@genre'/>", "type": "<xsl:value-of select='@type'/>", "country": "<xsl:value-of select='@country'/>" }<xsl:if test='position()!=last()'>,</xsl:if></xsl:for-each>
  ]
}
  </xsl:template>
</xsl:stylesheet>
