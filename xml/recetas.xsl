<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmnls:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<!DOCTYPE html>
<html>
  <head>
    <title>Recepta</title>
    <link rel="stylesheet" type="text/css" href="../css/estiloRecetas.css">
  </head>
  <body>
    <header>
      <div style="text-align: center">
      <img src="../imatges/Logo-Delicias.png" alt="="/>
      </div>
      <div class="nav_head" >
      <nav class="R_nav">
        <a href="../index.html">INICIO</a>
        <a href="#" class="enlaces">SOBRE MI</a>
        <a href="../lista/llista.html" class="enlaces">RECETAS</a>
        <a href="../contacto/contacte.html" class="enlaces">CONTACTO</a>
        <a href="#" class="enlaces">OTRAS COSAS</a>
      </nav>
      </div>
      </header>
      <div class="imgCenter">
        <img src="../imatges/lasagna-napolitana.jpg" width="500px" height="500px" alt="fotos">
      </div>
    <xsl:for-each select="recetas/receta">
      <div class="texto">
        <p>Lasaña de carne casera. Receta tradicional paso a paso</p>
      </div>
      <div class="texto">
        <h3>Ingredientes</h3>
    <ol>
      <li>Para el relleno (boloñesa de carne): 500 g. de carne (una mezcla de cerdo y ternera)</li>
      <li>2 pimientos rojos</li>
      <li>2 zanahorias</li>
      <li>2 dientes de ajo</li>
      <li>150 g. de bacon o panceta</li>
      <li>2 cebollas grandes</li>
      <li>250 g. de tomate natural (1 vaso aproximadamente)</li>
      <li>250 ml de vino blanco (200 ml. aproximadamente)</li>
      <li>100 ml. de aceite de oliva virgen extra</li>
      <li>1 cucharita colmada de orégano seco (o hierbas provenzales)</li>
      <li>Sal y pimienta negra recién molida (al gusto de cada casa)</li>
      <li>Para la lasaña:</li>
      <li>12 láminas de lasaña o lasagna Garofalo</li>
      <li>Para hacer la bechamel: (para un litro más o menos, la suficiente para la lasaña): 125 g de harina de trigo de todo uso</li>
      <li>125 g de mantequilla</li>
      <li>1 litro de leche entera</li>
      <li>Una pizca de nuez moscada (unos 4 g.)</li>
      <li>Sal y pimienta negra recién molida (al gusto de cada casa)</li>
      <li>Para finalizar y gratinar la lasaña: 100-120 g. de queso rallado Grana Padano (o mezcla con vuestro queso preferido para gratinar)
      </li>
    </ol>
      </div>
      <div class="texto">
        <h3>Preparación de la lasaña de carne</h3>
        <ol>
          <li>Calentamos una cazuela grande de agua, la más ancha de casa. Cuando empiece a hervir echamos 2 puñados generosos de sal.</li>
          <li>Introducimos las láminas de lasaña una a una sin que se toquen (para que no se peguen entre ellas). Ahora podemos encontrar infinidad de tipos de lasaña donde no hace hidratarla como se hacía antes. En casa muchas veces para ahorrar tiempo empleo las que se hidratan con la bechamel y el jugo que suelta la salsa al hornear.</li>
          <li>Si lo hacéis de la manera tradicional tenemos que remover con una cuchara de madera y en unos 10 minutos sacamos las láminas. Las estiramos encima de unas hojas de papel absorbente de cocina. Aunque os parezca que no están, acabarán haciéndose en el horno.</li>
          <li>El siguiente paso será lavar muy bien todas las verduras que vamos a emplear en el relleno. En la receta os aconsejo el relleno de la clásica salsa boloñesa, zanahorias, ajo, pimientos y cebolla.</li>
        </ol>
        <h3>Cómo hacer el relleno de lasaña de carne</h3>
        <ol>
          <li>Las verduras las cortamos en trocitos pequeños para que se junten bien en la salsa. Las zanahorias las cortamos lo más fino posible. Os recomiendo laminarlas con el pelador de las patatas porque a la hora de pocharlas si las tiras son gruesas no se hacen. Reservamos todo en un bol</li>
          <li>En otra cazuela echamos aceite de oliva virgen extra. Empezamos introduciendo pochando la cebolla y el ajo, cuando esté doradita, añadimos el resto de ingredientes</li>
          <li>Sofreímos todo a temperatura media durante unos 15 minutos y esperamos por la carne. Salpimentamos la carne al gusto y la echamos a la cazuela con la verdura. Dejamos que se pase durante 5 minutos y cuando veamos que va cambiando de color introducimos el bacon o panceta en trozos muy pequeños. Vertemos un vaso de vino blanco y esperamos a que reduzca (otros 5 minutos a fuego medio).</li>
          <li>Añadimos un vaso de tomate natural, echamos la cucharadita de orégano y rectificamos de sal y pimienta si hiciese falta (probad la salsa para ver si está a vuestro gusto). Removemos la carne con las verduras y retiramos del fuego, dejamos enfriar un poco.</li>
          <li>Precalentamos el horno a 200º C durante 15 minutos, lo justo para hacer el resto de la lasaña.</li>
        </ol>
        <h3>Preparación de la salsa bechamel y final de la receta</h3>
        <ol>
          <li>Mientras reposa la salsa vamos a preparar la bechamel, la podemos preparar más cremosa o más consistente dependiendo de las medidas. En el blog tenéis la receta de esta crema con todo lujo de detalles.</li>
          <li>Para montar la lasaña la cosa es muy sencilla. Ponemos en el fondo de la fuente unas cucharadas de la bechamel. Encima las láminas, una capa de la mezcla con la carne en cada lámina, otra vez la bechamel y así hasta tener 3 pisos.</li>
          <li>Se pueden hacer las capas de lasaña que quieras, bueno las que te permita la fuente. Finalmente rematamos con una capa generosa de bechamel. Y para aquellos que le guste el queso, rallamos aquel que más os guste, que sea especial para gratinar. Os recomiendo un queso curadito Grana Padano.</li>
          <li>Horneamos en la bandeja del medio durante 15 minutos a 180º C y durante 3-5 minutos en la parte superior con el gratinador puesto para que se dore. Lista para comer, no hace falta reposo, del horno a la mesa.</li>
          <li>Esta receta además de ser económica es una receta saludable, llena de proteínas e hidratos. Yo la presento siempre como plato único, espero que os guste.</li>
        </ol>
      </div>
      
      <div class="margenFinal"></div>
      <footer>
        <nav class="R_footer" >FACEBOOK TWITTER INSTAGRAM PINTEREST EMAIL RSS</nav>
      </footer>
  </body>
</html>