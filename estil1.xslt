<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8"/>
  <xsl:template match="/">
    <html>
      <body>
        <ul>
          <xsl:apply-templates select="//planta"/>
        </ul>
      </body>
    </html>
  </xsl:template>
  <xsl:template match="planta">
    <li>
      <xsl:value-of select="nom"/>
      <ul>
        <li>
          <xsl:value-of select="especie"/>
          <ul>
            <li>
              <xsl:value-of select="color"/>
            </li>
            <li>
              <xsl:value-of select="temps_floracio"/>
            </li>
          </ul>
        </li>
      </ul>
    </li>
  </xsl:template>
</xsl:stylesheet>