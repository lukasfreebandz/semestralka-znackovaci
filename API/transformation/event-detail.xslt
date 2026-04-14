<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:param name="id" select="'E001'"/>
  <xsl:output method="text" encoding="UTF-8"/>
  <xsl:template match="/festival"><xsl:for-each select='events/event[@id=$id]'>
{
  "id": "<xsl:value-of select='@id'/>",
  "title": "<xsl:value-of select='title'/>",
  "date": "<xsl:value-of select='@date'/>",
  "time": "<xsl:value-of select='@time'/>",
  "duration": <xsl:value-of select='@duration'/>,
  "performerId": "<xsl:value-of select='@performerRef'/>",
  "venueId": "<xsl:value-of select='@venueRef'/>"
}
  </xsl:for-each></xsl:template>
</xsl:stylesheet>
