function iniciarJuego() {
  // Inicializar variables del personaje y del enemigo
  x_p = width / 2;
  y_p = height / 2;
  r_p = 20;
  vel_p = createVector(0, 0);

  x_enemigo = width - r_enemigo;
  y_enemigo = random(height);
  r_enemigo = 20;
  vel_enemigo = createVector(-2, 0);

  // Otras inicializaciones
  estado = 1; // Estado del juego
  vita = 0;
  piedra = 0;
}
