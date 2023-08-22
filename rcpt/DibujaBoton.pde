void dibujaBotonRectangular(float x, float y, float width, float height, String textos) {
  // Establecer colores para el botón
  color fondo = color(200);
  color borde = color(100);
  color efectoOver = color(153,50,204);

  // Dibujar el fondo del botón
  if ( colisionConBotonRectangular(x, y, width, height)) {
    fill(efectoOver);
  } else {
    fill(fondo);
  }
  stroke(borde);
  rectMode(CENTER);
  rect(x, y, width, height);

  // Dibujar el texto dentro del botón
  fill(0); // Establecer color negro para el texto
  textAlign(CENTER, CENTER); // Alinear el texto al centro del botón
  textSize(16); // Tamaño del texto
  text(textos, x, y ); // Posicionar el texto en el centro del botón
}


boolean colisionConBotonRectangular(float x, float y, float width, float height ) {
  //este boton evalua si el mouse esta sobre el boton
  boolean colisiona;
  if ( mouseX>x-width/2 && mouseX<x+width/2 &&
    mouseY>y-height/2 && mouseY<y+height/2 ) {
    colisiona = true;
  } else {
    colisiona = false;
  }
  return colisiona;
}
