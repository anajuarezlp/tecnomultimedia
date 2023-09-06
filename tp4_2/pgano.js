function iniciarJuego() {
  //valores iniciales del enemigo:
  r_enemigo = 10;
  x_enemigo = random( r_enemigo, width-r_enemigo );
  y_enemigo = -r_enemigo-random(50, 100);
  vel_enemigo = 6;
  
  //valores iniciales del personaje:
  x_p = 0;
  y_p = 375;
  r_p = 30;
  vel_p = 3;
  
  //valores iniciales de los contadores:
  vita = 0;
  piedra = 0;

}
