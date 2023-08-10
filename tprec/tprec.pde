PImage[] fondos;
String[] textos;
int cantImagenes = 27;
int estado;


void setup() {
  size(600, 600);
  //cargamos las imagenes en el arreglo fondo:
  fondos = new PImage[27];
  //ahora con un for cargo las imagenes:
  for ( int i=0; i<cantImagenes; i++ ) {
    fondos[i] = loadImage(" bella"+ i + ".jpg");
  }
  //Los textos:
  textos = new String[27];
  textos[0] = " La Bella y la Bestia De Jeanne-Marie le Prince de Beaumont ";
  textos[1] = " Mi nombre es Bella, vivo con mis padre un rico mercaderde navios y tres hermanos y dos hermanas mayores.";
  textos[2] = " Papi siempre nos da todos los lujos, por lo tantonostras tres al ser hermosas y posedoras de tanta riqueza nos suelen solicitar nuestra mano, pero yo los rechazo porque quiero estar con Papi, pero misa hermans solo desean casarse con un duque o conde.";
  textos[3] = " Pero un dia Papi llego con la cara triste, habiamos perdido toda nuestra fortuna y teniamos que irnos a vivir al campo. ninguna lagrima solte porque sabia que con eso no iba a solucionar nuestra desgracia, solo deseaba consolar a Papi y ayudarlo en en el trabajo en la campiña. ";
  textos[4] = " Con el tiempo me acostumbre a limpiar y a cocinar para toda la familia, cuando terminaba todos los caheceres leia , tocaba el clavicornio o cantaba mientraas hacia un labor. mi Padre y mis hermanos labraban la tierra, pero mis hermanas se pasaban el dia entero lamentando sus perdida de gala y burlandose de mi.";
  textos[5] = "Al año recibió una carta donde se le comunica que traía mercancía para él. Esto lleno de júbilo a todos, menos a mi, al darme cuenta lo que significaba. Mis hermanas pidieron de todo. Papá antes de irse me pregunto que deseaba, cansada de que mis hermanas decían que me daba importancia solo le pedí una rosa.";
  textos[6] = "Unos días después Papá llego intentamos abrazarlo con mis hermanas, pero me extendió un ramo de rosas, y se sentó en un sillón y relata lo que le paso.";
  textos[7] = "Paso una semana sin noticias de Papá, uno de mis hermanos lo halla muerto descuartizado en el camino con un ramo de rosas en su mano la cual medio.";
  textos[8] = "Papá vuelve con todo lo que pidieron, menos mis rosas y me pide perdon. Para mi desgracia volvemos a la ciudad. ";
  textos[9] = "Cuando llego a la ciudad se entero que había un pleito entorno a sus mercancias, luego de mucho trabajo y pena volvió pobre. ";
  textos[10] ="Al regresar por el bosque se desato una tormenta de viento y nieve, hasta que a lo lejos observó luces de un castillo, donde se refugió con su caballo. Al entrar dubitativo recorrió el castillo donde había un salón con una mesa servida y al no ver a nadie comió, recorrió un poco más hasta que vio una cama donde descanso.";
  textos[11] ="Al dia siguiente se sorprende ver un traje nuevo a su medida, al llegar a la ventana no vio la nieve, sino un jardín lleno de flores. Al terminar su taza de chocolate, fue en busca de su caballo, al pasar por sector de rosas recordó la petición de Bella.";
  textos[12] ="Muy a su pesar su padre le pide perdón a Bella que no le trajo rosas, pero estaba tan agradecido con el dueño del castillo que no tuvo valor de cortar, Yo lo perdono y lo abrazó.";
  textos[13] ="Su padre corta unas rosas, un gran estruendo suena. era una Bestia horrenda, por poco cae desmayado, me amenazo de muerte por haber cortado unas rosas su tesoro más preciado.";
  textos[14] ="Con alaridos e injurias sus dos hermanas mayores, tomé la decisión de ir yo, con valentía acepté tomar el lugar de mi padre, por más que mis hermanos quieren ir asesinar a la bestia yo fui la responsable de su desventura, no quiero ningún remordimiento por su perdida.";
  textos[16] ="Al dia siguiente después de despedir a su padre, recorre el esplendido castillo, hasta que llego a una puerta donde decía EL APOSENTO DE LA BELLA, donde encontró de provisto de libros, clavicordio y un libro de oro que contenía un viejo espejo donde podía ver a su padre";
  textos[17] ="Tres apetecibles meses después en el castillo, todas las tardes me vi9sitaba la Bestia, me entretenía y me observaba comer. cada día que pasaba le encontraba al monstruo nuevas bondades, hasta que me di cuenta que miraba la hora para verlo, lo único malo, que cuando se retiraba me pedía ser su esposa.";
  textos[18] ="UN día veo por el espejo que mi padre este enfermo le ruego a la Bestia ir a verle, me permite ir a verlo con la condición de que venga a la semana, porque si no moría él.";
  textos[19] ="Mi padre se alegró al verme, vinieron mis hermanas lo cual les conté lo dichosa que soy y me enteré de que ellas se casaron, me sorprendió la muestra de cariño de ellas.";
  textos[20] ="Al octavo día me doy cuenta que amo a la Bestia y me da un vuelco el corazón no verlo. vuelvo al castillo.";
  textos[21] ="Al llegar al jardín con el estanque veo con horror a Bestia sobre la hierba perdió el conocimiento y que estaba muerto. Me deje caer a su lado, y al sentir que aun latía su corazón tomo un poco de agua del estanque le rocía la cabeza.";
  textos[22] ="Abrió los ojos la Bestia: ahora moriré contento pues tuve la dicha de verte una vez más. Le corrijo: porque serás mi esposo.";
  textos[23] ="Sonó unos fuegos artificiales una luz me encandílese donde estaba la Bestia, para dar lugar a un guapo principe. le tomo la mano y entramos al castillo.";
  textos[24] ="Al entrar al gran salón estaba toda su familia, con los súbditos nos recibieron con júbilo y celebramos nuestras bodas.";
  textos[15] ="Al dia siguiente con mi ppadre partimos al castillo, al llegar al llegar al salon con miedome servi la cena, pero papano tocaba nada. un gran estruendo sono, era una horripilante figura, procuere sumular mi miedo. Con llanto y abrazo me separo de mi padre.";
  textos[25] ="Bella murio, siendo comida por la Bestia.";
  textos[26] ="Alunna: Juárez Iglesias, Ana Beatriz. Comisión 3. Autora: Marie Leprince de Beaumont (Ruan 26 de abril de 1711 - Chavanod, 8 de septiembre de 1780) fue una escritora francesa, reconocida por ser autora de la versión más difundida del cuento de La Bella y la Bestia.";
  estado =0;
  x= 0;
  
}

