let piedras = []; // Arreglo para almacenar las piedras
let velocidadPiedra = 2; // Velocidad de las piedras
let personaje;
let estado = 1; // Estado del juego (1 para jugando, 0 para pausa)

function setup() {
  createCanvas(400, 400);
  personaje = new Personaje();
}

function draw() {
  background(220);

  if (estado === 1) {
    // Juego en estado "jugando"
    personaje.mostrar();
    personaje.mover();

    // Crear piedras
    if (frameCount % 60 === 0) {
      let piedra = new Piedra(width, random(height));
      piedras.push(piedra);
    }

    // Mostrar y mover piedras
    for (let i = piedras.length - 1; i >= 0; i--) {
      piedras[i].mostrar();
      piedras[i].mover();
      
      // Verificar colisión con el personaje
      if (personaje.colision(piedras[i])) {
        estado = 0; // Cambiar a estado de pausa si hay colisión
      }

      // Eliminar piedras fuera de la pantalla
      if (piedras[i].x < -piedras[i].ancho) {
        piedras.splice(i, 1);
      }
    }
  } else {
    // Juego en estado "pausa"
    fill(0);
    textSize(32);
    textAlign(CENTER, CENTER);
    text('Game Over', width / 2, height / 2);
  }
}

function keyPressed() {
  if (key === ' ' && estado === 0) {
    // Reiniciar juego cuando se presione la barra espaciadora en estado de pausa
    estado = 1;
    piedras = [];
    personaje = new Personaje();
  }
}

class Personaje {
  constructor() {
    this.x = 50;
    this.y = height / 2;
    this.ancho = 30;
    this.alto = 30;
  }

  mostrar() {
    fill(0, 0, 255);
    rect(this.x, this.y, this.ancho, this.alto);
  }

  mover() {
    if (keyIsDown(UP_ARROW)) {
      this.y -= 5;
    }
    if (keyIsDown(DOWN_ARROW)) {
      this.y += 5;
    }

    // Limitar la posición vertical del personaje
    this.y = constrain(this.y, 0, height - this.alto);
  }

  colision(piedra) {
    // Verificar colisión con una piedra
    if (
      this.x + this.ancho > piedra.x &&
      this.x < piedra.x + piedra.ancho &&
      this.y + this.alto > piedra.y &&
      this.y < piedra.y + piedra.alto
    ) {
      return true;
    }
    return false;
  }
}

class Piedra {
  constructor(x, y) {
    this.x = x;
    this.y = y;
    this.ancho = 20;
    this.alto = 20;
  }

  mostrar() {
    fill(255, 0, 0);
    rect(this.x, this.y, this.ancho, this.alto);
  }

  mover() {
    this.x -= velocidadPiedra;
  }
}
