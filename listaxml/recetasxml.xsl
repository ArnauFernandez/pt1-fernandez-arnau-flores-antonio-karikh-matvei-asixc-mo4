<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:html="http://www.w3.org/1999/xhtml">
	<xsl:template match="/">
		<!DOCTYPE html>
		<html xmlns="http://www.w3.org/1999/xhtml">
		<xsl:template match="div[@class='receta']">
  <div class="Rpastas">
    <xsl:copy-of select="node()"/>
  </div>
</xsl:template>

<xsl:template match="a[@class='enlaces']">
  <div class="enlaces">
    <xsl:copy-of select="node()"/>
  </div>
</xsl:template>

<xsl:processing-instruction name="xml-stylesheet"> href="recetasxml.css" type="text/css" </xsl:processing-instruction>
			<head>
				<title>Recetas de pastas - Cocina Online</title>
				<link rel="stylesheet" type="text/css" href="recetasxml.css"/>
			</head>
			<body class="R_body">
				<header>
					<div class="Rpastas">
						<img src="../imatges/Logo-Delicias.png" alt=""/>
					</div>
					<div class="nav_head">
						<nav class="R_nav">
							<a href="../index.html" class="inicio">INICIO</a>
							<a href="#" class="enlaces">SOBRE MI</a>
							<a href="../lista/llista.html" class="recetas">RECETAS</a>
							<a href="../contacto/contacte.html" class="contacto">CONTACTO</a>
							<a href="#" class="enlaces">OTRAS COSAS</a>
						</nav>
					</div>
				</header>

				<main>
					<h2>Listado de recetas</h2>

					<xsl:for-each select="//html:main/html:div[@class='receta']">
						<div class="receta">
							<h3><xsl:value-of select="html:h3"/></h3>
							<p><strong>Tiempo:</strong> <xsl:value-of select="html:p[1]"/></p>
							<p><strong>Dificultad:</strong> <xsl:value-of select="html:p[2]"/></p>
							<a href="../receta/recepta.html" class="enlaces">Ver receta</a>
						</div>
					</xsl:for-each>
				</main>

				<div class="margenFinal"></div>

				<footer>
					<nav class="R_footer">
						<a href="#">FACEBOOK</a>
						<a href="#">TWITTER</a>
						<a href="#">INSTAGRAM</a>
						<a href="#">PINTEREST</a>
						<a href="#">EMAIL</a>
						<a href="#">RSS</a>
					</nav>
				</footer>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>