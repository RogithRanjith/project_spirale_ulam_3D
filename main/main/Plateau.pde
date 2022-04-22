void plateau(){
  int xdir = 1;
  int ydir = 0;
  int move = 1;
  int movesAllowed = 1;
  int sety = 1;
  
  for (int i : poly2()) {
    if (i == 1){
      fill(0);
    }else if (estPremier(i)){
      fill(243, 214, 23); // jaune (safran)
    }else if (estParfait(i)) {
      fill(237, 0, 0);  // rouge
    }else if(estDeficient(i)) {
      fill(0, 255, 0);  // vert
    }else if(estAbondant(i)) {
      fill(43, 250, 250); // bleu (azur)
    } 
    if (!estPremier(i)){ 
    beginShape(QUADS);
    // +Z face du haut
    vertex( taille/2, -taille/2, -taille/2);
  vertex(-taille/2, -taille/2, -taille/2);
  vertex(-taille/2,  taille/2, -taille/2);
  vertex( taille/2,  taille/2, -taille/2, 0, taille/2);
    endShape();
    translate(-15,8,-16);
    if (i == 1){
      textSize((taille/2)+1);
      fill(255);
      text(i,0,0);
    }else{
      textSize((taille/2)+1);
      fill(0);
      text(i,0,0);
    }
    translate(15,-8,16);
    }else{
      monCube(taille/2, i);
    }
    translate(xdir*taille, ydir*taille);
    move +=1; 
    if (move > movesAllowed) {
      move = 1;
      if (xdir == 1 && ydir == 0) {
        xdir = 0;
        ydir = -1;
      } else if (xdir == 0 && ydir == -1) {
        xdir = -1;
        ydir = 0;
      } else if (xdir == -1 && ydir == 0) {
        xdir = 0;
        ydir = 1;
      } else {
        xdir = 1;
        ydir = 0;
      }
      sety += 1;
    }
    if (sety > 2) {
      sety = 1;
      movesAllowed += 1;
    }
  }
}
