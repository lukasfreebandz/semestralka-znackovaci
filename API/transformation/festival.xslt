<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="text" encoding="UTF-8"/>
  <xsl:template match="/festival">
{
  "id": "<xsl:value-of select='@id'/>",
  "name": "<xsl:value-of select='@name'/>",
  "edition": <xsl:value-of select='@edition'/>,
  "description": "<xsl:value-of select='description'/>",
  "summary": "<xsl:value-of select='summary'/>",
  "startDate": "<xsl:value-of select='@startDate'/>",
  "endDate": "<xsl:value-of select='@endDate'/>",
  "location": "<xsl:value-of select='identity/location'/>",
  "tickets": {
    "currency": "<xsl:value-of select='tickets/@currency'/>",
    "presalePrice": <xsl:value-of select='tickets/@presalePrice'/>,
    "regularPrice": <xsl:value-of select='tickets/@regularPrice'/>,
    "url": "<xsl:value-of select='tickets/@url'/>"
  },
  "links": [
    <xsl:for-each select='links/link'>{ "rel": "<xsl:value-of select='@rel'/>", "href": "<xsl:value-of select='@href'/>" }<xsl:if test='position()!=last()'>,</xsl:if></xsl:for-each>
  ]
}
  </xsl:template>
</xsl:stylesheet>
