<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml">

  <xsl:output method="html" indent="yes"/>

  <!-- Template para la página principal -->
  <xsl:template match="/">
    <html>
    <head>
      <title class="Titulo">Mis recetas caseras</title>
      <link rel="stylesheet" type="text/css" href="/recetas.css"/>
    </head>
    <body class="R_body">
      <div class="Rpastas">
        <h1 class="inicio">Mis recetas caseras</h1>
        <nav class="R_nav">
          <ul class="enlaces"> 
            <li> <a href="../index.html">INICIO</a></li>
            <li><a href="#" class="enlaces">SOBRE MI</a> </li>
            <li><a href="recetas.xml" class="enlaces">RECETAS</a></li>
            <li><a href="../contacto/contacte.html" class="enlaces">CONTACTO</a></li>
            <li><a href="#" class="enlaces">OTRAS COSAS</a></li>
          </ul>
        </nav>
      </div>
      <xsl:apply-templates/>
      <footer class="R_footer">
        Copyright © 2022
      </footer>
    </body>
    </html>
  </xsl:template>

  <!-- Template para las recetas -->
  <xsl:template match="receta">
    <div class="receta margenFinal">
      <h2 class="texto"><xsl:value-of select="nombre"/></h2>
      <div class="imgCenter">
        <img src="../imatges/lasagna-napolitana.jpg" width="500px" height="300px" alt="Imagen de la receta"/>
      </div>
      <p class="texto">Ingredientes:</p>
      <ul>
        <xsl:for-each select="ingredientes/ingrediente">
          <li><xsl:value-of select="."/></li>
        </xsl:for-each>
      </ul>
      <p class="texto">Pasos:</p>
      <ol>
        <xsl:for-each select="pasos/paso">
          <li><xsl:value-of select="."/></li>
        </xsl:for-each>
      </ol>
    </div>
  </xsl:template>

</xsl:stylesheet>