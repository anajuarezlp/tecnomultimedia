void dibujaPantalla( PImage fondos, String textos ) {
  push();
  imageMode(CORNER);
  image(fondos, 0, 0, width, height);
  fill(0, 255, 255, 90);
  rectMode(CORNER);
  rect(0, height/3*2, width, height/3);
  fill(#EFF55E);
  textSize(40);
  textLeading(40);
  textAlign(CENTER,CENTER);
  text( texto, 0, height/3*2, width, height/3);
  pop();
}
