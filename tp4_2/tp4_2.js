var estado = 0;

//variables del enemigo:
var x_enemigo, y_enemigo, r_enemigo, vel_enemigo;

//variables del personaje:
var x_p, y_p, r_p, vel_p;

//variables contadoras:
var vita, piedra;


function setup() {
createCanvas(600,600);
}


function draw() {
  background (154,205,50);
  fill(224);
  rect(0,300,width, 200);
  
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
  if ( estado==1 ) {
    //jugando
    if ( keyCode === DOWN_ARROW ) {
      vel_p = -3;
    }
    if ( keyCode === UP_ARROW ) {
      vel_p = 3;
    }
  }
}
function keyReleased() {
  if ( estado==1 ) {
    vel_p = 0;
  }
}
