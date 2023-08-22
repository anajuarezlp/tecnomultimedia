void dibujaPantalla( PImage fondos, String textos ) {
  push();
  imageMode(CORNER);
  image(fondos, 0, 0, width, height);
  fill(240,128,128, 90);
  rectMode(CORNER);
  rect(0, height/3*2, width, height/3);
  fill(218,165,32);
  textSize(40);
  textAlign(CENTER,CENTER);
  text( textos, 0, height/3*2, width, height/3);
  pop();
}
