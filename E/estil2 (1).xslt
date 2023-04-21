<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
  <xsl:template match="/">
    <html>
      <head>
        <title>Ejemplo XSLT</title>
      </head>
      <body>
        <h1 style="color: green;"> ANIMALS </h1>
        <ol>
            <xsl:for-each select="zoo/animal[color='Verd']">
              <li><xsl:value-of select="nom"/></li>
              <ul>
                <li><xsl:value-of select="especie"/></li>
                <li><xsl:value-of select="edat"/></li>
                <li><xsl:value-of select="color"/></li>
              </ul>
            </xsl:for-each>
            
        </ol>
      </body>
    </html>
  </xsl:template>
  
</xsl:stylesheet>