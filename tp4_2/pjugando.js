function pantallajugando(){
    //comportamiento de las variables del enemigo:
  y_enemigo += vel_enemigo;
  if ( y_enemigo > width +r_enemigo ) {
    y_enemigo = -r_enemigo-random(50, 100);
    x_enemigo = random( r_enemigo, width-r_enemigo);
    
    //ademas agrego uno a la cuenta de choques:
    piedra++;
    if ( piedra>=3 ){
     //perdi:
     estado = 2;
    }
  }

  //comportamiento del personaje:
  x_p+=vel_p;
  //funcion simplificada para limitar:
  x_p = constrain( x_p, 0+r_p, width-r_p);



  //dibujo del enemigo:
  push();
  fill(112,128,144);
  rectMode(CENTER);
  rect(x_enemigo, y_enemigo, r_enemigo*2, r_enemigo*2);
  pop();

  //dibujo del personaje:
  push();
  fill(255,20,147);
  rectMode(CENTER);
  rect(x_p, y_p, r_p*2, r_p*2);
  pop();
  
  //dibujo la interfase:
  push();
  fill(0);
  textSize(14);
  textAlign(LEFT);
  text("Esquiva: " + vita,20,20);
  text("Mira: " + piedra,20,40);
  pop();
  
  //evaluo colision:
  
  if ( dist(x_p, y_p, x_enemigo, y_enemigo) <= r_enemigo+r_p  ) {
    
    console.log("hay colision"); //imprime en la consola del navegador
    
    //reinicio la ubicacion del enemigo:
    x_enemigo = random(r_enemigo, width-r_enemigo);
    y_enemigo = -r_enemigo-random(50,100);
    
    //aumento uno en la cuenta de " no choque":
    vita++;
    
    //evalua si gano al alcanzar la cuenta:
    if ( vita>=5 ) {
      //gano: (cambia de estado)
      estado = 3;
    }
  }  
}
