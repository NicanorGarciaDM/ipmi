PImage limon; //<>//
int lineaX;
int lineaY;

void setup() {
  size(800, 400);
  limon = loadImage("limon.png");
  strokeWeight(10);
  lineaX = 570;
  lineaY = 253;
}

void draw() {
  image(limon, 0, 0, 400, 400);
  //limon atras izquierda
  noStroke();
  fill(#ffcc01);
  circle(538, 189, 200);
  triangle(523, 91, 577, 99, 557, 60);
  //hojas izquierda
  fill(#828a23);
  triangle(553, 308, 439, 319, 489, 261);
  fill(#a9c215);
  triangle(494, 231, 432, 256, 495, 285);
  //limon dereccha
  fill(#fff41a);
  circle(686, 226, 180);
  //hojas derecha
  fill(#83ad03);
  beginShape();
  vertex(607, 162);
  vertex(703, 101);
  vertex(704, 72);
  vertex(641, 78);
  vertex(603, 137);
  endShape(CLOSE);
  fill(#3d6201);
  beginShape();
  vertex(633, 182);
  vertex(659, 159);
  vertex(660, 133);
  vertex(622, 136);
  vertex(607, 165);
  endShape(CLOSE);
  fill(#4b7701);
  beginShape();
  vertex(607, 135);
  vertex(620, 97);
  vertex(598, 50);
  vertex(580, 38);
  vertex(575, 84);
  vertex(607, 133);
  endShape(CLOSE);
  //limon centro
  fill(#fee337);
  circle(576, 252, 180);
  fill(#fbd675);
  stroke(#fef4dc);
  strokeWeight(10);
  circle(575, 252, 150);
  fill(#fef4dc);
  strokeWeight(4);
  line(lineaX, lineaY, 504, 248);
  line(lineaX, lineaY, 552, 184);
  line(lineaX, lineaY, 610, 190);
  line(lineaX, lineaY, 648, 232);
  line(lineaX, lineaY, 647, 277);
  line(lineaX, lineaY, 540, 315);
  circle(lineaX, lineaY, 15);
}

void mouseClicked() {
  println(mouseX, mouseY);
}
