 <!-- 
Antonio Flores
21/04/2023
M04 Pe1B 
  -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
  <xsl:output method="html"/>
  
  <xsl:template match="/">
    <html>
      <body>
        <ul>
          <xsl:apply-templates select="garden/planta"/>
        </ul>
      </body>
    </html>
  </xsl:template>
  
  <xsl:template match="planta">
    <li>
      <xsl:value-of select="nom"/>
      <ul>
        <li><xsl:value-of select="especie"/></li>
        <li><xsl:value-of select="color"/></li>
        <li><xsl:value-of select="temps_floracio"/></li>
      </ul>
    </li>
  </xsl:template>
  
</xsl:stylesheet>

