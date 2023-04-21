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
          <xsl:for-each select="garden/planta[temps_floracio='Estiu']">
            <li>
            </li>
          </xsl:for-each>
        </ul>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
<!-- no entiendo que tengo que hacer  :(())-->