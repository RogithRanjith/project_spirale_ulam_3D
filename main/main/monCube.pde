void monCube(int taille, int numero){ 
  
  beginShape(QUADS);
  // +Z face du haut
  vertex(-taille, -taille,  taille);
  vertex( taille, -taille,  taille);
  vertex( taille,  taille,  taille);
  vertex(-taille,  taille,  taille);

  // -Z face de dessous
  vertex( taille, -taille, -taille);
  vertex(-taille, -taille, -taille);
  vertex(-taille,  taille, -taille);
  vertex( taille,  taille, -taille, 0, taille);

  // +Y face avant
  vertex(-taille,  taille,  taille);
  vertex( taille,  taille,  taille);
  vertex( taille,  taille, -taille);
  vertex(-taille,  taille, -taille);

  // -X face arrière
  vertex(-taille, -taille, -taille);
  vertex( taille, -taille, -taille);
  vertex( taille, -taille,  taille);
  vertex(-taille, -taille,  taille);

  // +X face de droite
  vertex( taille, -taille,  taille);
  vertex( taille, -taille, -taille);
  vertex( taille,  taille, -taille);
  vertex( taille,  taille,  taille);

  // -X face de gauche
  vertex(-taille, -taille, -taille);
  vertex(-taille, -taille,  taille);
  vertex(-taille,  taille,  taille);
  vertex(-taille,  taille, -taille);

  endShape();
  
  translate(-15,8,18);
  if (numero == 1){
    textSize(taille+1);
    fill(255);
    text(numero,0,0);
  }else{
    textSize((taille)+1);
    fill(0);
    text(numero,0,0);
  }
  translate(15,-8,-18);
}