void draw() {
  Background ( 0, 255, 255, 0);
  if ( estado == 0 ) {
    dibujaPantalla( fondos[0], textos[0] );
    dibujaBotonRectangular( width/4*3, height/3, 120, 80, "SIGUIENTE");
  } else  if ( estado == 1 ) {
    dibujaPantalla( fondos[1], textos[1] );
    dibujaBotonRectangular( width/4*3, height/3, 120, 80, "SIGUIENTE");
  } else  if ( estado == 2 ) {
    dibujaPantalla( fondos[2], textos[2] );
    dibujaBotonRectangular( width/4*3, height/3, 120, 80, "SIGUIENTE");
  }
  else  if ( estado == 3 ) {
    dibujaPantalla( fondos[3], textos[3] );
    dibujaBotonRectangular( width/4*3, height/3, 120, 80, "SIGUIENTE");
  }
  else  if ( estado == 4 ) {
    dibujaPantalla( fondos[4], textos[4] );
    dibujaBotonRectangular( width/4*3, height/3, 120, 80, "SIGUIENTE");
  }
  else  if ( estado == 5 ) {
    dibujaPantalla( fondos[5], textos[5] );
    dibujaBotonRectangular( width/4*3, height/3, 120, 80, "SIGUIENTE");
  }
  else  if ( estado == 9 ) {
    dibujaPantalla( fondos[9], textos[9] );
    dibujaBotonRectangular( width/4*3, height/3, 120, 80, "SIGUIENTE");
  }
  else  if ( estado == 10 ) {
    dibujaPantalla( fondos[10], textos[10] );
    dibujaBotonRectangular( width/4*3, height/3, 120, 80, "SIGUIENTE");
  }
  else  if ( estado == 11) {
    dibujaPantalla( fondos[11], textos[11] );
    dibujaBotonRectangular( width/4*3, height/3, 120, 80, "TOMA LAS ROSAS");
    dibujaBotonRectangular( width/4, height/3, 120, 80, "NO TOMA LAS ROSAS");
  }
  else  if ( estado == 13 ) {
    dibujaPantalla( fondos[13], textos[13] );
    dibujaBotonRectangular( width/4*3, height/3, 120, 80, "RUEGA POR SU VIDA");
    dibujaBotonRectangular( width/4, height/3, 120, 80, "NO RUEGA POR SU VIDA");
 }
 
else  if ( estado == 6 ) {
    dibujaPantalla( fondos[6], textos[6] );
    dibujaBotonRectangular( width/4*3, height/3, 120, 80, "SIGUIENTE");
  }
  else  if ( estado == 14 ) {
    dibujaPantalla( fondos[14], textos[14] );
    dibujaBotonRectangular( width/4*3, height/3, 120, 80, "SIGUIENTE");
  }
  else  if ( estado == 15 ) {
    dibujaPantalla( fondos[15], textos[15] );
    dibujaBotonRectangular( width/4*3, height/3, 120, 80, "BELLA TIEMBLA");
    dibujaBotonRectangular( width/4, height/3, 120, 80, "BELLA MIRA CON HORROR");
 }
   else  if ( estado == 16 ) {
    dibujaPantalla( fondos[16], textos[16] );
    dibujaBotonRectangular( width/4*3, height/3, 120, 80, "SIGUIENTE");
  }
    else  if ( estado == 17 ) {
    dibujaPantalla( fondos[17], textos[17] );
    dibujaBotonRectangular( width/4*3, height/3, 120, 80, "SIGUIENTE");
  }
    else  if ( estado == 18 ) {
    dibujaPantalla( fondos[18], textos[18] );
    dibujaBotonRectangular( width/4*3, height/3, 120, 80, "SIGUIENTE");
  }
    else  if ( estado == 19 ) {
    dibujaPantalla( fondos[19], textos[19] );
    dibujaBotonRectangular( width/4*3, height/3, 120, 80, "SIGUIENTE");
}  else  if ( estado == 20 ) {
    dibujaPantalla( fondos[20], textos[20] );
    dibujaBotonRectangular( width/4*3, height/3, 120, 80, "SIGUIENTE");
  }
    else  if ( estado == 21 ) {
    dibujaPantalla( fondos[21], textos[21] );
    dibujaBotonRectangular( width/4*3, height/3, 120, 80, "SIGUIENTE");
  }
    else  if ( estado == 22 ) {
    dibujaPantalla( fondos[22], textos[22] );
    dibujaBotonRectangular( width/4*3, height/3, 120, 80, "SIGUIENTE");
  }
    else  if ( estado == 23 ) {
    dibujaPantalla( fondos[23], textos[23] );
    dibujaBotonRectangular( width/4*3, height/3, 120, 80, "SIGUIENTE");
  }
    else  if ( estado == 24 ) {
    dibujaPantalla( fondos[24], textos[24] );
    dibujaBotonRectangular( width/4*3, height/3, 120, 80, "SIGUIENTE");
    }
      else  if ( estado == 25 ) {
    dibujaPantalla( fondos[25], textos[25] );
    dibujaBotonRectangular( width/4*3, height/3, 120, 80, "SIGUIENTE");
  }
    else  if ( estado == 7 ) {
    dibujaPantalla( fondos[7], textos[7] );
    dibujaBotonRectangular( width/4*3, height/3, 120, 80, "FIN");
  }
    else  if ( estado == 8 ) {
    dibujaPantalla( fondos[8], textos[8] );
    dibujaBotonRectangular( width/4*3, height/3, 120, 80, "SIGUIENTE");
  }
    else  if ( estado == 12 ) {
    dibujaPantalla( fondos[12], textos[12] );
    dibujaBotonRectangular( width/4*3, height/3, 120, 80, "FIN");
  }
    else  if ( estado == 26 ) {
    dibujaPantalla( fondos[26], textos[26] );
    dibujaBotonRectangular( width/4*3, height/3, 120, 80, "FIN");
  }
