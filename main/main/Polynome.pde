void Polynome(){
  stroke(255);
  if (rectOver1) {
    fill(rectHighlight1);
  }  else {
    fill(rectColor1);
  }
  rect(rectX1, rectY1, rectSize, rectSize);
  if  (rectOver2){
    fill(rectHighlight1);
  }  else {
    fill(rectColor1);
  }
  rect(rectX2, rectY2, rectSize, rectSize);  
  if  (rectOver3){
    fill(rectHighlight1);
  } else {
    fill(rectColor1);
  }
  rect(rectX3, rectY3, rectSize, rectSize);
  if  (rectOver4){
    fill(rectHighlight1);
  } else {
    fill(rectColor1);
  }
  rect(rectX4, rectY4, rectSize, rectSize);   
  if  (rectOver5){
     fill(rectHighlight1);
  } else {
    fill(rectColor1);
  }
  rect(rectX5, rectY5, rectSize, rectSize);  
  if  (rectOver6){
    fill(rectHighlight1);
  }
  else {
    fill(rectColor1);
  }
  rect(rectX6, rectY6, rectSize, rectSize); 
  textPolynome1();
  if (rectOver7) {
    fill(rectHighlight1);
  }  else {
    fill(rectColor1);
  }
  rect(rectX7, rectY7, rectSize, rectSize);
  if  (rectOver8){
    fill(rectHighlight1);
  }  else {
    fill(rectColor1);
  }
  rect(rectX8, rectY8, rectSize, rectSize);  
  if  (rectOver9){
    fill(rectHighlight1);
  } else {
    fill(rectColor1);
  }
  rect(rectX9, rectY9, rectSize, rectSize);
  if  (rectOver10){
    fill(rectHighlight1);
  } else {
    fill(rectColor1);
  }
  rect(rectX10, rectY10, rectSize, rectSize);   
  if  (rectOver11){
     fill(rectHighlight1);
  } else {
    fill(rectColor1);
  }
  rect(rectX11, rectY11, rectSize, rectSize);  
  if  (rectOver12){
    fill(rectHighlight1);
  }
  else {
    fill(rectColor1);
  }
  rect(rectX12, rectY12, rectSize, rectSize); 
  textPolynome2();
}
  
 void update() {
   if ( overRect(rectX1, rectY1, rectSize, rectSize) ) {
    rectOver1 = true;
    rectOver2 = false;
    rectOver3 = false;
    rectOver4 = false;
    rectOver5 = false;
    rectOver6 = false;
    rectOver7 = false;
    rectOver8 = false;
    rectOver9 = false;
    rectOver10 = false;
    rectOver11 = false;
    rectOver12 = false;
  } else if  ( overRect(rectX2, rectY2, rectSize, rectSize) ){
    rectOver1 = false;
    rectOver2 = true;
    rectOver3 = false;
    rectOver4 = false;
    rectOver5 = false;
    rectOver6 = false;
    rectOver7 = false;
    rectOver8 = false;
    rectOver9 = false;
    rectOver10 = false;
    rectOver11 = false;
    rectOver12 = false;
  }else if  ( overRect(rectX3, rectY3, rectSize, rectSize) ){
    rectOver1 = false;
    rectOver2 = false;
    rectOver3 = true;
    rectOver4 = false;
    rectOver5 = false;
    rectOver6 = false;rectOver7 = false;
    rectOver8 = false;
    rectOver9 = false;
    rectOver10 = false;
    rectOver11 = false;
    rectOver12 = false;
  }else if  ( overRect(rectX4, rectY4, rectSize, rectSize) ){
    rectOver1 = false;
    rectOver2 = false;
    rectOver3 = false;
    rectOver4 = true;
    rectOver5 = false;
    rectOver6 = false;rectOver7 = false;
    rectOver8 = false;
    rectOver9 = false;
    rectOver10 = false;
    rectOver11 = false;
    rectOver12 = false;
  }else if  ( overRect(rectX5, rectY5, rectSize, rectSize) ){
    rectOver1 = false;
    rectOver2 = false;
    rectOver3 = false;
    rectOver4 = false;
    rectOver5 = true;
    rectOver6 = false;rectOver7 = false;
    rectOver8 = false;
    rectOver9 = false;
    rectOver10 = false;
    rectOver11 = false;
    rectOver12 = false;
  }else if  ( overRect(rectX6, rectY6, rectSize, rectSize) ){
    rectOver1 = false;
    rectOver2 = false;
    rectOver3 = false;
    rectOver4 = false;
    rectOver5 = false;
    rectOver6 = true;
    rectOver7 = false;
    rectOver8 = false;
    rectOver9 = false;
    rectOver10 = false;
    rectOver11 = false;
    rectOver12 = false;
  }else if  ( overRect(rectX7, rectY7, rectSize, rectSize) ){
    rectOver1 = false;
    rectOver2 = false;
    rectOver3 = false;
    rectOver4 = false;
    rectOver5 = false;
    rectOver6 = false;
    rectOver7 = true;
    rectOver8 = false;
    rectOver9 = false;
    rectOver10 = false;
    rectOver11 = false;
    rectOver12 = false;
  }else if  ( overRect(rectX8, rectY8, rectSize, rectSize) ){
    rectOver1 = false;
    rectOver2 = false;
    rectOver3 = false;
    rectOver4 = false;
    rectOver5 = false;
    rectOver6 = false;
    rectOver7 = false;
    rectOver8 = true;
    rectOver9 = false;
    rectOver10 = false;
    rectOver11 = false;
    rectOver12 = false;
  }else if  ( overRect(rectX9, rectY9, rectSize, rectSize) ){
    rectOver1  = false;
    rectOver2  = false;
    rectOver3  = false;
    rectOver4  = false;
    rectOver5  = false;
    rectOver6  = false;
    rectOver7  = false;
    rectOver8  = false;
    rectOver9  = true;
    rectOver10 = false;
    rectOver11 = false;
    rectOver12 = false;
  }else if  ( overRect(rectX10, rectY10, rectSize, rectSize) ){
    rectOver1  = false;
    rectOver2  = false;
    rectOver3  = false;
    rectOver4  = false;
    rectOver5  = false;
    rectOver6  = false;
    rectOver7  = false;
    rectOver8  = false;
    rectOver9  = false;
    rectOver10 = true;
    rectOver11 = false;
    rectOver12 = false;
  }else if  ( overRect(rectX11, rectY11, rectSize, rectSize) ){
    rectOver1  = false;
    rectOver2  = false;
    rectOver3  = false;
    rectOver4  = false;
    rectOver5  = false;
    rectOver6  = false;
    rectOver7  = false;
    rectOver8  = false;
    rectOver9  = false;
    rectOver10 = false;
    rectOver11 = true;
    rectOver12 = false;
  }else if  ( overRect(rectX12, rectY12, rectSize, rectSize) ){
    rectOver1  = false;
    rectOver2  = false;
    rectOver3  = false;
    rectOver4  = false;
    rectOver5  = false;
    rectOver6  = false;
    rectOver7  = false;
    rectOver8  = false;
    rectOver9  = false;
    rectOver10 = false;
    rectOver11 = false;
    rectOver12 = true;
  }
  else {
    rectOver1 = false;
    rectOver2 = false;
    rectOver3 = false;
    rectOver4 = false;
    rectOver5 = false;
    rectOver6 = false;
    rectOver7 = false;
    rectOver8 = false;
    rectOver9 = false;
    rectOver10 = false;
    rectOver11 = false;
    rectOver12 = false;
  }
}
void mousePressed() {
  if (rectOver1) {
    xcarr1 += 1;
  }
  else if (rectOver2) {
    xcarr1 -= 1;
  }
  else if (rectOver3) {
    x1 -= 1;
  }
  else if (rectOver4) {
    x1 += 1;
  }
  else if (rectOver5) {
    c1 += 1;
  }
  else if (rectOver6) {
    c1 -= 1;
  }
  else if (rectOver7) {
    xcarr2 += 1;
  }
  else if (rectOver8) {
    xcarr2 -= 1;
  }
  else if (rectOver9) {
    x2 -= 1;
  }
  else if (rectOver10) {
    x2 += 1;
  }
  else if (rectOver11) {
    c2 += 1;
  }
  else if (rectOver12) {
    c2 -= 1;
  }
}

