 <!-- 
Antonio Flores
21/04/2023
M04 Pe1B 
  -->
  <xsl:template match="/">
    <html>
      <body>
        <h2>Plantes de floració Estiu:</h2>
        <ul>
          <!-- Recorre cada elemento "planta" que tenga "temps_floracio" igual a "Estiu" -->
          <xsl:for-each select="garden/planta[temps_floracio='Estiu']">
            <li>
              <strong><xsl:value-of select="nom"/></strong>
              <ul>
                <li>Especie: <xsl:value-of select="especie"/></li>
                <li>Color: <xsl:value-of select="color"/></li>
                <li>Temps de floració: <xsl:value-of select="temps_floracio"/></li>
              </ul>
            </li>
          </xsl:for-each>
        </ul>
      </body>
    </html>
  </xsl:template>
  
</xsl:stylesheet>
