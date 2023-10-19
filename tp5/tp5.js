// Variables del personaje
let x_p, y_p;
let r_p;
let vel_p;

// Variables del enemigo
let x_enemigo, y_enemigo;
let r_enemigo;
let vel_enemigo;

// Variables de estado
let estado;
let vita, piedra;

function setup() {
  createCanvas(600, 600);
}

function draw() {
  background (222,184,135);
  fill(127,255,212);
  rect(0,300,width, 200);
}
  
if ( estado==0 ) {
    //inicio
    pantallaInicio();
  } else  if ( estado==1 ) {
    //jugando
    pantallajugando();
  } else  if ( estado==2 ) {
    //perdio
    pantallaPerdio();
  } else  if ( estado==3 ) {
    //gano
    pantallaGano();
}

function mousePressed() {
  if ( estado==0 ) {
    //inicio
    estado = 1;
    iniciarJuego();
  } else  if ( estado==1 ) {
    //jugando
  } else  if ( estado==2 ) {
    //perdio
    estado =0;
  } else  if ( estado==3 ) {
    //gano
    estado =0;
  }
}

function keyPressed() {
  if (estado === 1) {
    // Jugando
    if (keyCode === DOWN_ARROW) {
      vel_p = createVector(0, 4); // Mover hacia abajo
    }
    if (keyCode === UP_ARROW) {
      vel_p = createVector(0, -4); // Mover hacia arriba
    }
    if (keyCode === RIGHT_ARROW) {
      vel_p = createVector(4, 0); // Mover hacia la derecha
    }
    if (keyCode === LEFT_ARROW) {
      vel_p = createVector(-4, 0); // Mover hacia la izquierda
    }
  }
}

function keyReleased() {
  if (estado === 1) {
    vel_p = createVector(0, 0); // Detener el movimiento cuando se suelta la tecla
  }
}
