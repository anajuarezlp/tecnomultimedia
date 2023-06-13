
PImage img;
int i;
void setup (){
  size (800, 400);
  img = loadImage ( "opart.jpg");
}
  void draw(){
    background (0);
    image ( img, 400, 0, 400, 400);
    for (int  i=0 ; i<8 ; i ++ ) {
    float lado = map (i, 0, 7, 600, 0);
    rectMode ( CENTER );
    fill (255);
    strokeWeight(20);
    rect ( 90, 70, lado, lado);
    }
  } 