boolean overRect(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  } 
}

int sizeMax1(){
  int a = 0;
  if (xcarr1 == 0 && x1 == 0 && c1 !=0){
    a = 1;
    return a;
  }
  for (int i = 0; i<=MAX; i++){
    a =  i*i*xcarr1 + x1*i + c1;
    if (a < 0){
    a = -a;
  }
    if (a > MAX){
      a = i;
      break;
    }  
  }
  return a;
}

int[] poly1(){
  int array[] =new int[sizeMax1()];
  
  for (int i = 1; i<=sizeMax1(); i++){
    int a =  i*i*xcarr1 + x1*i + c1;
    array[i-1] = a;
  }
  return array;
}

void textPolynome1(){
  String a = xcarr1 + "x²       +   " + x1 + "x       +    "  + c1;
  textSize((taille/2)+2);
  fill(255);
  text(a, width/4-110, 55);
}

int sizeMax2(){
  int a = 0;
  if (xcarr2 == 0 && x2 == 0 && c2 != 0){
    a = 1;
    return a;
  }
  for (int i = 0; i<=MAX; i++){
    a =  i*i*xcarr2 + x2*i + c2;
    if (a < 0){
    a = -a;
  }
    if (a > MAX){
      a = i;
      break;
    }
  
  }
  return a;
}

int[] poly2(){
  int array[] =new int[sizeMax2()];
  
  for (int i = 1; i<=sizeMax2(); i++){
    int a =  i*i*xcarr2 + x2*i + c2;
    array[i-1] = a;
  }
  return array;
}

void textPolynome2(){
  String a = xcarr2 + "x²       +   " + x2 + "x       +    "  + c2;
  textSize((taille/2)+2);
  fill(255);
  text(a, width/1.2-110, 55);
}
