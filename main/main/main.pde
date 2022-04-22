int rectX1, rectY1; 
int rectX2, rectY2;  
int rectX3, rectY3;  
int rectX4, rectY4;  
int rectX5, rectY5;  
int rectX6, rectY6;
int rectX7, rectY7; 
int rectX8, rectY8;  
int rectX9, rectY9;  
int rectX10, rectY10;  
int rectX11, rectY11;  
int rectX12, rectY12;
int rectSize = 20;

float camX = PI/5;
float camZ = 0;
float scaleMolette = 1.8;

boolean rectOver1 = false;
boolean rectOver2 = false;
boolean rectOver3 = false;
boolean rectOver4 = false;
boolean rectOver5 = false;
boolean rectOver6 = false;

boolean rectOver7  = false;
boolean rectOver8  = false;
boolean rectOver9  = false;
boolean rectOver10 = false;
boolean rectOver11 = false;
boolean rectOver12 = false;

color rectColor1, rectHighlight1;

int MAX = 500;
int taille = 35;
int xcarr1 = 0;
int x1 = 0;
int c1 = 0;
int xcarr2 = 0;
int x2 = 0;
int c2 = 0;


//fonctions
int sd(int n){ //somme des diviseurs
  int sd = 0;
  for (int i = 1; i<=n; i++){
    if (n % i == 0){
      sd += i;
    }
  }
  return sd;
}

boolean estParfait(int n){
    return (sd(n) == 2*n);
  }

boolean estPremier(int n) {
  return (n == 1 || (sd(n) == n+1));
}

boolean estDeficient(int n){
     return (sd(n) < 2*n);
  }

boolean estAbondant(int n){
     return (sd(n) > 2*n);
  }
  
void setup() {
  fullScreen(P3D);
  rectColor1 = color(255);
  rectHighlight1 = color(0);
  rectX1 = width/4-110;
  rectY1 = 15;
  rectX2 = width/4-110;
  rectY2 = rectSize +45;
  rectX3 = width/4 - 10;
  rectY3 = rectSize +45;
  rectX4 = width/4 - 10;
  rectY4 = 15;
  rectX5 = width/4+100;
  rectY5 = 15;
  rectX6 = width/4+100;
  rectY6 = rectSize +45;
  rectX7 = width/2+530;
  rectY7 = 15;
  rectX8 = width/2+530;
  rectY8 = rectSize +45;
  rectX9 = width/2+630;
  rectY9 = rectSize +45;
  rectX10 = width/2+630;
  rectY10 = 15;
  rectX11 = width/2+740;
  rectY11 = 15;
  rectX12 = width/2+740;
  rectY12 = rectSize +45;
}

void draw() {
  background(187, 172, 172);
  strokeWeight(1);
  textSize(15);
  fill(75);
  text("Appuyez sur Echap/Esc pour quitter", width*0.001, 20);
  fill(0);
  text("Maintenez la molette tout en bougeant la souris pour animer librement les formes", width/2.8, height-80);
  text("(ou vous pouvez utiliser les flèches directionnelles)",  width/2.4, height-65);
  textSize(20);
  fill(0);
  text("1    ", width*0.5, 100);
  fill(243, 214, 23);
  text(" NOMBRES PREMIERS", width*0.45, 20);
  fill(237, 0, 0); 
  text(" NOMBRES PARFAITS", width*0.45, 40);
  fill(0, 255, 0);
  text("NOMBRES DEFICIANTS", width*0.45, 60);
  fill(43, 250, 250);
  text("NOMBRES ABONDANTS", width*0.45, 80);
  
  update();
  Polynome();
  
  //Pyramide
  pushMatrix();
  translate(width*0.001, height/3, -width/2);
  rotateX(camX);
  rotateZ(camZ);
  /* Mettre les deux lignes ci-dessus en commentaire puis décommentez celles du dessous
  |  pour avoir une rotation constante ou inversement, pour avoir
  |  une rotation grâce aux flèches directionnelles gauche et droite ou la molette
  */
  //rotateZ(frameCount/150.0);
  scale(scaleMolette);
  pyramide(); // dessine la pyramide
  popMatrix();
  
  
  //Plateau
  pushMatrix();
  translate(width*0.95, height/2, -width/2);
  rotateX(camX);
  rotateZ(camZ);
   /* Mettre la ligne ci-dessus en commentaire puis décommentez celle juste en-dessous
  |  pour avoir une rotation constante ou inversement, pour avoir
  |  une rotation libre grâce aux flèches ou la molette
  */
  //rotateZ(frameCount/150.0);
  scale(scaleMolette);
  plateau(); // dessine un plateau
  popMatrix();
}

void keyPressed(){
  int decalage = 100;   //<--Vous pouvez modifier la valeur de d pour avoir un angle de décalage plus ou moins
  if (key == CODED){   //élevé lors de l'appuie sur une des flèches directionnelles.
    switch(keyCode){  //Plus la valeur est élevée, moins l'angle le sera (et inversement)
      case UP:
        camX = camX - PI/decalage;
        break;
      case DOWN:
        camX = camX + PI/decalage;
        break;
      case RIGHT:
        camZ = camZ + PI/decalage;
        break;
      case LEFT:
        camZ = camZ - PI/decalage;
        break;
     }
  }
}

//Permet de zoomer ou dézoomer en faisant tourner la molette de la souris
void mouseWheel(MouseEvent event) {
  float m = event.getCount();
  scaleMolette = scaleMolette - m/50.0;
}

// Permet de déplacer la caméra en maintenant appuyé la molette de la souris 
void mouseDragged() {
  if (mouseButton == CENTER) {
    float dx = mouseX - pmouseX;
    camZ = camZ + ((-PI / 2) * (dx / width));
    float dy = mouseY - pmouseY;
    camX = camX - ((PI / 4) * (dy / height));
  }
}
