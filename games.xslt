<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" indent="yes"/>

<xsl:template match="/">
  <html>
    <head>
      <title>Basketball Scores</title>
    </head>
    <body style="font-family:Arial; font-size:1.2em">
      <font size="10">
        <b>Basketball Scores, Fall 2015</b>
      </font>
      <br />
      <xsl:for-each select="teamscores/season/game">
        <xsl:sort select="date"/>
        Date:
        <xsl:value-of select="date"/>
        <br />
        <xsl:value-of select="team1"/>
        <br />
        <xsl:value-of select="team2"/>
        <p />
      </xsl:for-each>

    </body>
  </html>
    </xsl:template>
</xsl:stylesheet>
